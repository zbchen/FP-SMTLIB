(declare-fun a_ack!986 () (_ BitVec 32))
(declare-fun b_ack!981 () (_ BitVec 32))
(declare-fun c_ack!982 () (_ BitVec 32))
(declare-fun d_ack!983 () (_ BitVec 32))
(declare-fun e_ack!984 () (_ BitVec 32))
(declare-fun f_ack!985 () (_ BitVec 32))
(assert (not (bvslt a_ack!986 #x00000000)))
(assert (not (bvslt b_ack!981 #x00000000)))
(assert (not (bvslt c_ack!982 #x00000000)))
(assert (not (bvslt b_ack!981 #x00000000)))
(assert (not (bvslt (bvadd a_ack!986 c_ack!982) b_ack!981)))
(assert (= #x00000000 (bvand (bvadd a_ack!986 b_ack!981 c_ack!982) #x00000001)))
(assert (not (bvslt a_ack!986 #x00000000)))
(assert (not (bvslt b_ack!981 #x00000000)))
(assert (not (bvslt c_ack!982 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!986 d_ack!983) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!981 e_ack!984) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!982 f_ack!985) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!983 e_ack!984 f_ack!985)))
(assert (not (= #x00000000 d_ack!983)))

(check-sat)
(exit)
