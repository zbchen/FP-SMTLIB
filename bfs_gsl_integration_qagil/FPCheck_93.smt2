(declare-fun limit_ack!621 () (_ BitVec 64))
(declare-fun epsabs_ack!619 () (_ BitVec 64))
(declare-fun epsrel_ack!620 () (_ BitVec 64))
(declare-fun b_ack!622 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!621)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!619) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!620)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!620)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!622)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!622)
                                   ((_ to_fp 11 53) #x4043264061f2d8c9)))))
      (a!3 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!622)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3f9a0e871839dd70))
                   ((_ to_fp 11 53) #x3f9a0e871839dd70)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                   ((_ to_fp 11 53) #x3fef2f8bc73e3114))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fb026cdaa7b61c4
    (fp.add roundNearestTiesToEven a!2 a!4)))))

(check-sat)
(exit)
