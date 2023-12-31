(declare-fun x1_ack!471 () (_ BitVec 64))
(declare-fun x0_ack!474 () (_ BitVec 64))
(declare-fun x2_ack!472 () (_ BitVec 64))
(declare-fun xx_ack!473 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!474) ((_ to_fp 11 53) x1_ack!471)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!471) ((_ to_fp 11 53) x2_ack!472)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!471)
                       ((_ to_fp 11 53) x0_ack!474))
               ((_ to_fp 11 53) x0_ack!474))
       ((_ to_fp 11 53) x1_ack!471)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!471)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!471)
                       ((_ to_fp 11 53) x0_ack!474)))
       ((_ to_fp 11 53) x0_ack!474)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!472)
                       ((_ to_fp 11 53) x1_ack!471))
               ((_ to_fp 11 53) x1_ack!471))
       ((_ to_fp 11 53) x2_ack!472)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!472)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!472)
                       ((_ to_fp 11 53) x1_ack!471)))
       ((_ to_fp 11 53) x1_ack!471)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!471)
                    ((_ to_fp 11 53) x0_ack!474))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!472)
                    ((_ to_fp 11 53) x1_ack!471))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!473) ((_ to_fp 11 53) x0_ack!474))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!473) ((_ to_fp 11 53) x2_ack!472))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!473) ((_ to_fp 11 53) x0_ack!474))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!473) ((_ to_fp 11 53) x1_ack!471)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!471) ((_ to_fp 11 53) xx_ack!473))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!472)
               ((_ to_fp 11 53) x1_ack!471))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY xx_ack!473 x1_ack!471))

(check-sat)
(exit)
