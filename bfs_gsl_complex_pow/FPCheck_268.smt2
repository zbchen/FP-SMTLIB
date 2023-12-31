(declare-fun x1_ack!1895 () (_ BitVec 64))
(declare-fun y1_ack!1892 () (_ BitVec 64))
(declare-fun x2_ack!1893 () (_ BitVec 64))
(declare-fun y2_ack!1894 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1895) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1892) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1893) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1894) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1895))
             (fp.abs ((_ to_fp 11 53) y1_ack!1892)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1895) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1892) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW (CF_atan2 y1_ack!1892 x1_ack!1895) x2_ack!1893))

(check-sat)
(exit)
