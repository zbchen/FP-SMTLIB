(declare-fun a_ack!19 () (_ BitVec 32))
(declare-fun b_ack!18 () (_ BitVec 64))
(assert (not (bvslt a_ack!19 #xffffffff)))
(assert (not (= #xffffffff a_ack!19)))
(assert (= #x00000000 a_ack!19))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!18) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!18) ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!18) ((_ to_fp 11 53) #x4024000000000000)))

(check-sat)
(exit)
