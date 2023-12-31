(declare-fun b_ack!1773 () (_ BitVec 64))
(declare-fun a_ack!1775 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!1774 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1773) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1775 #x00000000)))
(assert (not (= #x00000000 a_ack!1775)))
(assert (not (= #x00000001 a_ack!1775)))
(assert (not (= #x00000002 a_ack!1775)))
(assert (not (= #x00000003 a_ack!1775)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1773) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!1775))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1773))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY a!1 c_ack!1774)))

(check-sat)
(exit)
