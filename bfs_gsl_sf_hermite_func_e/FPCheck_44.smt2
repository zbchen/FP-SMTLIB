(declare-fun a_ack!196 () (_ BitVec 32))
(declare-fun b_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!196 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!195) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!196)))
(assert (= #x00000001 a_ack!196))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!195))
                           ((_ to_fp 11 53) b_ack!195)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                    ((_ to_fp 11 53) b_ack!195))
            a!1)
    #x3ff54d264f787eb7)))

(check-sat)
(exit)
