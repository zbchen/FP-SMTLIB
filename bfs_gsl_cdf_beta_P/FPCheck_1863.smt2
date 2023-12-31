(declare-fun x_ack!8567 () (_ BitVec 64))
(declare-fun nu1_ack!8565 () (_ BitVec 64))
(declare-fun nu2_ack!8566 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!8567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!8567) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!8567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!8567) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) nu2_ack!8566)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) nu2_ack!8566))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!8566)
               ((_ to_fp 11 53) nu1_ack!8565))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!8565)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8565) ((_ to_fp 11 53) #x4330000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) nu1_ack!8565))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) nu2_ack!8566)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!8566) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 nu2_ack!8566))

(check-sat)
(exit)
