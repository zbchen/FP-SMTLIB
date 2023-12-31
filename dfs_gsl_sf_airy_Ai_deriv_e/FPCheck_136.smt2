(declare-fun a_ack!427 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!427) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!427) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!427)
                       ((_ to_fp 11 53) a_ack!427))
               ((_ to_fp 11 53) a_ack!427))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!427) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!427) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!427)
                                   ((_ to_fp 11 53) a_ack!427))
                           ((_ to_fp 11 53) a_ack!427)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.sub roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xbff0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x4000000000000000)))

(check-sat)
(exit)
