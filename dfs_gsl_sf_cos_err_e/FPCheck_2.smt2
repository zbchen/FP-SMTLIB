(declare-fun a_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!3 a_ack!3))

(check-sat)
(exit)
