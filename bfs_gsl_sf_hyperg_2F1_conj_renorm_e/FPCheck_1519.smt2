(declare-fun a_ack!6664 () (_ BitVec 64))
(declare-fun c_ack!6662 () (_ BitVec 64))
(declare-fun d_ack!6663 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!6661 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6664) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!6662)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!6662)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!6662))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!6663))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!6663))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) d_ack!6663) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6664)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6664)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!6661)
                           ((_ to_fp 11 53) b_ack!6661)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6662)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (FPCHECK_FMUL_UNDERFLOW a!2 d_ack!6663))))

(check-sat)
(exit)
