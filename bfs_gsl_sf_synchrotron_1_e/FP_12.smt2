(declare-fun a_ack!108 () (_ BitVec 64))
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!108) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3feb00839f875d26)
                       (CF_pow a_ack!108 #x3fd5555555555555))
               ((_ to_fp 11 53) #x3feb00839f875d26))
       (CF_pow a_ack!108 #x3fd5555555555555)))
(assert (not (fp.eq (fp.abs (CF_pow a_ack!108 #x3fd5555555555555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3feb00839f875d26)
                       (CF_pow a_ack!108 #x3fd5555555555555))
               (CF_pow a_ack!108 #x3fd5555555555555))
       ((_ to_fp 11 53) #x3feb00839f875d26)))

(check-sat)
(exit)
