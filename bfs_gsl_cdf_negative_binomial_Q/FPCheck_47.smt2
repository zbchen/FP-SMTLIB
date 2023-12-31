(declare-fun p_ack!247 () (_ BitVec 64))
(declare-fun n_ack!246 () (_ BitVec 32))
(declare-fun k_ack!245 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!247) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!246)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!247) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!247) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!246)
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!245)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!246)
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!245)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!246)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!245)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.lt ((_ to_fp 11 53) p_ack!247) a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!246)
  #x3ff0000000000000))

(check-sat)
(exit)
