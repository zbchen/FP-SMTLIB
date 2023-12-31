(declare-fun b_ack!220 () (_ BitVec 32))
(declare-fun a_ack!221 () (_ BitVec 32))
(assert (not (bvslt b_ack!220 #x00000000)))
(assert (not (bvslt a_ack!221 #x00000000)))
(assert (not (= #x00000000 b_ack!220)))
(assert (not (= #x00000001 b_ack!220)))
(assert (not (= #x00000000 a_ack!221)))
(assert (not (= #x00000001 a_ack!221)))
(assert (not (bvslt (bvsub b_ack!220 a_ack!221) #x00000000)))
(assert (not (bvslt (bvsub b_ack!220 a_ack!221) #x00000000)))
(assert (= #x00000000 (bvsub b_ack!220 a_ack!221)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!220 a_ack!221)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!220 a_ack!221))))
(assert (not (= #x00000000 (bvsub b_ack!220 a_ack!221))))

(check-sat)
(exit)
