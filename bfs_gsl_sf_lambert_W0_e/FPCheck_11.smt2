(declare-fun a_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!17)
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!17)
          ((_ to_fp 11 53) #x3fd78b56362cef38))))

(check-sat)
(exit)
