(declare-fun a_ack!3553 () (_ BitVec 32))
(declare-fun b_ack!3551 () (_ BitVec 32))
(declare-fun c_ack!3552 () (_ BitVec 64))
(assert (not (bvslt a_ack!3553 #x00000000)))
(assert (not (bvslt b_ack!3551 a_ack!3553)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3552) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3553 #x00000000)))
(assert (not (= #x00000000 a_ack!3553)))
(assert (not (= #x00000001 a_ack!3553)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3552) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3552) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!3552))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!3553 a_ack!3553))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!3553))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3552) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3553)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3552)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3553))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3552)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3553)))
                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                         a!1)
                 ((_ to_fp 11 53) #x3fb6d3d801d5bc8d))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3552)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3553)))
                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fb6d3d801d5bc8d))))

(check-sat)
(exit)
