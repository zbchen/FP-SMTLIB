(declare-fun alpha1_ack!4557 () (_ BitVec 64))
(declare-fun beta_ack!4558 () (_ BitVec 64))
(declare-fun mu_ack!4559 () (_ BitVec 32))
(declare-fun nu_ack!4560 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4557)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4558)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!4559))
(assert (not (= #x00000000 nu_ack!4560)))
(assert (= #x00000001 nu_ack!4560))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!4557)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!4557)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!4557)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) alpha1_ack!4557))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!4557)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!4557)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!4)))))

(check-sat)
(exit)
