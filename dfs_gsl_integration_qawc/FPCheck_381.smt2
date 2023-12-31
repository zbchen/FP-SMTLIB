(declare-fun limit_ack!5816 () (_ BitVec 64))
(declare-fun a_ack!5817 () (_ BitVec 64))
(declare-fun b_ack!5813 () (_ BitVec 64))
(declare-fun epsabs_ack!5815 () (_ BitVec 64))
(declare-fun c_ack!5814 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5816)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5813) ((_ to_fp 11 53) a_ack!5817))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5815)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5814) ((_ to_fp 11 53) a_ack!5817))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5814) ((_ to_fp 11 53) b_ack!5813))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5813)
                       ((_ to_fp 11 53) a_ack!5817))
               ((_ to_fp 11 53) a_ack!5817))
       ((_ to_fp 11 53) b_ack!5813)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5813)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5813)
                       ((_ to_fp 11 53) a_ack!5817)))
       ((_ to_fp 11 53) a_ack!5817)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5814))
                           ((_ to_fp 11 53) b_ack!5813))
                   ((_ to_fp 11 53) a_ack!5817))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5813)
                                   ((_ to_fp 11 53) a_ack!5817))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FINVALID_LOG
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!5813))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!5813))))

(check-sat)
(exit)
