(declare-fun p_ack!718 () (_ BitVec 64))
(declare-fun n_ack!717 () (_ BitVec 32))
(declare-fun k_ack!716 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!718) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!718) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!718) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!718) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!718) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!718) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!716)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.eq ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!716)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!716)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!716)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!716)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
       (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!716)
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         k_ack!716)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)
       ((_ to_fp 11 53) #x4330000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!717))
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            n_ack!717))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!717)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         n_ack!717)))
       ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fb0eb240795ceb2
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!717))))

(check-sat)
(exit)
