(declare-fun p_ack!3826 () (_ BitVec 64))
(declare-fun k_ack!3824 () (_ BitVec 32))
(declare-fun n_ack!3825 () (_ BitVec 32))
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!3826) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!3826) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!3825 k_ack!3824)))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!3826) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!3826) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3826) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3826) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!3824)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3824)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!3825)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3824))))))
  (not (fp.gt ((_ to_fp 11 53) p_ack!3826) a!1))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)
               ((_ to_fp 11 53) #x3ff0000000000000))
       (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3825)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3824)))))

(check-sat)
(exit)
