(declare-fun a_ack!7 () (_ BitVec 32))
(declare-fun b_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!7 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!7))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!6)) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!6))
  (fp.abs ((_ to_fp 11 53) b_ack!6))))

(check-sat)
(exit)
