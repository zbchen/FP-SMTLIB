(declare-fun a_ack!1336 () (_ BitVec 64))
(declare-fun b_ack!1335 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1335) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) b_ack!1335))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) b_ack!1335)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1336)
               ((_ to_fp 11 53) b_ack!1335))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x4330000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0eb240795ceb2)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1336)))
                   ((_ to_fp 11 53) #x3fb0eb240795ceb2))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!1336)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!1336)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0eb240795ceb2)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1336)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!1336)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fb0eb240795ceb2))))

(check-sat)
(exit)
