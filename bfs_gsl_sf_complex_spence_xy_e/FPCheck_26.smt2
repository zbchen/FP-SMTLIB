(declare-fun b_ack!72 () (_ BitVec 64))
(declare-fun a_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!72))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!73))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!73)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!72))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!72))))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (CF_atan2 (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x8000000000000000)
                             ((_ to_fp 11 53) b_ack!72))
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3ff0000000000000)
                             ((_ to_fp 11 53) a_ack!73)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!1)))

(check-sat)
(exit)
