(declare-fun b_ack!3037 () (_ BitVec 64))
(declare-fun a_ack!3038 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3037) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3037) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!3038) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!3037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!3038))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!3037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!3037)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!3037)))
                  ((_ to_fp 11 53) #x403205966f2b4f12))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3037))))))
  (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  (fp.abs a!1)
                  ((_ to_fp 11 53) #x0010000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3037))))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0010000000000000)))))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvadd #x00000001 a_ack!3038) #x00000001))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3037))))))
  (FPCHECK_FMUL_OVERFLOW
    (ite a!1 #xbff0000000000000 #x3ff0000000000000)
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2))))

(check-sat)
(exit)
