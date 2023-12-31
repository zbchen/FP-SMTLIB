(declare-fun t_ack!3768 () (_ BitVec 64))
(declare-fun t1_ack!3769 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!3770 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3769)
                    ((_ to_fp 11 53) t_ack!3768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3769)
                    ((_ to_fp 11 53) t_ack!3768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!3769)
                     ((_ to_fp 11 53) t_ack!3768))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3769)
                    ((_ to_fp 11 53) t_ack!3768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!3768
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fed96c8c31039db)
          ((_ to_fp 11 53) h_ack!3770))))

(check-sat)
(exit)
