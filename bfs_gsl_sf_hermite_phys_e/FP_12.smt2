(declare-fun a_ack!137 () (_ BitVec 32))
(declare-fun b_ack!136 () (_ BitVec 64))
(assert (not (bvslt a_ack!137 #x00000000)))
(assert (not (= #x00000000 a_ack!137)))
(assert (not (= #x00000001 a_ack!137)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!136) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!137 #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff a_ack!137))))
(assert (bvslt (ite (= ((_ extract 31 31) a_ack!137) #b1)
            (concat #b1 ((_ extract 31 1) a_ack!137))
            (concat #b0 ((_ extract 31 1) a_ack!137)))
       #x00000000))

(check-sat)
(exit)
