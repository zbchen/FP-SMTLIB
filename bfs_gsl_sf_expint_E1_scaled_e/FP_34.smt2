(declare-fun a_ack!434 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!434) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!434) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!434) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!434) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!434) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!434) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!434))
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!2)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c4d0dba2a77f762))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c4d0dba2a77f762)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!4)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c9d3fe700b2ae2e))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!5)
                 a!3)
         a!5))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!434))
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!2)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c4d0dba2a77f762))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c4d0dba2a77f762)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!4)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c9d3fe700b2ae2e))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!5)
                 a!5)
         a!3))))))

(check-sat)
(exit)
