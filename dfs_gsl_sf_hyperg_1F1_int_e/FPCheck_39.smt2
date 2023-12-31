(declare-fun c_ack!218 () (_ BitVec 64))
(declare-fun b_ack!217 () (_ BitVec 32))
(declare-fun a_ack!219 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!219 b_ack!217)))
(assert (not (= #x00000000 b_ack!217)))
(assert (not (= #x00000000 a_ack!219)))
(assert (not (bvslt b_ack!217 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!219 #x00000000)))
(assert (not (bvslt a_ack!219 #x00000000)))
(assert (not (= a_ack!219 b_ack!217)))
(assert (not (= #x00000001 a_ack!219)))
(assert (not (= b_ack!217 (bvadd #x00000001 a_ack!219))))
(assert (not (= a_ack!219 (bvadd #x00000001 b_ack!217))))
(assert (not (= a_ack!219 (bvadd #x00000002 b_ack!217))))
(assert (not (= b_ack!217 (bvmul #x00000002 a_ack!219))))
(assert (bvslt b_ack!217 #x0000000a))
(assert (bvslt a_ack!219 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!218))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!217)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!219)
                          (fp.abs ((_ to_fp 11 53) c_ack!218))))))
  (not a!1)))
(assert (not (bvslt a_ack!219 b_ack!217)))
(assert (not (bvslt a_ack!219 b_ack!217)))
(assert (not (bvslt a_ack!219 b_ack!217)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!219)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!217)
                                   ((_ to_fp 11 53) c_ack!218))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!219)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!218)))))
(assert (FPCHECK_FSUB_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!217)
  c_ack!218))

(check-sat)
(exit)
