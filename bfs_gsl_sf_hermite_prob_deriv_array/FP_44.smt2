(declare-fun b_ack!334 () (_ BitVec 32))
(declare-fun a_ack!336 () (_ BitVec 32))
(declare-fun c_ack!335 () (_ BitVec 64))
(assert (not (bvslt b_ack!334 #x00000000)))
(assert (not (bvslt a_ack!336 #x00000000)))
(assert (not (= #x00000000 b_ack!334)))
(assert (not (= #x00000001 b_ack!334)))
(assert (not (= #x00000000 a_ack!336)))
(assert (not (= #x00000001 a_ack!336)))
(assert (not (bvslt (bvsub b_ack!334 a_ack!336) #x00000000)))
(assert (not (bvslt (bvsub b_ack!334 a_ack!336) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!334 a_ack!336))))
(assert (not (= #x00000001 (bvsub b_ack!334 a_ack!336))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!335) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand (bvsub b_ack!334 a_ack!336) #x00000001))))

(check-sat)
(exit)
