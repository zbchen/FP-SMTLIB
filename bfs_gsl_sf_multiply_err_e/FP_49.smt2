(declare-fun a_ack!706 () (_ BitVec 64))
(declare-fun c_ack!705 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!706) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!705) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!706))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!705))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!706))
       (fp.abs ((_ to_fp 11 53) c_ack!705))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!706))
       (fp.abs ((_ to_fp 11 53) c_ack!705))))

(check-sat)
(exit)
