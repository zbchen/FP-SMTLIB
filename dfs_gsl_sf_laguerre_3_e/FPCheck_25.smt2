(declare-fun a_ack!93 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!92 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!93) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!92)
                  ((_ to_fp 11 53) b_ack!92))
          ((_ to_fp 11 53) #x4018000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          ((_ to_fp 11 53) b_ack!92))))

(check-sat)
(exit)
