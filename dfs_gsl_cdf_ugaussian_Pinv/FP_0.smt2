(declare-fun P_ack!5 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) P_ack!5) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) P_ack!5) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
