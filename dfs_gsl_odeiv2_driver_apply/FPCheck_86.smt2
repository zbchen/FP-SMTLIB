(declare-fun t_ack!580 () (_ BitVec 64))
(declare-fun t1_ack!577 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!578 () (_ BitVec 64))
(declare-fun y1_ack!579 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!577)
                                  ((_ to_fp 11 53) t_ack!580)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!577)
                       ((_ to_fp 11 53) t_ack!580)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!577)
                       ((_ to_fp 11 53) t_ack!580))
               ((_ to_fp 11 53) t_ack!580))
       ((_ to_fp 11 53) t1_ack!577)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!577)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!577)
                       ((_ to_fp 11 53) t_ack!580)))
       ((_ to_fp 11 53) t_ack!580)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!577)
                    ((_ to_fp 11 53) t_ack!580))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!577)
               ((_ to_fp 11 53) t_ack!580))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!577)
                ((_ to_fp 11 53) t_ack!580))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!577)
               ((_ to_fp 11 53) t_ack!580))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!577)
                                   ((_ to_fp 11 53) t_ack!580)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!577)
                 ((_ to_fp 11 53) t_ack!580)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!577)
                                  ((_ to_fp 11 53) t_ack!580)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!577)
                                   ((_ to_fp 11 53) t_ack!580)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!577)
                           ((_ to_fp 11 53) t_ack!580)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!579))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!578)
                                   ((_ to_fp 11 53) y0_ack!578))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!577)
                                   ((_ to_fp 11 53) t_ack!580)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!578))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!579))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!579)
                                   a!2)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) t1_ack!577)
            ((_ to_fp 11 53) t_ack!580))
    a!3)))))

(check-sat)
(exit)
