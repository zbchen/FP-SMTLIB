(declare-fun b_ack!1066 () (_ BitVec 32))
(declare-fun a_ack!1067 () (_ BitVec 32))
(assert (not (bvslt b_ack!1066 #x00000000)))
(assert (not (bvslt a_ack!1067 #x00000000)))
(assert (not (= #x00000000 a_ack!1067)))
(assert (not (bvslt b_ack!1066 a_ack!1067)))
(assert (not (= b_ack!1066 a_ack!1067)))
(assert (not (= b_ack!1066 (bvadd #x00000001 a_ack!1067))))
(assert (not (bvult a_ack!1067 #x00000012)))
(assert (not (bvule a_ack!1067 #x000000aa)))

(check-sat)
(exit)
