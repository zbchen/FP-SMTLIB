(declare-fun a_ack!967 () (_ BitVec 64))
(declare-fun b_ack!966 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!967) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!967)
                     ((_ to_fp 11 53) b_ack!966))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!966) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!966))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!967)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!967) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!966)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!966))
                           (CF_log a_ack!967))
                   (fp.abs ((_ to_fp 11 53) b_ack!966)))))
  (fp.eq a!1 (CF_log a_ack!967))))
(assert (not (fp.eq (fp.abs (CF_log a_ack!967)) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!966))
                           (CF_log a_ack!967))
                   (CF_log a_ack!967))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!966)))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!966))
               (CF_log a_ack!967))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!967) ((_ to_fp 11 53) #x4065600000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!967)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!967)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!967)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!967)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!967)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!967)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!967) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  #x40852429b6c30b05
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!967)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
