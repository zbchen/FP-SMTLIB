(declare-fun b_ack!444 () (_ BitVec 32))
(declare-fun a_ack!446 () (_ BitVec 32))
(declare-fun c_ack!445 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!444 #x00000000)))
(assert (not (bvslt a_ack!446 #x00000000)))
(assert (not (= #x00000000 b_ack!444)))
(assert (not (= #x00000001 b_ack!444)))
(assert (= #x00000000 a_ack!446))
(assert (not (bvslt b_ack!444 #x00000000)))
(assert (not (= #x00000000 b_ack!444)))
(assert (not (= #x00000001 b_ack!444)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!445))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!444))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!445))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!445))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!444))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!445)
                                   ((_ to_fp 11 53) c_ack!445))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!445))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!445))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!445)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!445)
                                   ((_ to_fp 11 53) c_ack!445))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!445)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!445)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!445)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!445)
                                   ((_ to_fp 11 53) c_ack!445))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!445))))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 ((_ to_fp 11 53) c_ack!445))))))
(assert (bvslt #x00000003 b_ack!444))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!445)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!445)
                                   ((_ to_fp 11 53) c_ack!445))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!445))))))
(let ((a!3 (fp.gt a!2
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!445))))))
  (not a!3)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!445)
                                   ((_ to_fp 11 53) c_ack!445))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fd3333333333333)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!445))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!445))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    #x4008000000000000
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3cb0000000000000)))))

(check-sat)
(exit)
