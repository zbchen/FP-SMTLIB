(declare-fun b_ack!381 () (_ BitVec 32))
(declare-fun a_ack!383 () (_ BitVec 32))
(declare-fun c_ack!382 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!381 #x00000000)))
(assert (not (bvslt a_ack!383 b_ack!381)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!382) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!382) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!381)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!382) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!382) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!382))
                           ((_ to_fp 11 53) c_ack!382))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!382))
                           ((_ to_fp 11 53) c_ack!382)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) c_ack!382))
                   ((_ to_fp 11 53) c_ack!382))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbfb999999999999a))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc0000000000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc5555555555555)
                                   (fp.mul roundNearestTiesToEven a!1 a!3))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!4))))))

(check-sat)
(exit)
