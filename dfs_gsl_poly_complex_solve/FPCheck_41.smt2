(declare-fun a5_ack!138 () (_ BitVec 64))
(declare-fun a0_ack!139 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a1_ack!137 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!139))
                           ((_ to_fp 11 53) a5_ack!138)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!137))
                           ((_ to_fp 11 53) a5_ack!138)))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
