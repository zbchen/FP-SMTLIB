(declare-fun x1_ack!218 () (_ BitVec 64))
(declare-fun x0_ack!222 () (_ BitVec 64))
(declare-fun y0_ack!219 () (_ BitVec 64))
(declare-fun x_ack!220 () (_ BitVec 64))
(declare-fun y_ack!221 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!222) ((_ to_fp 11 53) x1_ack!218))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!219) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!220) ((_ to_fp 11 53) x0_ack!222))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!220) ((_ to_fp 11 53) x1_ack!218))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!221) ((_ to_fp 11 53) y0_ack!219))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!221) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!220) ((_ to_fp 11 53) x0_ack!222))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!220) ((_ to_fp 11 53) x1_ack!218))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!221) ((_ to_fp 11 53) y0_ack!219))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!221) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
