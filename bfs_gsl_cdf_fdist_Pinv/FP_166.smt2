(declare-fun x_ack!1944 () (_ BitVec 64))
(declare-fun nu1_ack!1942 () (_ BitVec 64))
(declare-fun nu2_ack!1943 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1942) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!1943) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!1942)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1943)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1944) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!1942)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1943)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!1942)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1943)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!1942)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1943)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010d666dada6aa8))
                 a!1)
         ((_ to_fp 11 53) #x4010d666dada6aa8))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!1942)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1943)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010d666dada6aa8))
                 ((_ to_fp 11 53) #x4010d666dada6aa8))
         a!1)))

(check-sat)
(exit)
