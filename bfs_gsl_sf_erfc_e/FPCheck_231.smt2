(declare-fun a_ack!366 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!366))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!366))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!366))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!366)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!366))
                           ((_ to_fp 11 53) a_ack!366))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!366)))))
  (fp.eq a!1 ((_ to_fp 11 53) a_ack!366))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!366))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!366))
                           ((_ to_fp 11 53) a_ack!366))
                   ((_ to_fp 11 53) a_ack!366))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) a_ack!366)))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!366))
                           ((_ to_fp 11 53) a_ack!366)))))
  (FPCHECK_FDIV_ACCURACY a!1 (fp.abs ((_ to_fp 11 53) a_ack!366)))))

(check-sat)
(exit)
