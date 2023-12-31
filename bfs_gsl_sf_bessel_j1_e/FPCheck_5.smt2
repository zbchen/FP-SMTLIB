(declare-fun a_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!7))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!7))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!7))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!7)) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!7)))
  (fp.abs ((_ to_fp 11 53) a_ack!7))))

(check-sat)
(exit)
