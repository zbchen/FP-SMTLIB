(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!4 b_ack!4))

(check-sat)
(exit)
