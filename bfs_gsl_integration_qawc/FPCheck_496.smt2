(declare-fun limit_ack!6620 () (_ BitVec 64))
(declare-fun a_ack!6621 () (_ BitVec 64))
(declare-fun b_ack!6616 () (_ BitVec 64))
(declare-fun epsabs_ack!6618 () (_ BitVec 64))
(declare-fun epsrel_ack!6619 () (_ BitVec 64))
(declare-fun c_ack!6617 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6620)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6616) ((_ to_fp 11 53) a_ack!6621)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6618) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6619)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6619)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6617) ((_ to_fp 11 53) a_ack!6621))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6617) ((_ to_fp 11 53) b_ack!6616))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6617))
                   ((_ to_fp 11 53) a_ack!6621))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6616))
                 ((_ to_fp 11 53) b_ack!6616))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6617))
                   ((_ to_fp 11 53) a_ack!6621))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6616)))
         ((_ to_fp 11 53) b_ack!6616))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6617))
                           ((_ to_fp 11 53) a_ack!6621))
                   ((_ to_fp 11 53) b_ack!6616))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6621)
                                   ((_ to_fp 11 53) b_ack!6616))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!6616)
                           ((_ to_fp 11 53) a_ack!6621))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6621)
                           ((_ to_fp 11 53) b_ack!6616)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f96a09e663b59f1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))
                   ((_ to_fp 11 53) c_ack!6617)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))
                   ((_ to_fp 11 53) c_ack!6617)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))
                    ((_ to_fp 11 53) c_ack!6617)))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))
                    ((_ to_fp 11 53) c_ack!6617))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!6617)))
                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x1f746b175301848d))
                           a!6)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x1f9f9719f460e766))
                           a!8)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!10)
                                    ((_ to_fp 11 53) #x1f8701ea33d39961))
                            a!11)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x1f9ddc59a55733d2))
                            a!13))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!3
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb026cdaa7b61c4)
                    a!9))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc200ed0f46e8c1) a!14))))))

(check-sat)
(exit)
