(declare-fun c_ack!1384 () (_ BitVec 64))
(declare-fun b_ack!1383 () (_ BitVec 64))
(declare-fun a_ack!1385 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!1385))
                           ((_ to_fp 11 53) a_ack!1385))
                   ((_ to_fp 11 53) a_ack!1385))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!1385))
                           ((_ to_fp 11 53) b_ack!1383)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!1384)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1385)
                                   ((_ to_fp 11 53) a_ack!1385))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1383)))
                   ((_ to_fp 11 53) #x4022000000000000))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
