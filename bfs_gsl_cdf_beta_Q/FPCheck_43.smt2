(declare-fun x_ack!182 () (_ BitVec 64))
(declare-fun nu1_ack!180 () (_ BitVec 64))
(declare-fun nu2_ack!181 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!180) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!181) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!180) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  nu2_ack!181
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) nu1_ack!180)
          ((_ to_fp 11 53) nu2_ack!181))))

(check-sat)
(exit)
