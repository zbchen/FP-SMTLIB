(declare-fun a_ack!345 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!345 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!345 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!345)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!345)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!345)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!345)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!345)
       ((_ to_fp 11 53) #xc065400000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!345)))

(check-sat)
(exit)
