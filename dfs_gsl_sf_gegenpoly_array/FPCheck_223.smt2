(declare-fun b_ack!1026 () (_ BitVec 64))
(declare-fun a_ack!1027 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1026) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1027 #x00000000)))
(assert (not (= #x00000000 a_ack!1027)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1026) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!1027))
(assert (bvsle #x00000003 a_ack!1027))
(assert (bvsle #x00000004 a_ack!1027))
(assert (bvsle #x00000005 a_ack!1027))
(assert (bvsle #x00000006 a_ack!1027))
(assert (bvsle #x00000007 a_ack!1027))
(assert (bvsle #x00000008 a_ack!1027))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 b_ack!1026))

(check-sat)
(exit)
