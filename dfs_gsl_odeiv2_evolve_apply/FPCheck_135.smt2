(declare-fun t_ack!1211 () (_ BitVec 64))
(declare-fun t1_ack!1212 () (_ BitVec 64))
(declare-fun h_ack!1215 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!1214 () (_ BitVec 64))
(declare-fun y0_ack!1213 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1212)
                    ((_ to_fp 11 53) t_ack!1211))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1212)
               ((_ to_fp 11 53) t_ack!1211))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1212)
                ((_ to_fp 11 53) t_ack!1211))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1215)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1212)
               ((_ to_fp 11 53) t_ack!1211))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!1214))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!1213)
                                   ((_ to_fp 11 53) y0_ack!1213))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1212)
                           ((_ to_fp 11 53) t_ack!1211)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1213))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1213)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1214)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1213))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1213)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1214)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1213)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1214))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1214)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1212)
                           ((_ to_fp 11 53) t_ack!1211))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0000000000000)
                           ((_ to_fp 11 53) y1_ack!1214))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb8000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1214)
                                   a!8)))))
  (FPCHECK_FADD_OVERFLOW
    y0_ack!1213
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1212)
                    ((_ to_fp 11 53) t_ack!1211))
            a!9))))))))

(check-sat)
(exit)
