(declare-fun x_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!15))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!15))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!15))
            ((_ to_fp 11 53) #x4016a09e667f3bcd))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!15) ((_ to_fp 11 53) #x402124dd2f1a9fbe))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!15) ((_ to_fp 11 53) #xc042c26e978d4fdf))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3f97a090772574da
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!15)
                  ((_ to_fp 11 53) x_ack!15)))))

(check-sat)
(exit)
