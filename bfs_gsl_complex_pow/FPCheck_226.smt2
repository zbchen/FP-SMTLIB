(declare-fun x1_ack!1567 () (_ BitVec 64))
(declare-fun x2_ack!1565 () (_ BitVec 64))
(declare-fun y2_ack!1566 () (_ BitVec 64))
(declare-fun y1_ack!1564 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1565) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1565) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1567))
        (fp.abs ((_ to_fp 11 53) y1_ack!1564))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y2_ack!1566 (CF_atan2 y1_ack!1564 x1_ack!1567)))

(check-sat)
(exit)
