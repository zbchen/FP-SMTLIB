(declare-fun b_ack!303 () (_ BitVec 32))
(declare-fun a_ack!305 () (_ BitVec 32))
(declare-fun c_ack!304 () (_ BitVec 64))
(assert (not (bvslt b_ack!303 #x00000000)))
(assert (not (bvslt a_ack!305 #x00000000)))
(assert (not (= #x00000000 b_ack!303)))
(assert (not (= #x00000001 b_ack!303)))
(assert (= #x00000000 a_ack!305))
(assert (not (bvslt b_ack!303 #x00000000)))
(assert (not (= #x00000000 b_ack!303)))
(assert (not (= #x00000001 b_ack!303)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!304) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand b_ack!303 #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff b_ack!303))))
(assert (bvslt (ite (= ((_ extract 31 31) b_ack!303) #b1)
            (concat #b1 ((_ extract 31 1) b_ack!303))
            (concat #b0 ((_ extract 31 1) b_ack!303)))
       #x00000000))

(check-sat)
(exit)
