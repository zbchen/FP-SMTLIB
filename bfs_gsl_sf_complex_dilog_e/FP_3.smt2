(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!90 () (_ BitVec 64))
(declare-fun a_ack!91 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!91)
               (CF_sin b_ack!90))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!91)
                     (CF_cos b_ack!90))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!91)
                     (CF_cos b_ack!90))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
