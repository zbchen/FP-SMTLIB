(declare-fun x_ack!8533 () (_ BitVec 64))
(declare-fun nu1_ack!8531 () (_ BitVec 64))
(declare-fun nu2_ack!8532 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!8533) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!8533) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8531) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8532) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!8533) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW nu2_ack!8532 #x4000000000000000))

(check-sat)
(exit)
