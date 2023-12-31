(declare-fun x1_ack!7246 () (_ BitVec 64))
(declare-fun x0_ack!7253 () (_ BitVec 64))
(declare-fun x2_ack!7247 () (_ BitVec 64))
(declare-fun b_ack!7252 () (_ BitVec 64))
(declare-fun a_ack!7251 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!7248 () (_ BitVec 64))
(declare-fun y1_ack!7249 () (_ BitVec 64))
(declare-fun y2_ack!7250 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7253) ((_ to_fp 11 53) x1_ack!7246)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7246) ((_ to_fp 11 53) x2_ack!7247)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7246)
                       ((_ to_fp 11 53) x0_ack!7253))
               ((_ to_fp 11 53) x0_ack!7253))
       ((_ to_fp 11 53) x1_ack!7246)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7246)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7246)
                       ((_ to_fp 11 53) x0_ack!7253)))
       ((_ to_fp 11 53) x0_ack!7253)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7247)
                       ((_ to_fp 11 53) x1_ack!7246))
               ((_ to_fp 11 53) x1_ack!7246))
       ((_ to_fp 11 53) x2_ack!7247)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7247)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7247)
                       ((_ to_fp 11 53) x1_ack!7246)))
       ((_ to_fp 11 53) x1_ack!7246)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7246)
                    ((_ to_fp 11 53) x0_ack!7253))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7247)
                    ((_ to_fp 11 53) x1_ack!7246))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7251) ((_ to_fp 11 53) b_ack!7252))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7251) ((_ to_fp 11 53) x0_ack!7253))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7252) ((_ to_fp 11 53) x2_ack!7247))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7251) ((_ to_fp 11 53) b_ack!7252))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7251) ((_ to_fp 11 53) x0_ack!7253))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7251) ((_ to_fp 11 53) x1_ack!7246))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7252) ((_ to_fp 11 53) x0_ack!7253))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7252) ((_ to_fp 11 53) x1_ack!7246)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7246) ((_ to_fp 11 53) b_ack!7252))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7246)
                    ((_ to_fp 11 53) x0_ack!7253))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7247)
                    ((_ to_fp 11 53) x1_ack!7246))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7250)
                           ((_ to_fp 11 53) y1_ack!7249))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7247)
                                   ((_ to_fp 11 53) x1_ack!7246)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7249)
                           ((_ to_fp 11 53) y0_ack!7248))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7246)
                                   ((_ to_fp 11 53) x0_ack!7253)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7247)
                                   ((_ to_fp 11 53) x1_ack!7246))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7246)
                                   ((_ to_fp 11 53) x0_ack!7253))))))
  (FPCHECK_FMUL_ACCURACY
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
