(declare-fun a_ack!970 () (_ BitVec 32))
(declare-fun b_ack!969 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!970 #xffffffff)))
(assert (not (= #xffffffff a_ack!970)))
(assert (not (= #x00000000 a_ack!970)))
(assert (not (= #x00000001 a_ack!970)))
(assert (not (= #x00000002 a_ack!970)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!969) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!969) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!969) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp b_ack!969)))
                   (CF_pow #x3ff0000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!970)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
