(declare-fun b_ack!1427 () (_ BitVec 32))
(declare-fun a_ack!1429 () (_ BitVec 32))
(declare-fun c_ack!1428 () (_ BitVec 64))
(assert (not (bvslt b_ack!1427 #x00000000)))
(assert (not (bvslt a_ack!1429 #x00000000)))
(assert (not (= #x00000000 b_ack!1427)))
(assert (not (= #x00000001 b_ack!1427)))
(assert (not (= #x00000000 a_ack!1429)))
(assert (not (= #x00000001 a_ack!1429)))
(assert (not (bvslt (bvsub b_ack!1427 a_ack!1429) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1427 a_ack!1429) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1427 a_ack!1429))))
(assert (not (= #x00000001 (bvsub b_ack!1427 a_ack!1429))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1428) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvsub b_ack!1427 a_ack!1429) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff (bvsub b_ack!1427 a_ack!1429)))))

(check-sat)
(exit)
