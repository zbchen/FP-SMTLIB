(declare-fun d_ack!1400 () (_ BitVec 32))
(declare-fun a_ack!1401 () (_ BitVec 64))
(declare-fun b_ack!1398 () (_ BitVec 64))
(declare-fun c_ack!1399 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!1400 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1398) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1399) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1401)
                    ((_ to_fp 11 53) b_ack!1398))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1401)
                    ((_ to_fp 11 53) c_ack!1399))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1398)
                    ((_ to_fp 11 53) c_ack!1399))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1401) ((_ to_fp 11 53) b_ack!1398))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1398) ((_ to_fp 11 53) c_ack!1399))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1399) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1401)
                                   ((_ to_fp 11 53) b_ack!1398))
                           ((_ to_fp 11 53) c_ack!1399))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1401))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1398))
                           a!1))))
  (not (fp.gt (fp.abs a!2) (fp.abs a!3))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1401)
                                   ((_ to_fp 11 53) b_ack!1398))
                           ((_ to_fp 11 53) c_ack!1399))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1398))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1399))
                           a!1))))
  (not (fp.gt (fp.abs a!2) (fp.abs a!3))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1401)
                                   ((_ to_fp 11 53) b_ack!1398))
                           ((_ to_fp 11 53) c_ack!1399))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand d_ack!1400 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1399))
                           a!1))))
  (not (fp.lt (fp.abs a!2) a!3)))))
(assert (FPCHECK_FADD_ACCURACY b_ack!1398 #x7ff0000000000001))

(check-sat)
(exit)
