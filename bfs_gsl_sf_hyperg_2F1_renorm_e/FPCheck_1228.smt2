(declare-fun a_ack!6073 () (_ BitVec 64))
(declare-fun b_ack!6071 () (_ BitVec 64))
(declare-fun c_ack!6072 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!6073) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6071) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6072) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6072)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!6072)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!6073)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!6073)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6073)
                       ((_ to_fp 11 53) c_ack!6072))
               ((_ to_fp 11 53) c_ack!6072))
       ((_ to_fp 11 53) a_ack!6073)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!6073)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6073)
                       ((_ to_fp 11 53) c_ack!6072)))
       ((_ to_fp 11 53) c_ack!6072)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6073)
                                   ((_ to_fp 11 53) c_ack!6072))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6073)
                                   ((_ to_fp 11 53) c_ack!6072))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6073)
                                   ((_ to_fp 11 53) c_ack!6072))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FADD_UNDERFLOW a!1 #x4025b71ff2054d90)))

(check-sat)
(exit)
