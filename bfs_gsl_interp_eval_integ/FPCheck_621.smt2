(declare-fun x1_ack!7801 () (_ BitVec 64))
(declare-fun x0_ack!7808 () (_ BitVec 64))
(declare-fun x2_ack!7802 () (_ BitVec 64))
(declare-fun b_ack!7807 () (_ BitVec 64))
(declare-fun a_ack!7806 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7803 () (_ BitVec 64))
(declare-fun y1_ack!7804 () (_ BitVec 64))
(declare-fun y2_ack!7805 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7808) ((_ to_fp 11 53) x1_ack!7801)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7801) ((_ to_fp 11 53) x2_ack!7802)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7801)
                       ((_ to_fp 11 53) x0_ack!7808))
               ((_ to_fp 11 53) x0_ack!7808))
       ((_ to_fp 11 53) x1_ack!7801)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7801)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7801)
                       ((_ to_fp 11 53) x0_ack!7808)))
       ((_ to_fp 11 53) x0_ack!7808)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7802)
                       ((_ to_fp 11 53) x1_ack!7801))
               ((_ to_fp 11 53) x1_ack!7801))
       ((_ to_fp 11 53) x2_ack!7802)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7802)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7802)
                       ((_ to_fp 11 53) x1_ack!7801)))
       ((_ to_fp 11 53) x1_ack!7801)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7801)
                    ((_ to_fp 11 53) x0_ack!7808))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7802)
                    ((_ to_fp 11 53) x1_ack!7801))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7806) ((_ to_fp 11 53) b_ack!7807))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7806) ((_ to_fp 11 53) x0_ack!7808))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7807) ((_ to_fp 11 53) x2_ack!7802))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7806) ((_ to_fp 11 53) b_ack!7807))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7806) ((_ to_fp 11 53) x0_ack!7808))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7806) ((_ to_fp 11 53) x1_ack!7801))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7807) ((_ to_fp 11 53) x0_ack!7808))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7807) ((_ to_fp 11 53) x1_ack!7801)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7801) ((_ to_fp 11 53) b_ack!7807))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7801)
                    ((_ to_fp 11 53) x0_ack!7808))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7802)
                    ((_ to_fp 11 53) x1_ack!7801))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7805)
                           ((_ to_fp 11 53) y1_ack!7804))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7802)
                                   ((_ to_fp 11 53) x1_ack!7801)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7804)
                           ((_ to_fp 11 53) y0_ack!7803))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7801)
                                   ((_ to_fp 11 53) x0_ack!7808)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7802)
                                   ((_ to_fp 11 53) x1_ack!7801))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7801)
                                   ((_ to_fp 11 53) x0_ack!7808)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!7801)
                           ((_ to_fp 11 53) x1_ack!7801))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7807)
                           ((_ to_fp 11 53) x1_ack!7801))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7801)
                                   ((_ to_fp 11 53) x1_ack!7801))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7801)
                                   ((_ to_fp 11 53) x1_ack!7801)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7807)
                                   ((_ to_fp 11 53) x1_ack!7801))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7807)
                                   ((_ to_fp 11 53) x1_ack!7801))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7801)
                                    ((_ to_fp 11 53) x1_ack!7801))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!7807)
                                    ((_ to_fp 11 53) x1_ack!7801))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!7802)
                           ((_ to_fp 11 53) x1_ack!7801))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!4)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x2_ack!7802)
                                    ((_ to_fp 11 53) x1_ack!7801))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7805)
                                   ((_ to_fp 11 53) y1_ack!7804))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7802)
                                   ((_ to_fp 11 53) x1_ack!7801)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!12)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!7804)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd5555555555555)
                                    a!4)
                            a!10))))
  (FPCHECK_FADD_ACCURACY a!11 a!13))))))))

(check-sat)
(exit)
