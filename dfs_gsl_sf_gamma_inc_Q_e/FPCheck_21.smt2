(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun b_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!64)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!65)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) b_ack!64)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!65)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!65)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!65)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
