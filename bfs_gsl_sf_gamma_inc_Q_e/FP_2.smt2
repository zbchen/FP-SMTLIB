(declare-fun a_ack!4 () (_ BitVec 64))
(declare-fun b_ack!3 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
