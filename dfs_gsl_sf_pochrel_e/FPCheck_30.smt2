(declare-fun a_ack!97 () (_ BitVec 64))
(declare-fun b_ack!96 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!96))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!97))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!97)) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!96)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!96))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!97))))))
  (fp.eq (fp.div roundNearestTiesToEven a!1 (fp.abs ((_ to_fp 11 53) b_ack!96)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!97))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!97))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!96))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!97))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!97))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!96))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!96))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!97))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!97) ((_ to_fp 11 53) #xbfe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!97))
               ((_ to_fp 11 53) a_ack!97))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!97)))
       ((_ to_fp 11 53) a_ack!97)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!97))
                           ((_ to_fp 11 53) b_ack!96))
                   ((_ to_fp 11 53) b_ack!96))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!97)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!97))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!97))
                           ((_ to_fp 11 53) b_ack!96)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!96))))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!97))
                          ((_ to_fp 11 53) b_ack!96))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!97))
                           ((_ to_fp 11 53) b_ack!96))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!96)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_UNDERFLOW b_ack!96 (CF_log a!2)))))

(check-sat)
(exit)
