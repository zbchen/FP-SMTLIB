(declare-fun a_ack!78 () (_ BitVec 64))
(declare-fun x_ack!80 () (_ BitVec 64))
(declare-fun b_ack!79 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!80)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!78)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!80)
                    ((_ to_fp 11 53) a_ack!78))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!79) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!79))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!80)
                                  ((_ to_fp 11 53) a_ack!78))
                          b_ack!79)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!80)
                                  ((_ to_fp 11 53) a_ack!78))
                          b_ack!79)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!80)
                       ((_ to_fp 11 53) a_ack!78))
               b_ack!79)
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!79))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!79))))

(check-sat)
(exit)
