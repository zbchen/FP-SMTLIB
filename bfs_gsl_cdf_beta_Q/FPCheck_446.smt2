(declare-fun x_ack!2177 () (_ BitVec 64))
(declare-fun nu1_ack!2175 () (_ BitVec 64))
(declare-fun nu2_ack!2176 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2177) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!2177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2177) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!2176) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) x_ack!2177)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu2_ack!2176)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!2175)
                                  ((_ to_fp 11 53) nu2_ack!2176))))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!2176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu1_ack!2175) (CF_floor nu1_ack!2175))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!2176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!2175)
                       ((_ to_fp 11 53) nu2_ack!2176))
               ((_ to_fp 11 53) nu1_ack!2175))
       ((_ to_fp 11 53) nu2_ack!2176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!2175)
                       ((_ to_fp 11 53) nu2_ack!2176))
               ((_ to_fp 11 53) nu2_ack!2176))
       ((_ to_fp 11 53) nu1_ack!2175)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!2175)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!2175)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) nu1_ack!2175)
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) nu1_ack!2175))
            ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!2175) ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (FPCHECK_FMUL_UNDERFLOW #x400921fb54442d18 nu1_ack!2175))

(check-sat)
(exit)
