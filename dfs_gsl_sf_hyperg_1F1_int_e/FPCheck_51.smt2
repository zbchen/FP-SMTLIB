(declare-fun c_ack!266 () (_ BitVec 64))
(declare-fun b_ack!265 () (_ BitVec 32))
(declare-fun a_ack!267 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!266) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!267 b_ack!265)))
(assert (not (= #x00000000 b_ack!265)))
(assert (not (= #x00000000 a_ack!267)))
(assert (not (bvslt b_ack!265 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!266) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!266) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!267 #x00000000)))
(assert (not (bvslt a_ack!267 #x00000000)))
(assert (not (= a_ack!267 b_ack!265)))
(assert (not (= #x00000001 a_ack!267)))
(assert (not (= b_ack!265 (bvadd #x00000001 a_ack!267))))
(assert (not (= a_ack!267 (bvadd #x00000001 b_ack!265))))
(assert (not (= a_ack!267 (bvadd #x00000002 b_ack!265))))
(assert (not (= b_ack!265 (bvmul #x00000002 a_ack!267))))
(assert (bvslt b_ack!265 #x0000000a))
(assert (bvslt a_ack!267 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!266))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!265)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!267)
                          (fp.abs ((_ to_fp 11 53) c_ack!266))))))
  (not a!1)))
(assert (not (bvslt a_ack!267 b_ack!265)))
(assert (not (bvslt a_ack!267 b_ack!265)))
(assert (not (bvslt a_ack!267 b_ack!265)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!266) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!267)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!265)
                                   ((_ to_fp 11 53) c_ack!266))))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!267)
        (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) c_ack!266))))
(assert (FPCHECK_FSUB_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!267)
  #x3ff0000000000000))

(check-sat)
(exit)
