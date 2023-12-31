(declare-fun b_ack!288 () (_ BitVec 32))
(declare-fun a_ack!290 () (_ BitVec 32))
(declare-fun c_ack!289 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!288 #x00000000)))
(assert (not (bvslt a_ack!290 b_ack!288)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!289) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!289) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!288))
(assert (not (bvslt a_ack!290 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!289) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!289) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!290)))
(assert (not (= #x00000001 a_ack!290)))
(assert (not (= #x00000002 a_ack!290)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!289) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!290))
  #x3ff0000000000000))

(check-sat)
(exit)
