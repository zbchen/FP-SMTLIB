(declare-fun b_ack!1618 () (_ BitVec 32))
(declare-fun a_ack!1620 () (_ BitVec 32))
(declare-fun c_ack!1619 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1618 #x00000000)))
(assert (not (bvslt a_ack!1620 #x00000000)))
(assert (not (= #x00000000 b_ack!1618)))
(assert (not (= #x00000001 b_ack!1618)))
(assert (not (= #x00000000 a_ack!1620)))
(assert (not (= #x00000001 a_ack!1620)))
(assert (not (bvslt (bvsub b_ack!1618 a_ack!1620) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1618 a_ack!1620) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1618 a_ack!1620))))
(assert (not (= #x00000001 (bvsub b_ack!1618 a_ack!1620))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1619) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1619))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!1618 a_ack!1620)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1619))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!1619))))))
  (not a!1)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1619)
          ((_ to_fp 11 53) c_ack!1619))
  #x3ff0000000000000))

(check-sat)
(exit)
