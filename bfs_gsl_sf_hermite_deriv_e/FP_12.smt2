(declare-fun b_ack!319 () (_ BitVec 32))
(declare-fun a_ack!320 () (_ BitVec 32))
(assert (not (bvslt b_ack!319 #x00000000)))
(assert (not (bvslt a_ack!320 #x00000000)))
(assert (not (bvslt b_ack!319 a_ack!320)))
(assert (not (bvult b_ack!319 a_ack!320)))
(assert (not (= a_ack!320 b_ack!319)))
(assert (= #x00000000 a_ack!320))
(assert (not (bvult a_ack!320 #x00000012)))

(check-sat)
(exit)
