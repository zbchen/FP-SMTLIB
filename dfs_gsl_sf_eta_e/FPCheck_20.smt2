(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x4059000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!32)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f7e5078049f59f0))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x4034000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (CF_pow #x4000000000000000
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) a_ack!32)))))

(check-sat)
(exit)
