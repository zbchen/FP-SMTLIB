(declare-fun a_ack!253 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!252 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!253) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!253)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!253)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!252) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!252)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!252)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x40142eb8f3a779b9))

(check-sat)
(exit)
