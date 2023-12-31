(declare-fun a_ack!38 () (_ BitVec 32))
(declare-fun b_ack!36 () (_ BitVec 32))
(declare-fun c_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!38 #x00000000)))
(assert (not (bvslt b_ack!36 a_ack!38)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!36)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FINVALID_SQRT c_ack!37 c_ack!37))

(check-sat)
(exit)
