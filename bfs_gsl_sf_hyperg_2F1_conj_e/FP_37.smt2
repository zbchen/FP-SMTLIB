(declare-fun c_ack!987 () (_ BitVec 64))
(declare-fun d_ack!988 () (_ BitVec 64))
(declare-fun a_ack!989 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!987) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!988))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!987) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!988))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!987) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) d_ack!988) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!989))
            ((_ to_fp 11 53) #x4024000000000000))))

(check-sat)
(exit)
