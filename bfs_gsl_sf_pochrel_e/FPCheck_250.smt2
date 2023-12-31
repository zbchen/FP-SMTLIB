(declare-fun a_ack!661 () (_ BitVec 64))
(declare-fun b_ack!660 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!660))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!661))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!661))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!660))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!660) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!661) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!661) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!661) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!661))
             ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!661) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!661)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4000000000000000)))
    #x0000000000000000))))

(check-sat)
(exit)
