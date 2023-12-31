(declare-fun x1_ack!1300 () (_ BitVec 64))
(declare-fun x2_ack!1298 () (_ BitVec 64))
(declare-fun y2_ack!1299 () (_ BitVec 64))
(declare-fun y1_ack!1297 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1300) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1298) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1299) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1298) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1300))
        (fp.abs ((_ to_fp 11 53) y1_ack!1297))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1300) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!1300)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW a!1 x2_ack!1298)))

(check-sat)
(exit)
