(declare-fun limit_ack!4026 () (_ BitVec 64))
(declare-fun epsabs_ack!4031 () (_ BitVec 64))
(declare-fun epsrel_ack!4025 () (_ BitVec 64))
(declare-fun a_ack!4032 () (_ BitVec 64))
(declare-fun x1_ack!4027 () (_ BitVec 64))
(declare-fun x2_ack!4028 () (_ BitVec 64))
(declare-fun x3_ack!4029 () (_ BitVec 64))
(declare-fun b_ack!4030 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!4026)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4031) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4025)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4025)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4027) ((_ to_fp 11 53) a_ack!4032))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4028) ((_ to_fp 11 53) x1_ack!4027))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4029) ((_ to_fp 11 53) x2_ack!4028))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4030) ((_ to_fp 11 53) x3_ack!4029))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4032)
                                   ((_ to_fp 11 53) x1_ack!4027))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
