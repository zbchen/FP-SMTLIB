(declare-fun a_ack!578 () (_ BitVec 64))
(declare-fun b_ack!577 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!578) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!577) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!577) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!577) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!578) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!577)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!578)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!577)
                                   ((_ to_fp 11 53) a_ack!578))
                           ((_ to_fp 11 53) a_ack!578))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!577)
                                   ((_ to_fp 11 53) a_ack!578))
                           ((_ to_fp 11 53) a_ack!578)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!577)
                                   ((_ to_fp 11 53) a_ack!578))
                           ((_ to_fp 11 53) a_ack!578)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!577)
                                   ((_ to_fp 11 53) a_ack!578))
                           ((_ to_fp 11 53) a_ack!578)))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
