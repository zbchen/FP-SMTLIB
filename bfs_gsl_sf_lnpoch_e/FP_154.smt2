(declare-fun a_ack!2613 () (_ BitVec 64))
(declare-fun b_ack!2612 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2613) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2613)
                     ((_ to_fp 11 53) b_ack!2612))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2612) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2612))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2613))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2613) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2613)
                       ((_ to_fp 11 53) b_ack!2612))
               ((_ to_fp 11 53) a_ack!2613))
       ((_ to_fp 11 53) b_ack!2612)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2613)
                       ((_ to_fp 11 53) b_ack!2612))
               ((_ to_fp 11 53) b_ack!2612))
       ((_ to_fp 11 53) a_ack!2613)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2613)
               ((_ to_fp 11 53) b_ack!2612))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2613) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2613) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2613) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2613)
                     ((_ to_fp 11 53) b_ack!2612))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2613)
               ((_ to_fp 11 53) b_ack!2612))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2613)
                                   ((_ to_fp 11 53) b_ack!2612))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2613)
                                   ((_ to_fp 11 53) b_ack!2612))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!2613)
                ((_ to_fp 11 53) b_ack!2612))
        ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
