(declare-fun a_ack!3187 () (_ BitVec 64))
(declare-fun b_ack!3184 () (_ BitVec 64))
(declare-fun c_ack!3185 () (_ BitVec 64))
(declare-fun d_ack!3186 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3187) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3184) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3185)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3185)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!3185))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3187) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3184) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!3186)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!3185)
                       ((_ to_fp 11 53) a_ack!3187))
               ((_ to_fp 11 53) a_ack!3187))
       ((_ to_fp 11 53) c_ack!3185)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!3185)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!3185)
                       ((_ to_fp 11 53) a_ack!3187)))
       ((_ to_fp 11 53) a_ack!3187)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!3185)
                       ((_ to_fp 11 53) a_ack!3187))
               ((_ to_fp 11 53) b_ack!3184))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3185)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3185)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!3185))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) b_ack!3184))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) b_ack!3184))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.geq (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) b_ack!3184))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3185)
                                  ((_ to_fp 11 53) a_ack!3187))
                          ((_ to_fp 11 53) b_ack!3184))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) b_ack!3184)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!3185)
                     ((_ to_fp 11 53) a_ack!3187))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3185)
                    ((_ to_fp 11 53) a_ack!3187))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!3185)
                       ((_ to_fp 11 53) a_ack!3187)))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3185)
                                    ((_ to_fp 11 53) a_ack!3187))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb7af73866da4e8)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!6))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3185)
                                   ((_ to_fp 11 53) a_ack!3187))
                           a!8))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3185)
                                    ((_ to_fp 11 53) a_ack!3187))
                            a!9)
                    a!10)))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3185)
                                    ((_ to_fp 11 53) a_ack!3187))))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    a!12
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3185)
                                    ((_ to_fp 11 53) a_ack!3187))))))
  (FPCHECK_FMUL_OVERFLOW #x3cd0000000000000 (fp.abs (CF_log a!13))))))))))))))))

(check-sat)
(exit)
