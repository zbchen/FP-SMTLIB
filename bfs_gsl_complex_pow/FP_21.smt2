(declare-fun x1_ack!616 () (_ BitVec 64))
(declare-fun x2_ack!615 () (_ BitVec 64))
(declare-fun y1_ack!614 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!616) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!615) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!615) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!616))
        (fp.abs ((_ to_fp 11 53) y1_ack!614))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!616) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
