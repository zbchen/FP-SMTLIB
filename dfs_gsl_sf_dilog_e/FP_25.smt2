(declare-fun a_ack!141 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!141)
                           ((_ to_fp 11 53) a_ack!141))
                   ((_ to_fp 11 53) #x4028000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!141))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!141)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!141)
                           ((_ to_fp 11 53) a_ack!141))
                   ((_ to_fp 11 53) #x4028000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!141))
                           a!1)
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) a_ack!141))))))

(check-sat)
(exit)
