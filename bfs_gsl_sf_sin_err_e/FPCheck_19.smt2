(declare-fun a_ack!38 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!38)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!38)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!38)
                                   ((_ to_fp 11 53) a_ack!38)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!38)
                           ((_ to_fp 11 53) a_ack!38)))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x4059000000000000)))

(check-sat)
(exit)
