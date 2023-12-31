(declare-fun a_ack!3 () (_ BitVec 32))
(declare-fun b_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!3 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!3))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2)) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!2))
  (fp.abs ((_ to_fp 11 53) b_ack!2))))

(check-sat)
(exit)
