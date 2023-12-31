(declare-fun x1_ack!113 () (_ BitVec 64))
(declare-fun y1_ack!112 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!113))
        (fp.abs ((_ to_fp 11 53) y1_ack!112))))
(assert (FPCHECK_FADD_ACCURACY
  (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!113)))
  #x0000000000000000))

(check-sat)
(exit)
