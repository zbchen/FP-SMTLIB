(declare-fun b_ack!1578 () (_ BitVec 32))
(declare-fun a_ack!1580 () (_ BitVec 32))
(declare-fun c_ack!1579 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1578 #x00000000)))
(assert (not (bvslt a_ack!1580 b_ack!1578)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1579) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1579) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1578)))
(assert (= #x00000000 b_ack!1578))
(assert (not (= a_ack!1580 b_ack!1578)))
(assert (not (= a_ack!1580 (bvadd #x00000001 b_ack!1578))))
(assert (bvsle (bvadd #x00000002 b_ack!1578) a_ack!1580))
(assert (FPCHECK_FSUB_ACCURACY
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000002 b_ack!1578 b_ack!1578))
  #x3ff0000000000000))

(check-sat)
(exit)
