(declare-fun x1_ack!5662 () (_ BitVec 64))
(declare-fun x0_ack!5669 () (_ BitVec 64))
(declare-fun x2_ack!5663 () (_ BitVec 64))
(declare-fun b_ack!5668 () (_ BitVec 64))
(declare-fun a_ack!5667 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5664 () (_ BitVec 64))
(declare-fun y1_ack!5665 () (_ BitVec 64))
(declare-fun y2_ack!5666 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5669) ((_ to_fp 11 53) x1_ack!5662)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5662) ((_ to_fp 11 53) x2_ack!5663)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5662)
                       ((_ to_fp 11 53) x0_ack!5669))
               ((_ to_fp 11 53) x0_ack!5669))
       ((_ to_fp 11 53) x1_ack!5662)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5662)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5662)
                       ((_ to_fp 11 53) x0_ack!5669)))
       ((_ to_fp 11 53) x0_ack!5669)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5663)
                       ((_ to_fp 11 53) x1_ack!5662))
               ((_ to_fp 11 53) x1_ack!5662))
       ((_ to_fp 11 53) x2_ack!5663)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5663)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5663)
                       ((_ to_fp 11 53) x1_ack!5662)))
       ((_ to_fp 11 53) x1_ack!5662)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5662)
                    ((_ to_fp 11 53) x0_ack!5669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5663)
                    ((_ to_fp 11 53) x1_ack!5662))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5667) ((_ to_fp 11 53) b_ack!5668))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5667) ((_ to_fp 11 53) x0_ack!5669))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5668) ((_ to_fp 11 53) x2_ack!5663))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5667) ((_ to_fp 11 53) b_ack!5668))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5667) ((_ to_fp 11 53) x0_ack!5669))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5667) ((_ to_fp 11 53) x1_ack!5662))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5668) ((_ to_fp 11 53) x0_ack!5669))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5668) ((_ to_fp 11 53) x1_ack!5662)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5662) ((_ to_fp 11 53) b_ack!5668))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5662)
                    ((_ to_fp 11 53) x0_ack!5669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5666)
                           ((_ to_fp 11 53) y1_ack!5665))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5663)
                                   ((_ to_fp 11 53) x1_ack!5662)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5665)
                           ((_ to_fp 11 53) y0_ack!5664))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5662)
                                   ((_ to_fp 11 53) x0_ack!5669)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5663)
                                   ((_ to_fp 11 53) x1_ack!5662))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5662)
                                   ((_ to_fp 11 53) x0_ack!5669))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5662)
                    ((_ to_fp 11 53) x0_ack!5669)))))))

(check-sat)
(exit)
