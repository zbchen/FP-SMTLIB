(declare-fun x_ack!7503 () (_ BitVec 64))
(declare-fun nu1_ack!7501 () (_ BitVec 64))
(declare-fun nu2_ack!7502 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!7503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!7503) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7503) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!7501) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!7502) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!7501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!7502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!7501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!7502) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu2_ack!7502) (CF_floor nu2_ack!7502))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!7501) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!7502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7501)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!7501)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!7501)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7501)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7501)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))

(check-sat)
(exit)
