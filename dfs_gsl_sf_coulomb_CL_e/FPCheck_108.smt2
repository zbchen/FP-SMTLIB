(declare-fun a_ack!341 () (_ BitVec 64))
(declare-fun b_ack!340 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!341) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!341))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!340)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!341)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!341)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!341)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #xbff007228b4cd147))
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ffbc8a35d2b114e)))))

(check-sat)
(exit)
