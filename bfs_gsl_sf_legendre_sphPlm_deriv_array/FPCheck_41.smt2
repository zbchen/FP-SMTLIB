(declare-fun b_ack!174 () (_ BitVec 32))
(declare-fun a_ack!176 () (_ BitVec 32))
(declare-fun c_ack!175 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!174 #x00000000)))
(assert (not (bvslt a_ack!176 b_ack!174)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!175) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!175) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!174)))
(assert (= #x00000001 b_ack!174))
(assert (not (bvslt b_ack!174 #x00000000)))
(assert (not (bvslt a_ack!176 b_ack!174)))
(assert (not (= #x00000000 b_ack!174)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!176 b_ack!174))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (CF_log ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!176 b_ack!174)))
  #x3ff0000000000000))

(check-sat)
(exit)
