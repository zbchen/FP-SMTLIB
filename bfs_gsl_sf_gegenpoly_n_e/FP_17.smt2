(declare-fun b_ack!268 () (_ BitVec 64))
(declare-fun a_ack!269 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!268) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!269 #x00000000)))
(assert (not (= #x00000000 a_ack!269)))
(assert (not (= #x00000001 a_ack!269)))
(assert (= #x00000002 a_ack!269))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!268) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
