(declare-fun y_ack!0 () (_ BitVec 64))
(declare-fun x_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) y_ack!0) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) x_ack!1)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 (CF_acos x_ack!1)))

(check-sat)
(exit)
