(declare-fun a_ack!277 () (_ BitVec 32))
(declare-fun b_ack!276 () (_ BitVec 64))
(assert (not (bvslt a_ack!277 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!277) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!277)))
(assert (not (= #x00000000 a_ack!277)))
(assert (not (= #x00000001 a_ack!277)))

(check-sat)
(exit)
