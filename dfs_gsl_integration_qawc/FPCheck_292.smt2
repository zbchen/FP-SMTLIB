(declare-fun limit_ack!4508 () (_ BitVec 64))
(declare-fun a_ack!4509 () (_ BitVec 64))
(declare-fun b_ack!4504 () (_ BitVec 64))
(declare-fun epsabs_ack!4506 () (_ BitVec 64))
(declare-fun epsrel_ack!4507 () (_ BitVec 64))
(declare-fun c_ack!4505 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4508)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4504) ((_ to_fp 11 53) a_ack!4509))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4506) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4507)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4507)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4505) ((_ to_fp 11 53) a_ack!4509))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4505) ((_ to_fp 11 53) b_ack!4504))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4505))
                   ((_ to_fp 11 53) b_ack!4504))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4509))
                 ((_ to_fp 11 53) a_ack!4509))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4505))
                   ((_ to_fp 11 53) b_ack!4504))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4509)))
         ((_ to_fp 11 53) a_ack!4509))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4505))
                           ((_ to_fp 11 53) b_ack!4504))
                   ((_ to_fp 11 53) a_ack!4509))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!4504)
                               ((_ to_fp 11 53) a_ack!4509))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4505))
                           ((_ to_fp 11 53) b_ack!4504))
                   ((_ to_fp 11 53) a_ack!4509))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4504)
                                   ((_ to_fp 11 53) a_ack!4509))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4509)
                  ((_ to_fp 11 53) b_ack!4504)))))

(check-sat)
(exit)
