(declare-fun a_ack!389 () (_ BitVec 32))
(declare-fun b_ack!387 () (_ BitVec 32))
(declare-fun c_ack!388 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!389 #x00000000)))
(assert (not (bvslt b_ack!387 a_ack!389)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!387))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!388) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY c_ack!388 c_ack!388))

(check-sat)
(exit)
