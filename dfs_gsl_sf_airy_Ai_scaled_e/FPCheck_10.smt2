(declare-fun a_ack!18 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!18)
               ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
