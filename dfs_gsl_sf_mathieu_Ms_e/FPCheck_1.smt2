(declare-fun q_ack!12 () (_ BitVec 64))
(declare-fun j_ack!14 () (_ BitVec 32))
(declare-fun n_ack!11 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!13 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!14 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!14)))
(assert (not (= #x00000000 n_ack!11)))
(assert (FPCHECK_FMUL_OVERFLOW #xbff0000000000000 x_ack!13))

(check-sat)
(exit)
