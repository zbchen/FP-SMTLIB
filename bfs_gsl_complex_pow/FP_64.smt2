(declare-fun x1_ack!2239 () (_ BitVec 64))
(declare-fun x2_ack!2237 () (_ BitVec 64))
(declare-fun y2_ack!2238 () (_ BitVec 64))
(declare-fun y1_ack!2236 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!2237) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!2238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2237) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!2239))
             (fp.abs ((_ to_fp 11 53) y1_ack!2236)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2239) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
