(declare-fun c_ack!269 () (_ BitVec 64))
(declare-fun b_ack!268 () (_ BitVec 64))
(declare-fun a_ack!270 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!268))
            (fp.abs ((_ to_fp 11 53) c_ack!269)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!270))
            (fp.abs ((_ to_fp 11 53) c_ack!269)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!268))
            (fp.abs ((_ to_fp 11 53) c_ack!269)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!269))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
