(declare-fun a_ack!99 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!99) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!99) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!99)
                    ((_ to_fp 11 53) a_ack!99))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!99) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!99) ((_ to_fp 11 53) #x4018000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!99)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!99))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!99)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!99)))
(assert (FPCHECK_FDIV_INVALID
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!99)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!99)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
