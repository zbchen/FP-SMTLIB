(declare-fun b_ack!2012 () (_ BitVec 64))
(declare-fun a_ack!2013 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) b_ack!2012) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2013) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2013) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!2013))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!2013))))

(check-sat)
(exit)
