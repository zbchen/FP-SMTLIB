(declare-fun b_ack!621 () (_ BitVec 32))
(declare-fun a_ack!623 () (_ BitVec 32))
(declare-fun c_ack!622 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!621 #x00000000)))
(assert (not (bvslt a_ack!623 b_ack!621)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!622) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!622) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!621)))
(assert (= #x00000000 b_ack!621))
(assert (not (= a_ack!623 b_ack!621)))
(assert (not (= a_ack!623 (bvadd #x00000001 b_ack!621))))
(assert (bvsle (bvadd #x00000002 b_ack!621) a_ack!623))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!622)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!622)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!621 b_ack!621))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))
                   ((_ to_fp 11 53) #x4001e3779b97f4a8))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x400efbdeb14f4eda))
    a!2)))

(check-sat)
(exit)
