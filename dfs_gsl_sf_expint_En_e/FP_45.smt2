(declare-fun a_ack!489 () (_ BitVec 32))
(declare-fun b_ack!488 () (_ BitVec 64))
(assert (not (bvslt a_ack!489 #x00000000)))
(assert (not (= #x00000000 a_ack!489)))
(assert (not (= #x00000001 a_ack!489)))
(assert (= #x00000002 a_ack!489))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #x4085eeaad5511c64)))

(check-sat)
(exit)
