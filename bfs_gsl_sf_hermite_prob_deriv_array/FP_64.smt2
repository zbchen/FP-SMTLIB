(declare-fun b_ack!610 () (_ BitVec 32))
(declare-fun a_ack!612 () (_ BitVec 32))
(declare-fun c_ack!611 () (_ BitVec 64))
(assert (not (bvslt b_ack!610 #x00000000)))
(assert (not (bvslt a_ack!612 #x00000000)))
(assert (not (= #x00000000 b_ack!610)))
(assert (not (= #x00000001 b_ack!610)))
(assert (not (= #x00000000 a_ack!612)))
(assert (= #x00000001 a_ack!612))
(assert (not (bvslt b_ack!610 #x00000000)))
(assert (not (= #x00000000 b_ack!610)))
(assert (not (= #x00000001 b_ack!610)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!611) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand b_ack!610 #x00000001))))
(assert (not (bvslt (bvadd #xffffffff b_ack!610) #x00000000)))
(assert (not (= #x00000001 b_ack!610)))
(assert (not (= #x00000002 b_ack!610)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!611) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvadd #xffffffff b_ack!610) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xfffffffe b_ack!610))))
(assert (not (bvult (bvadd #xfffffffe b_ack!610) #x0000001a)))

(check-sat)
(exit)
