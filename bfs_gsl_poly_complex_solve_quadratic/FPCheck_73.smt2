(declare-fun a_ack!361 () (_ BitVec 64))
(declare-fun c_ack!360 () (_ BitVec 64))
(declare-fun b_ack!359 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!361) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!359)
                           ((_ to_fp 11 53) b_ack!359))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!361))
                           ((_ to_fp 11 53) c_ack!360)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!359)
                           ((_ to_fp 11 53) b_ack!359))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!361))
                           ((_ to_fp 11 53) c_ack!360)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x7ff0000000000001)
                  ((_ to_fp 11 53) a_ack!361)))))

(check-sat)
(exit)
