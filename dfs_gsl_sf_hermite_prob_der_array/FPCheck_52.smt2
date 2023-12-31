(declare-fun b_ack!300 () (_ BitVec 32))
(declare-fun a_ack!302 () (_ BitVec 32))
(declare-fun c_ack!301 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!300 #x00000000)))
(assert (not (bvslt a_ack!302 #x00000000)))
(assert (not (= #x00000000 b_ack!300)))
(assert (not (= #x00000001 b_ack!300)))
(assert (= #x00000000 a_ack!302))
(assert (not (bvslt b_ack!300 #x00000000)))
(assert (not (= #x00000000 b_ack!300)))
(assert (not (= #x00000001 b_ack!300)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!301) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!301))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!300))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!301))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!301))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!300))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!301)
                                   ((_ to_fp 11 53) c_ack!301))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!301))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!301))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 c_ack!301))

(check-sat)
(exit)
