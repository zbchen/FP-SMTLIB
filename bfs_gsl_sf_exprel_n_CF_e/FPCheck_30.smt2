(declare-fun a_ack!111 () (_ BitVec 64))
(declare-fun b_ack!110 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!111))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!111))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!110)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!111)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!111)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!111)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!110)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!111))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!110)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!111))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!111))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!110) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!111))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!111))))))
  (FPCHECK_FDIV_ACCURACY a!1 b_ack!110)))

(check-sat)
(exit)
