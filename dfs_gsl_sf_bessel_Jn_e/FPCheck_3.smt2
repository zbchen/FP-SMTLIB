(declare-fun a_ack!15 () (_ BitVec 32))
(declare-fun b_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!15 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!14) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!15))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!14))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!14))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!14))
  (fp.abs ((_ to_fp 11 53) b_ack!14))))

(check-sat)
(exit)
