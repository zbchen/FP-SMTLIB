(declare-fun b_ack!2838 () (_ BitVec 32))
(declare-fun a_ack!2839 () (_ BitVec 32))
(assert (not (bvslt b_ack!2838 #x00000000)))
(assert (not (bvslt a_ack!2839 #x00000000)))
(assert (not (= #x00000000 b_ack!2838)))
(assert (not (= #x00000001 b_ack!2838)))
(assert (not (= #x00000000 a_ack!2839)))
(assert (not (= #x00000001 a_ack!2839)))
(assert (not (bvslt (bvsub b_ack!2838 a_ack!2839) #x00000000)))
(assert (not (bvslt (bvsub b_ack!2838 a_ack!2839) #x00000000)))
(assert (= #x00000000 (bvsub b_ack!2838 a_ack!2839)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!2838 a_ack!2839)) #x00000000))

(check-sat)
(exit)
