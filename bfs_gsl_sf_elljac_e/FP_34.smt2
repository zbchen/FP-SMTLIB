(declare-fun b_ack!645 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!646 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!645))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!645))
            ((_ to_fp 11 53) #x3cc0000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!645)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cc0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!646)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))))
      (a!2 (fp.abs (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!646)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
  (not (fp.lt a!1 a!2))))

(check-sat)
(exit)
