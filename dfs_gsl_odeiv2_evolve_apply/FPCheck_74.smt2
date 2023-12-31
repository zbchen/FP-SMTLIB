(declare-fun t_ack!623 () (_ BitVec 64))
(declare-fun t1_ack!624 () (_ BitVec 64))
(declare-fun h_ack!627 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!625 () (_ BitVec 64))
(declare-fun y1_ack!626 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!624)
                    ((_ to_fp 11 53) t_ack!623))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!624)
               ((_ to_fp 11 53) t_ack!623))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!627) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!624)
                ((_ to_fp 11 53) t_ack!623))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!627)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!624)
               ((_ to_fp 11 53) t_ack!623))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!626))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!625)
                                   ((_ to_fp 11 53) y0_ack!625))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!624)
                                   ((_ to_fp 11 53) t_ack!623)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!625))
                           a!1))))
  (FPCHECK_FMUL_ACCURACY
    #x3fb0000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!626) a!2)))))

(check-sat)
(exit)
