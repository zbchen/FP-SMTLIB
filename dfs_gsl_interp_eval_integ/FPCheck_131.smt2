(declare-fun x1_ack!1435 () (_ BitVec 64))
(declare-fun x0_ack!1442 () (_ BitVec 64))
(declare-fun x2_ack!1436 () (_ BitVec 64))
(declare-fun b_ack!1441 () (_ BitVec 64))
(declare-fun a_ack!1440 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1437 () (_ BitVec 64))
(declare-fun y1_ack!1438 () (_ BitVec 64))
(declare-fun y2_ack!1439 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1442) ((_ to_fp 11 53) x1_ack!1435)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1435) ((_ to_fp 11 53) x2_ack!1436)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1435)
                       ((_ to_fp 11 53) x0_ack!1442))
               ((_ to_fp 11 53) x0_ack!1442))
       ((_ to_fp 11 53) x1_ack!1435)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1435)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1435)
                       ((_ to_fp 11 53) x0_ack!1442)))
       ((_ to_fp 11 53) x0_ack!1442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1436)
                       ((_ to_fp 11 53) x1_ack!1435))
               ((_ to_fp 11 53) x1_ack!1435))
       ((_ to_fp 11 53) x2_ack!1436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1436)
                       ((_ to_fp 11 53) x1_ack!1435)))
       ((_ to_fp 11 53) x1_ack!1435)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1435)
                    ((_ to_fp 11 53) x0_ack!1442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1436)
                    ((_ to_fp 11 53) x1_ack!1435))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1440) ((_ to_fp 11 53) b_ack!1441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1440) ((_ to_fp 11 53) x0_ack!1442))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1441) ((_ to_fp 11 53) x2_ack!1436))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1440) ((_ to_fp 11 53) b_ack!1441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1440) ((_ to_fp 11 53) x0_ack!1442))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1440) ((_ to_fp 11 53) x1_ack!1435))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1441) ((_ to_fp 11 53) x0_ack!1442))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1441) ((_ to_fp 11 53) x1_ack!1435)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1435) ((_ to_fp 11 53) b_ack!1441))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1435)
                    ((_ to_fp 11 53) x0_ack!1442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1439)
                           ((_ to_fp 11 53) y1_ack!1438))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1436)
                                   ((_ to_fp 11 53) x1_ack!1435)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1438)
                           ((_ to_fp 11 53) y0_ack!1437))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) x0_ack!1442)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1436)
                                   ((_ to_fp 11 53) x1_ack!1435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) x0_ack!1442)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1440)
                                   ((_ to_fp 11 53) x0_ack!1442))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1440)
                                   ((_ to_fp 11 53) x0_ack!1442)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) x0_ack!1442))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) x0_ack!1442))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) x0_ack!1442))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1440)
                                   ((_ to_fp 11 53) x0_ack!1442))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) x0_ack!1442))))))
  (FPCHECK_FMUL_UNDERFLOW a!6 a!7))))))

(check-sat)
(exit)
