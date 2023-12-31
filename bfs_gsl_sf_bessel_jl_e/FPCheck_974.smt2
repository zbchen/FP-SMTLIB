(declare-fun a_ack!3026 () (_ BitVec 32))
(declare-fun b_ack!3025 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!3026 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3025) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3025) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!3026)))
(assert (not (= #x00000001 a_ack!3026)))
(assert (not (= #x00000002 a_ack!3026)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3026)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!3025)
                      ((_ to_fp 11 53) b_ack!3025))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!3026 a_ack!3026) a_ack!3026))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!3025))
              a!1))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3026)
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3025) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3026)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3025)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3026)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3025)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!3026)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3025)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!3026)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3025)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!3026)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3ff051eb851eb852))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3025)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3026)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc01c000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           a!2))))
  (FPCHECK_FDIV_OVERFLOW a!3 #x7ff0000000000001)))))

(check-sat)
(exit)
