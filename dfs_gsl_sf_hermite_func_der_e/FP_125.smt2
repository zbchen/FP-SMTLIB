(declare-fun a_ack!3223 () (_ BitVec 32))
(declare-fun b_ack!3222 () (_ BitVec 32))
(assert (not (bvslt a_ack!3223 #x00000000)))
(assert (not (bvslt b_ack!3222 #x00000000)))
(assert (not (= #x00000000 a_ack!3223)))
(assert (not (= #x00000001 a_ack!3223)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3222 a_ack!3223)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3222)))
(assert (bvslt b_ack!3222 a_ack!3223))
(assert (= #x00000000 (bvand (bvsub a_ack!3223 b_ack!3222) #x00000001)))
(assert (bvslt b_ack!3222 (bvsub a_ack!3223 b_ack!3222)))
(assert (bvslt #x00000000 b_ack!3222))

(check-sat)
(exit)
