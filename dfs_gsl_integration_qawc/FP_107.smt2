(declare-fun limit_ack!5360 () (_ BitVec 64))
(declare-fun a_ack!5361 () (_ BitVec 64))
(declare-fun b_ack!5356 () (_ BitVec 64))
(declare-fun epsabs_ack!5358 () (_ BitVec 64))
(declare-fun epsrel_ack!5359 () (_ BitVec 64))
(declare-fun c_ack!5357 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!5360)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5356) ((_ to_fp 11 53) a_ack!5361))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5358) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5359)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5359)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5357) ((_ to_fp 11 53) a_ack!5361))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5357) ((_ to_fp 11 53) b_ack!5356))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5357))
                   ((_ to_fp 11 53) b_ack!5356))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!5361))
                 ((_ to_fp 11 53) a_ack!5361))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5357))
                   ((_ to_fp 11 53) b_ack!5356))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!5361)))
         ((_ to_fp 11 53) a_ack!5361))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5357))
                           ((_ to_fp 11 53) b_ack!5356))
                   ((_ to_fp 11 53) a_ack!5361))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!5356)
                               ((_ to_fp 11 53) a_ack!5361))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5357))
                           ((_ to_fp 11 53) b_ack!5356))
                   ((_ to_fp 11 53) a_ack!5361))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5356)
                                   ((_ to_fp 11 53) a_ack!5361))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
