(declare-fun a_ack!1835 () (_ BitVec 64))
(declare-fun b_ack!1832 () (_ BitVec 64))
(declare-fun epsabs_ack!1833 () (_ BitVec 64))
(declare-fun epsrel_ack!1834 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1832)
                                   ((_ to_fp 11 53) a_ack!1835))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1833) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1834)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1834)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1832)
                                   ((_ to_fp 11 53) a_ack!1835)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1832)
                    ((_ to_fp 11 53) a_ack!1835)))
    a!1)))

(check-sat)
(exit)
