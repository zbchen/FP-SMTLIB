(declare-fun a_ack!1840 () (_ BitVec 32))
(declare-fun b_ack!1839 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1840 #x00000000)))
(assert (not (= #x00000000 a_ack!1840)))
(assert (= #x00000001 a_ack!1840))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1839) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (CF_log (fp.abs ((_ to_fp 11 53) b_ack!1839)))))

(check-sat)
(exit)
