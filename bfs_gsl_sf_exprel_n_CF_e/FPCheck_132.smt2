(declare-fun a_ack!489 () (_ BitVec 64))
(declare-fun b_ack!488 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!489))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!489))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!488)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!489)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!489)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!489)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!488)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!489))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!488)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!489))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!489))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!488) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!489))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!489))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!489)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffe
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!489))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!488)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!488)))
                   (fp.div roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) b_ack!488)))))
  (FPCHECK_FADD_UNDERFLOW a!2 a!4))))

(check-sat)
(exit)
