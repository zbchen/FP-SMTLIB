(declare-fun b_ack!117 () (_ BitVec 64))
(declare-fun a_ack!118 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!118) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!118) ((_ to_fp 11 53) #xc076232bdd7abcd2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!118)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!117))))))
  (FPCHECK_FDIV_ACCURACY a!1 #x40026bb1bbb55516)))

(check-sat)
(exit)
