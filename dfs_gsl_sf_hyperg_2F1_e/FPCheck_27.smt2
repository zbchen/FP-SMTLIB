(declare-fun a_ack!137 () (_ BitVec 64))
(declare-fun b_ack!134 () (_ BitVec 64))
(declare-fun c_ack!135 () (_ BitVec 64))
(declare-fun d_ack!136 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!137) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!134) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!135) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!136)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!136) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!136))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!135)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!135)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!135)
                       ((_ to_fp 11 53) b_ack!134))
               ((_ to_fp 11 53) b_ack!134))
       ((_ to_fp 11 53) c_ack!135)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!135)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!135)
                       ((_ to_fp 11 53) b_ack!134)))
       ((_ to_fp 11 53) b_ack!134)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!135)
                                  ((_ to_fp 11 53) b_ack!134)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_OVERFLOW c_ack!135 a_ack!137))

(check-sat)
(exit)
