(declare-fun a_ack!602 () (_ BitVec 64))
(declare-fun b_ack!601 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!602) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!601) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!601) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!601) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!602) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!601)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!602)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 a!1)))

(check-sat)
(exit)
