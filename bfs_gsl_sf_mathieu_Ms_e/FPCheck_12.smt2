(declare-fun q_ack!98 () (_ BitVec 64))
(declare-fun j_ack!99 () (_ BitVec 32))
(declare-fun n_ack!97 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!99 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!99)))
(assert (not (= #x00000000 n_ack!97)))
(assert (not (= #x00000000 (bvsrem n_ack!97 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!97 #x00000002))))
(assert (not (= #x00000000 n_ack!97)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!97 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!97 #x00000001)))
(assert (= #x00000001 n_ack!97))
(assert (fp.leq ((_ to_fp 11 53) q_ack!98) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x4014000000000000 q_ack!98))

(check-sat)
(exit)
