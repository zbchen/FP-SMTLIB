(declare-fun a_ack!57 () (_ BitVec 32))
(declare-fun b_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!57 #x00000000)))
(assert (= #x00000000 a_ack!57))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!56) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!56)))
                   ((_ to_fp 11 53) b_ack!56))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
