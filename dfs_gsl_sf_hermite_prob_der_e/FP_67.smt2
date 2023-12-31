(declare-fun b_ack!1746 () (_ BitVec 32))
(declare-fun a_ack!1748 () (_ BitVec 32))
(declare-fun c_ack!1747 () (_ BitVec 64))
(assert (not (bvslt b_ack!1746 #x00000000)))
(assert (not (bvslt a_ack!1748 #x00000000)))
(assert (not (bvslt b_ack!1746 a_ack!1748)))
(assert (not (bvult b_ack!1746 a_ack!1748)))
(assert (not (= a_ack!1748 b_ack!1746)))
(assert (= #x00000000 a_ack!1748))
(assert (bvult a_ack!1748 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1748)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1748)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1746 a_ack!1748) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1746 a_ack!1748))))
(assert (not (= #x00000001 (bvsub b_ack!1746 a_ack!1748))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1747) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1747))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1746 a_ack!1748)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1747))
            ((_ to_fp 11 53) #x7fefffffffffffff))))

(check-sat)
(exit)
