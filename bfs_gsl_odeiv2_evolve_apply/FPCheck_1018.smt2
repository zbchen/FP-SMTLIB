(declare-fun t_ack!4865 () (_ BitVec 64))
(declare-fun t1_ack!4866 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4868 () (_ BitVec 64))
(declare-fun h_ack!4869 () (_ BitVec 64))
(declare-fun y0_ack!4867 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4866)
                    ((_ to_fp 11 53) t_ack!4865))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4866)
                    ((_ to_fp 11 53) t_ack!4865))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!4866)
                     ((_ to_fp 11 53) t_ack!4865))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4866)
                    ((_ to_fp 11 53) t_ack!4865))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!4868))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!4867)
                                   ((_ to_fp 11 53) y0_ack!4867))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!4867)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!4869))
                           ((_ to_fp 11 53) y1_ack!4868)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fea5153af7727fd)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4867))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4867))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!4869))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4867))
                           a!1)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4867))
                            a!1))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4868)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!4868))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4868)
                                    a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!6)))
      (a!12 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4867)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4869)
                                    a!11))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4867)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4869)
                                    a!11))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4867)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4869)
                                    a!11)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!4868)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!4869)
                           (fp.add roundNearestTiesToEven a!3 a!7)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!4869)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0000000000000)
                                   ((_ to_fp 11 53) y1_ack!4868))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb8000000000000)
                                   a!8))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!8)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4869)
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!14))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4867)
                                    a!9)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4867)
                                    a!9))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4868)
                                    a!15))
                    a!16)))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4867)
                                    a!9))
                    a!17)))
  (FPCHECK_FADD_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #xc027513d9f0583c5) a!18))))))))))))

(check-sat)
(exit)
