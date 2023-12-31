(declare-fun c_ack!335 () (_ BitVec 64))
(declare-fun b_ack!334 () (_ BitVec 32))
(declare-fun a_ack!336 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!334)))
(assert (not (= #xffffffff (bvsub a_ack!336 b_ack!334))))
(assert (not (= #xfffffffe (bvsub a_ack!336 b_ack!334))))
(assert (not (= (bvsub #x00000002 b_ack!334)
        (bvadd #x00000002 (bvsub a_ack!336 b_ack!334)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!336 b_ack!334))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!336 b_ack!334))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!334))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!336 b_ack!334)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!336 b_ack!334))))))
(let ((a!3 (fp.abs (fp.sub roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!334))))))
(let ((a!4 (fp.lt (fp.mul roundNearestTiesToEven a!1 a!3)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!335))))))
  (not a!4)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!336 b_ack!334))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!336 b_ack!334))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000)))))
(assert (not (bvslt (bvadd #x00000001 (bvsub a_ack!336 b_ack!334)) #x00000000)))

(check-sat)
(exit)
