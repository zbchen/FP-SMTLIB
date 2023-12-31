(declare-fun b_ack!12 () (_ BitVec 32))
(declare-fun a_ack!14 () (_ BitVec 32))
(declare-fun c_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!12 #x00000000)))
(assert (not (bvslt a_ack!14 #x00000000)))
(assert (= #x00000000 a_ack!14))
(assert (not (bvslt b_ack!12 #x00000000)))
(assert (not (= #x00000000 b_ack!12)))
(assert (not (= #x00000001 b_ack!12)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!13))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!12))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!13))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FMUL_UNDERFLOW c_ack!13 c_ack!13))

(check-sat)
(exit)
