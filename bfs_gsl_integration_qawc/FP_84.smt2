(declare-fun limit_ack!2696 () (_ BitVec 64))
(declare-fun a_ack!2697 () (_ BitVec 64))
(declare-fun b_ack!2693 () (_ BitVec 64))
(declare-fun epsabs_ack!2695 () (_ BitVec 64))
(declare-fun c_ack!2694 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!2696)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2693) ((_ to_fp 11 53) a_ack!2697)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2695)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2694) ((_ to_fp 11 53) a_ack!2697))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2694) ((_ to_fp 11 53) b_ack!2693))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2694))
                   ((_ to_fp 11 53) a_ack!2697))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2693))
                 ((_ to_fp 11 53) b_ack!2693))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2694))
                   ((_ to_fp 11 53) a_ack!2697))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2693)))
         ((_ to_fp 11 53) b_ack!2693))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2694))
                           ((_ to_fp 11 53) a_ack!2697))
                   ((_ to_fp 11 53) b_ack!2693))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2697)
                                   ((_ to_fp 11 53) b_ack!2693))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
