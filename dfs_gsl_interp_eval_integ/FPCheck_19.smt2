(declare-fun x1_ack!130 () (_ BitVec 64))
(declare-fun x0_ack!132 () (_ BitVec 64))
(declare-fun x2_ack!131 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!132) ((_ to_fp 11 53) x1_ack!130)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!130) ((_ to_fp 11 53) x2_ack!131)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!130)
                       ((_ to_fp 11 53) x0_ack!132))
               ((_ to_fp 11 53) x0_ack!132))
       ((_ to_fp 11 53) x1_ack!130)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!130)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!130)
                       ((_ to_fp 11 53) x0_ack!132)))
       ((_ to_fp 11 53) x0_ack!132)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!131)
                       ((_ to_fp 11 53) x1_ack!130))
               ((_ to_fp 11 53) x1_ack!130))
       ((_ to_fp 11 53) x2_ack!131)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!131)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!131)
                       ((_ to_fp 11 53) x1_ack!130)))
       ((_ to_fp 11 53) x1_ack!130)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!130)
                    ((_ to_fp 11 53) x0_ack!132))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!131)
                    ((_ to_fp 11 53) x1_ack!130))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!131)
               ((_ to_fp 11 53) x1_ack!130))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
