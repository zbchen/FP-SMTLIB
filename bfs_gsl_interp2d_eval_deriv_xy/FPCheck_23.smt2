(declare-fun x1_ack!258 () (_ BitVec 64))
(declare-fun x0_ack!264 () (_ BitVec 64))
(declare-fun y0_ack!259 () (_ BitVec 64))
(declare-fun x_ack!262 () (_ BitVec 64))
(declare-fun y_ack!263 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!261 () (_ BitVec 64))
(declare-fun z0_ack!260 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!264) ((_ to_fp 11 53) x1_ack!258))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!259) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!262) ((_ to_fp 11 53) x0_ack!264))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!262) ((_ to_fp 11 53) x1_ack!258))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!263) ((_ to_fp 11 53) y0_ack!259))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!263) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!262) ((_ to_fp 11 53) x0_ack!264))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!262) ((_ to_fp 11 53) x1_ack!258))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!263) ((_ to_fp 11 53) y0_ack!259))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!263) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW z0_ack!260 z3_ack!261))

(check-sat)
(exit)
