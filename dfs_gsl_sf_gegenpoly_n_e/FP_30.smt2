(declare-fun b_ack!490 () (_ BitVec 64))
(declare-fun a_ack!491 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!490) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!491 #x00000000)))
(assert (not (= #x00000000 a_ack!491)))
(assert (not (= #x00000001 a_ack!491)))
(assert (not (= #x00000002 a_ack!491)))
(assert (= #x00000003 a_ack!491))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!490) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
