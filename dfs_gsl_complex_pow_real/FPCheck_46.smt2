(declare-fun x1_ack!210 () (_ BitVec 64))
(declare-fun y1_ack!208 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun x_ack!209 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!210))
             (fp.abs ((_ to_fp 11 53) y1_ack!208)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY (CF_atan2 y1_ack!208 x1_ack!210) x_ack!209))

(check-sat)
(exit)
