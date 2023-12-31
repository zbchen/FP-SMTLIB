(declare-fun a_ack!466 () (_ BitVec 32))
(declare-fun b_ack!464 () (_ BitVec 32))
(declare-fun c_ack!465 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!466 #x00000000)))
(assert (not (bvslt b_ack!464 a_ack!466)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!465) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!466 #x00000000)))
(assert (not (= #x00000000 a_ack!466)))
(assert (= #x00000001 a_ack!466))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!465) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!465) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!465) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!465) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) c_ack!465))
                           ((_ to_fp 11 53) c_ack!465))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_ACCURACY a!2 #x4000000000000000))))

(check-sat)
(exit)
