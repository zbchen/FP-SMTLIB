(declare-fun a_ack!3574 () (_ BitVec 32))
(declare-fun b_ack!3572 () (_ BitVec 32))
(declare-fun c_ack!3573 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!3574 #x00000000)))
(assert (not (bvslt b_ack!3572 a_ack!3574)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!3572)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3573) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!3573))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3c7dc75547a9e207)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #xbcb080aaec279da4)))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3c7dc75547a9e207)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!2)
            (fp.add roundNearestTiesToEven
                    a!5
                    ((_ to_fp 11 53) #x3ce36fcfb04fab70)))
    (fp.add roundNearestTiesToEven a!4 ((_ to_fp 11 53) #xbcb080aaec279da4)))))))))

(check-sat)
(exit)
