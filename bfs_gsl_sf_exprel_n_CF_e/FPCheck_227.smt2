(declare-fun a_ack!781 () (_ BitVec 64))
(declare-fun b_ack!780 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!780) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!780)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!780)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!780)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!780) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000006
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000007
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000008
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x00000009
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x0000000a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (bvslt #x0000000b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!781))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781)))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffe
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781)))))
      (a!5 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffc
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781)))))
      (a!7 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffb
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781)))))
      (a!8 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffa
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!781)))))
      (a!10 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781)))))
      (a!11 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781)))))
      (a!13 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff7
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781)))))
      (a!14 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff6
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781)))))
      (a!16 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff5
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!781))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!780)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) b_ack!780)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) b_ack!780)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) b_ack!780)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) b_ack!780)))
                   (fp.div roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) b_ack!780)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) b_ack!780)))
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) b_ack!780)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) b_ack!780)))
                    (fp.div roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) b_ack!780)))))
  (FPCHECK_FMUL_OVERFLOW
    a!15
    (fp.div roundNearestTiesToEven a!16 ((_ to_fp 11 53) b_ack!780))))))))))

(check-sat)
(exit)
