(declare-fun a_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!3))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3)) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x3fc0000000000000 (fp.abs ((_ to_fp 11 53) a_ack!3))))

(check-sat)
(exit)
