(declare-fun a_ack!2259 () (_ BitVec 32))
(declare-fun b_ack!2258 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (= #x00000000 a_ack!2259)))
(assert (not (= #x00000001 a_ack!2259)))
(assert (not (bvslt a_ack!2259 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2258) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2259)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2258) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2259)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_log b_ack!2258))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2259)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_log b_ack!2258))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2259)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x404b000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2259)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x403b000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2259)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x403b000000000000))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2258))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2259)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_ACCURACY
    a!1
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x4024000000000000)
            ((_ to_fp 11 53) b_ack!2258)))))

(check-sat)
(exit)
