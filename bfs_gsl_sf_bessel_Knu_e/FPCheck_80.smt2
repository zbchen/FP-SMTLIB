(declare-fun b_ack!199 () (_ BitVec 64))
(declare-fun a_ack!200 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!199)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
