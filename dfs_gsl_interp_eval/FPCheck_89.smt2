(declare-fun x1_ack!923 () (_ BitVec 64))
(declare-fun x0_ack!929 () (_ BitVec 64))
(declare-fun x2_ack!924 () (_ BitVec 64))
(declare-fun xx_ack!928 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!925 () (_ BitVec 64))
(declare-fun y1_ack!926 () (_ BitVec 64))
(declare-fun y2_ack!927 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!929) ((_ to_fp 11 53) x1_ack!923)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!923) ((_ to_fp 11 53) x2_ack!924)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!923)
                       ((_ to_fp 11 53) x0_ack!929))
               ((_ to_fp 11 53) x0_ack!929))
       ((_ to_fp 11 53) x1_ack!923)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!923)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!923)
                       ((_ to_fp 11 53) x0_ack!929)))
       ((_ to_fp 11 53) x0_ack!929)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!924)
                       ((_ to_fp 11 53) x1_ack!923))
               ((_ to_fp 11 53) x1_ack!923))
       ((_ to_fp 11 53) x2_ack!924)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!924)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!924)
                       ((_ to_fp 11 53) x1_ack!923)))
       ((_ to_fp 11 53) x1_ack!923)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!923)
                    ((_ to_fp 11 53) x0_ack!929))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!924)
                    ((_ to_fp 11 53) x1_ack!923))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!928) ((_ to_fp 11 53) x0_ack!929))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!928) ((_ to_fp 11 53) x2_ack!924))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!928) ((_ to_fp 11 53) x0_ack!929))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!928) ((_ to_fp 11 53) x1_ack!923)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!923) ((_ to_fp 11 53) xx_ack!928))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!924)
               ((_ to_fp 11 53) x1_ack!923))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!927)
                           ((_ to_fp 11 53) y1_ack!926))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!924)
                                   ((_ to_fp 11 53) x1_ack!923)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!926)
                           ((_ to_fp 11 53) y0_ack!925))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!923)
                                   ((_ to_fp 11 53) x0_ack!929)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!924)
                                   ((_ to_fp 11 53) x1_ack!923))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!923)
                                   ((_ to_fp 11 53) x0_ack!929))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!924)
                                   ((_ to_fp 11 53) x1_ack!923))))))
  (FPCHECK_FADD_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!928)
                    ((_ to_fp 11 53) x1_ack!923))
            a!5))))))

(check-sat)
(exit)
