(declare-fun b_ack!1413 () (_ BitVec 32))
(declare-fun a_ack!1414 () (_ BitVec 32))
(assert (not (bvslt b_ack!1413 #x00000000)))
(assert (not (bvslt a_ack!1414 #x00000000)))
(assert (not (= #x00000000 b_ack!1413)))
(assert (not (= #x00000001 b_ack!1413)))
(assert (not (= #x00000000 a_ack!1414)))

(check-sat)
(exit)
