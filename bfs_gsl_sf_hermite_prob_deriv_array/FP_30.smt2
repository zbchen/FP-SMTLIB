(declare-fun b_ack!167 () (_ BitVec 32))
(declare-fun a_ack!169 () (_ BitVec 32))
(declare-fun c_ack!168 () (_ BitVec 64))
(assert (not (bvslt b_ack!167 #x00000000)))
(assert (not (bvslt a_ack!169 #x00000000)))
(assert (not (= #x00000000 b_ack!167)))
(assert (not (= #x00000001 b_ack!167)))
(assert (= #x00000000 a_ack!169))
(assert (not (bvslt b_ack!167 #x00000000)))
(assert (not (= #x00000000 b_ack!167)))
(assert (not (= #x00000001 b_ack!167)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!168) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand b_ack!167 #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff b_ack!167))))
(assert (bvult (bvadd #xffffffff b_ack!167) #x0000001a))

(check-sat)
(exit)
