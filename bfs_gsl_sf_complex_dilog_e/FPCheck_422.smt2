(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1896 () (_ BitVec 64))
(declare-fun a_ack!1897 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1897)
                    (CF_sin b_ack!1896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           a!1)
                   a!1)))
  (not (fp.eq a!2
              (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!1897)
                      (CF_cos b_ack!1896)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           a!1))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_sin b_ack!1896))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1897)
                           (CF_cos b_ack!1896))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   (CF_cos b_ack!1896))
                           a!1))))
  (fp.eq a!2 a!1))))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1897)
          (CF_sin b_ack!1896))))

(check-sat)
(exit)
