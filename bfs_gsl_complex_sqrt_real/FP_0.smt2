(declare-fun x_ack!1 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
