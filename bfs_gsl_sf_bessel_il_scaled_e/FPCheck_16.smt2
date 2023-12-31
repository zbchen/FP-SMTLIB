(declare-fun b_ack!60 () (_ BitVec 64))
(declare-fun a_ack!61 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!61 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!61))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!60)) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!60))
  (fp.abs ((_ to_fp 11 53) b_ack!60))))

(check-sat)
(exit)
