(declare-fun a_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!19) ((_ to_fp 11 53) #x4039000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!19)
                       ((_ to_fp 11 53) a_ack!19))
               ((_ to_fp 11 53) a_ack!19))
       ((_ to_fp 11 53) a_ack!19)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!19)
                       ((_ to_fp 11 53) a_ack!19))
               ((_ to_fp 11 53) a_ack!19))
       ((_ to_fp 11 53) a_ack!19)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4022000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!19)
                  ((_ to_fp 11 53) a_ack!19)))))

(check-sat)
(exit)
