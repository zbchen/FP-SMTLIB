(declare-fun t_ack!2601 () (_ BitVec 64))
(declare-fun t1_ack!2602 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!2603 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2602)
                    ((_ to_fp 11 53) t_ack!2601))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2602)
                    ((_ to_fp 11 53) t_ack!2601))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!2602)
                     ((_ to_fp 11 53) t_ack!2601))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2602)
                    ((_ to_fp 11 53) t_ack!2601))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fe21360b60a7776 h_ack!2603))

(check-sat)
(exit)
