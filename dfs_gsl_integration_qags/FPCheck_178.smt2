(declare-fun limit_ack!1809 () (_ BitVec 64))
(declare-fun epsabs_ack!1807 () (_ BitVec 64))
(declare-fun epsrel_ack!1808 () (_ BitVec 64))
(declare-fun b_ack!1806 () (_ BitVec 64))
(declare-fun a_ack!1810 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1809)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1807) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1808)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1808)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1810)
                                   ((_ to_fp 11 53) b_ack!1806))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1806)
                                   ((_ to_fp 11 53) a_ack!1810)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1810)
                                   ((_ to_fp 11 53) b_ack!1806)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
