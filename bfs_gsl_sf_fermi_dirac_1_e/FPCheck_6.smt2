(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!9) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!9) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!9) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) a_ack!9))
          ((_ to_fp 11 53) #xbff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
