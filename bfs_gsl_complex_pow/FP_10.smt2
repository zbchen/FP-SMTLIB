(declare-fun x1_ack!253 () (_ BitVec 64))
(declare-fun x2_ack!252 () (_ BitVec 64))
(declare-fun y1_ack!251 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!253) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!252) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!252) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!253))
             (fp.abs ((_ to_fp 11 53) y1_ack!251)))))

(check-sat)
(exit)
