(declare-fun a_ack!973 () (_ BitVec 64))
(declare-fun b_ack!970 () (_ BitVec 64))
(declare-fun c_ack!971 () (_ BitVec 64))
(declare-fun d_ack!972 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!973) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!970) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!971) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!972)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!972) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!972))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!971)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!971)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!971)
                       ((_ to_fp 11 53) b_ack!970))
               ((_ to_fp 11 53) b_ack!970))
       ((_ to_fp 11 53) c_ack!971)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!971)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!971)
                       ((_ to_fp 11 53) b_ack!970)))
       ((_ to_fp 11 53) b_ack!970)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!971)
                                  ((_ to_fp 11 53) b_ack!970)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!971)
                       ((_ to_fp 11 53) a_ack!973))
               ((_ to_fp 11 53) a_ack!973))
       ((_ to_fp 11 53) c_ack!971)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!971)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!971)
                       ((_ to_fp 11 53) a_ack!973)))
       ((_ to_fp 11 53) a_ack!973)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!971)
                                  ((_ to_fp 11 53) a_ack!973)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!973) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!970) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!971) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!973))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!970))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!972) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!972) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!971))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!973 #x0000000000000000))

(check-sat)
(exit)
