(declare-fun a_ack!448 () (_ BitVec 32))
(declare-fun b_ack!447 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!448 #x00000000)))
(assert (not (= #x00000000 a_ack!448)))
(assert (not (= #x00000001 a_ack!448)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!447))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!448))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!447))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 a_ack!448))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!447)
                                   ((_ to_fp 11 53) b_ack!447))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!447))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (bvslt #x00000003 a_ack!448))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!447)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!447)
                                   ((_ to_fp 11 53) b_ack!447))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!447))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x7fefffffffffffff))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!447)
                                   ((_ to_fp 11 53) b_ack!447))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fd3333333333333)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!447))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!447))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!447))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!447))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   a!2)))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven (fp.abs ((_ to_fp 11 53) b_ack!447)) a!3)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3cb0000000000000)))))))

(check-sat)
(exit)
