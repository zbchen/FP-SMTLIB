(declare-fun a_ack!3578 () (_ BitVec 32))
(declare-fun b_ack!3576 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3577 () (_ BitVec 64))
(assert (not (bvslt a_ack!3578 #x00000000)))
(assert (not (bvslt b_ack!3576 #x00000000)))
(assert (not (= #x00000000 a_ack!3578)))
(assert (not (= #x00000001 a_ack!3578)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3576 a_ack!3578)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3576)))
(assert (bvslt b_ack!3576 a_ack!3578))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3578 b_ack!3576) #x00000001))))
(assert (bvslt b_ack!3576 (bvsub a_ack!3578 b_ack!3576)))
(assert (not (bvslt #x00000000 b_ack!3576)))
(assert (bvsle #x00000001 (bvsub a_ack!3578 b_ack!3576)))
(assert (bvsle #x00000002 (bvsub a_ack!3578 b_ack!3576)))
(assert (bvsle #x00000003 (bvsub a_ack!3578 b_ack!3576)))
(assert (bvsle #x00000004 (bvsub a_ack!3578 b_ack!3576)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3577)
                           ((_ to_fp 11 53) c_ack!3577))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3577)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3577)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!3577)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3577)
                                   a!2)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!1)))))
  (FPCHECK_FSUB_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4010000000000000) a!2))))))

(check-sat)
(exit)
