(declare-fun a_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x2aa965fea53d6e98))))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 a_ack!4))

(check-sat)
(exit)
