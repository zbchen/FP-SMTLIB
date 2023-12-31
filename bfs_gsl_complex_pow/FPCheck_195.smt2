(declare-fun x1_ack!1324 () (_ BitVec 64))
(declare-fun x2_ack!1322 () (_ BitVec 64))
(declare-fun y2_ack!1323 () (_ BitVec 64))
(declare-fun y1_ack!1321 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1322) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1323) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1322) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1324))
        (fp.abs ((_ to_fp 11 53) y1_ack!1321))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y2_ack!1323 (CF_atan2 y1_ack!1321 x1_ack!1324)))

(check-sat)
(exit)
