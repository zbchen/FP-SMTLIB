(declare-fun b_ack!202 () (_ BitVec 32))
(declare-fun a_ack!203 () (_ BitVec 32))
(assert (not (bvslt b_ack!202 #x00000000)))
(assert (not (bvslt a_ack!203 #x00000000)))
(assert (not (= #x00000000 b_ack!202)))
(assert (not (= #x00000001 b_ack!202)))
(assert (not (= #x00000000 a_ack!203)))
(assert (= #x00000001 a_ack!203))
(assert (not (bvslt b_ack!202 #x00000000)))
(assert (not (= #x00000000 b_ack!202)))
(assert (= #x00000001 b_ack!202))

(check-sat)
(exit)
