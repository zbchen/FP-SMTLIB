(declare-fun n_ack!487 () (_ BitVec 32))
(declare-fun a_ack!488 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (= #x00000000 (bvsrem n_ack!487 #x00000002))))
(assert (not (= #x00000000 n_ack!487)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!487 #x00000000))
(assert (not (= #x00000000 (bvsrem (bvmul #xffffffff n_ack!487) #x00000002))))
(assert (not (= #x00000000 (bvmul #xffffffff n_ack!487))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!487) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!487) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!487))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!487))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!487))))
(assert (bvslt (bvmul #xffffffff n_ack!487) #x00000046))
(assert (let ((a!1 (bvadd #x00000001
                  (bvmul #x00000002
                         (bvadd #xffffffff (bvmul #xffffffff n_ack!487))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4041000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fd0000000000000)
            (fp.add roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x4022000000000000)))
    #x7ff0000000000001)))))

(check-sat)
(exit)
