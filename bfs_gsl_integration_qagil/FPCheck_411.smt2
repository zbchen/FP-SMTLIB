(declare-fun limit_ack!2633 () (_ BitVec 64))
(declare-fun epsabs_ack!2631 () (_ BitVec 64))
(declare-fun epsrel_ack!2632 () (_ BitVec 64))
(declare-fun b_ack!2634 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2633)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2631) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2632)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2632)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2634)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2634)
                                   ((_ to_fp 11 53) #x3fe4fd542a5f1dca))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x7ff8000000000001))
            ((_ to_fp 11 53) #x3fe353165125c18f))
    #x3fe353165125c18f)))

(check-sat)
(exit)
