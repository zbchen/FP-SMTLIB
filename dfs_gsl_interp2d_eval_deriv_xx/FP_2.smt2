(declare-fun x1_ack!7 () (_ BitVec 64))
(declare-fun x0_ack!11 () (_ BitVec 64))
(declare-fun y0_ack!8 () (_ BitVec 64))
(declare-fun x_ack!9 () (_ BitVec 64))
(declare-fun y_ack!10 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!11) ((_ to_fp 11 53) x1_ack!7))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!8) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!9) ((_ to_fp 11 53) x0_ack!11))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!9) ((_ to_fp 11 53) x1_ack!7))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!10) ((_ to_fp 11 53) y0_ack!8)))

(check-sat)
(exit)
