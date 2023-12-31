(declare-fun b_ack!2212 () (_ BitVec 64))
(declare-fun a_ack!2213 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2213) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2213) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2213) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2213) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2212)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!2213)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2213) ((_ to_fp 11 53) #x412e848000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2212)
          ((_ to_fp 11 53) a_ack!2213))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2212)
          ((_ to_fp 11 53) a_ack!2213))))

(check-sat)
(exit)
