(declare-fun a_ack!368 () (_ BitVec 64))
(declare-fun b_ack!367 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!367)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!368)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!368) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!367)
                       ((_ to_fp 11 53) a_ack!368))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!367)
                       ((_ to_fp 11 53) a_ack!368)))
       ((_ to_fp 11 53) a_ack!368)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!367)
                                   ((_ to_fp 11 53) a_ack!368))
                           ((_ to_fp 11 53) a_ack!368))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!367)
                                   ((_ to_fp 11 53) a_ack!368))
                           ((_ to_fp 11 53) a_ack!368)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!367)
                  ((_ to_fp 11 53) a_ack!368))
          ((_ to_fp 11 53) a_ack!368))
  #xbfb999999999999a))

(check-sat)
(exit)
