(declare-fun a_ack!1229 () (_ BitVec 64))
(declare-fun b_ack!1228 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1229) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1228)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1228)))
(assert (not (bvule b_ack!1228 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1228)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1229))))
(assert (not (bvule b_ack!1228 #x00000014)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1228)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!1229))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1228)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1229)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4020000000000000)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x400921fb54442d18)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4020000000000000)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x400921fb54442d18))))))

(check-sat)
(exit)
