(declare-fun a_ack!1550 () (_ BitVec 32))
(declare-fun b_ack!1549 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1550 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1549) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1549) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1550)))
(assert (not (= #x00000001 a_ack!1550)))
(assert (not (= #x00000002 a_ack!1550)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1550)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!1549)
                      ((_ to_fp 11 53) b_ack!1549))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!1550 a_ack!1550) a_ack!1550))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!1549))
              a!1))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1550)
            ((_ to_fp 11 53) #x407965fea53d6e3a))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1549) ((_ to_fp 11 53) #x408f400000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1549)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvmul a_ack!1550 a_ack!1550)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1550)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1549)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1549)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FDIV_ACCURACY a!2 a!3))))

(check-sat)
(exit)
