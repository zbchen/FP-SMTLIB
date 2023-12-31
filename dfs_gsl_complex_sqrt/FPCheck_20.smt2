(declare-fun x_ack!43 () (_ BitVec 64))
(declare-fun y_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!43) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!43))
             (fp.abs ((_ to_fp 11 53) y_ack!42)))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!43) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW y_ack!42 #x7ff0000000000001))

(check-sat)
(exit)
