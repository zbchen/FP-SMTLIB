(declare-fun a_ack!98 () (_ BitVec 64))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!98))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!98))
            ((_ to_fp 11 53) #x3e40000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!98))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!98))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!98)) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
