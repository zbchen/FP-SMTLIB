(declare-fun b_ack!720 () (_ BitVec 64))
(declare-fun a_ack!721 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!720) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!721 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!720) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!721)))
(assert (not (= #x00000001 a_ack!721)))
(assert (not (= #x00000002 a_ack!721)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!720)
                       ((_ to_fp 11 53) b_ack!720))
               ((_ to_fp 11 53) b_ack!720))
       ((_ to_fp 11 53) b_ack!720)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!720)
                       ((_ to_fp 11 53) b_ack!720))
               ((_ to_fp 11 53) b_ack!720))
       ((_ to_fp 11 53) b_ack!720)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!721)
  #x3ff8000000000000))

(check-sat)
(exit)
