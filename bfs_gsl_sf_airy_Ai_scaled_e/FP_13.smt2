(declare-fun a_ack!272 () (_ BitVec 64))
(declare-fun b_ack!271 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!272) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!272) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (= #x00000000 (bvand b_ack!271 #x00000007))))

(check-sat)
(exit)
