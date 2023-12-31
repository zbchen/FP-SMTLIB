(declare-fun b_ack!1389 () (_ BitVec 32))
(declare-fun a_ack!1391 () (_ BitVec 32))
(declare-fun c_ack!1390 () (_ BitVec 64))
(assert (not (bvslt b_ack!1389 #x00000000)))
(assert (not (bvslt a_ack!1391 #x00000000)))
(assert (not (= #x00000000 b_ack!1389)))
(assert (not (= #x00000001 b_ack!1389)))
(assert (= #x00000000 a_ack!1391))
(assert (not (bvslt b_ack!1389 #x00000000)))
(assert (not (= #x00000000 b_ack!1389)))
(assert (not (= #x00000001 b_ack!1389)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1390) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1390))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!1389))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1390))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!1389))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1390)
                                   ((_ to_fp 11 53) c_ack!1390))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1390))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (not (bvslt #x00000003 b_ack!1389)))

(check-sat)
(exit)
