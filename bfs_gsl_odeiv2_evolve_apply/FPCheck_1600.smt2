(declare-fun t_ack!8209 () (_ BitVec 64))
(declare-fun t1_ack!8210 () (_ BitVec 64))
(declare-fun h_ack!8213 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!8211 () (_ BitVec 64))
(declare-fun y1_ack!8212 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8210)
                    ((_ to_fp 11 53) t_ack!8209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8210)
                    ((_ to_fp 11 53) t_ack!8209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8210)
                ((_ to_fp 11 53) t_ack!8209))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8213)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8210)
                    ((_ to_fp 11 53) t_ack!8209)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8210)
                    ((_ to_fp 11 53) t_ack!8209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!8212))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!8211)
                                   ((_ to_fp 11 53) y0_ack!8211))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!8213))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!8211))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!8212))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!8212)
                                   a!2)))))
  (FPCHECK_FSUB_OVERFLOW
    #x8000000000000000
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) y0_ack!8211)
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) h_ack!8213) a!3)))))))

(check-sat)
(exit)
