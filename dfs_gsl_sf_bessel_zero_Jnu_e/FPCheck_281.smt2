(declare-fun a_ack!1213 () (_ BitVec 64))
(declare-fun b_ack!1212 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1213) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1212)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1213) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1212)))
(assert (not (bvule b_ack!1212 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1212)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1213))))
(assert (not (bvule b_ack!1212 #x00000014)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1212)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!1213))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4010000000000000)
          ((_ to_fp 11 53) a_ack!1213))
  a_ack!1213))

(check-sat)
(exit)
