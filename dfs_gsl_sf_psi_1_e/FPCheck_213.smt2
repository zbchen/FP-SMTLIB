(declare-fun a_ack!335 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!335) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!335) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!335) ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!335))
               ((_ to_fp 11 53) #x400921fb54442d18))
       ((_ to_fp 11 53) a_ack!335)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!335))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!335))
               ((_ to_fp 11 53) a_ack!335))
       ((_ to_fp 11 53) #x400921fb54442d18)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!335))
               ((_ to_fp 11 53) a_ack!335))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!335)))
       ((_ to_fp 11 53) a_ack!335)))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!335))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #xc000000000000000
  (CF_log (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!335)))))

(check-sat)
(exit)
