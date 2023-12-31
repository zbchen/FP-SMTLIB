(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!252 () (_ BitVec 64))
(declare-fun a_ack!253 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!253)
               (CF_sin b_ack!252))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!253)
                     (CF_cos b_ack!252))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!253)
                (CF_cos b_ack!252))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!253)
                    (CF_cos b_ack!252))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!253)
                    (CF_cos b_ack!252))
            ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!253)
                    (CF_cos b_ack!252))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!253)
                    (CF_cos b_ack!252))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!253)
                    (CF_cos b_ack!252))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!253)
               (CF_cos b_ack!252))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!253)
                                   (CF_cos b_ack!252))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!253)
                                   (CF_cos b_ack!252)))
                   ((_ to_fp 11 53) #x4028000000000000))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!253)
                    (CF_cos b_ack!252)))
    a!1)))

(check-sat)
(exit)
