(declare-fun x_ack!389 () (_ BitVec 64))
(declare-fun nu1_ack!387 () (_ BitVec 64))
(declare-fun nu2_ack!388 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!389) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!389) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!387) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!388) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!388) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!387) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!388) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!387) ((_ to_fp 11 53) nu2_ack!388)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!387) ((_ to_fp 11 53) nu2_ack!388))))
(assert (FPCHECK_FDIV_OVERFLOW nu2_ack!388 nu1_ack!387))

(check-sat)
(exit)
