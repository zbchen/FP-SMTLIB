(declare-fun b_ack!29 () (_ BitVec 64))
(declare-fun a_ack!30 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!30) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!30)))
(assert (not (= #x00000000 a_ack!30)))
(assert (not (= #x00000001 a_ack!30)))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!29 b_ack!29))

(check-sat)
(exit)
