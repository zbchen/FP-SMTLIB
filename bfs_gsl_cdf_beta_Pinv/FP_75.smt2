(declare-fun x_ack!1200 () (_ BitVec 64))
(declare-fun nu1_ack!1198 () (_ BitVec 64))
(declare-fun nu2_ack!1199 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1198) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!1199) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1200) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) nu1_ack!1198)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) nu1_ack!1198)
                               ((_ to_fp 11 53) nu2_ack!1199))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1200) ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!1198)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!1198)
                                   ((_ to_fp 11 53) nu2_ack!1199)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.geq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) nu1_ack!1198)
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) nu1_ack!1198)
                        ((_ to_fp 11 53) nu2_ack!1199)))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) x_ack!1200)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) x_ack!1200))))
(assert (not (fp.gt ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) x_ack!1200))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!1198) ((_ to_fp 11 53) #x40f86a0000000000)))

(check-sat)
(exit)
