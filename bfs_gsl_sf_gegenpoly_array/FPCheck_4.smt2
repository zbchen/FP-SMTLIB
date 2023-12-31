(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun a_ack!32 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!32 #x00000000)))
(assert (not (= #x00000000 a_ack!32)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 b_ack!31))

(check-sat)
(exit)
