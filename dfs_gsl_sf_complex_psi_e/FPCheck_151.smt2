(declare-fun a_ack!507 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!506 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!507) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!507))
               ((_ to_fp 11 53) a_ack!507))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!507)))
       ((_ to_fp 11 53) a_ack!507)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!507))
               ((_ to_fp 11 53) #x400921fb54442d18))
       ((_ to_fp 11 53) a_ack!507)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!507))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!507))
               ((_ to_fp 11 53) a_ack!507))
       ((_ to_fp 11 53) #x400921fb54442d18)))
(assert (FPCHECK_FMUL_OVERFLOW #x400921fb54442d18 b_ack!506))

(check-sat)
(exit)
