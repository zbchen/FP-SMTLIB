(declare-fun a_ack!152 () (_ BitVec 32))
(declare-fun b_ack!151 () (_ BitVec 64))
(assert (not (bvslt a_ack!152 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!152)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!151) ((_ to_fp 11 53) #x1fff5de25335c4ee)))

(check-sat)
(exit)
