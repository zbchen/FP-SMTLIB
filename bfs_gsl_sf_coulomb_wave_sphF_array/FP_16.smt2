(declare-fun d_ack!217 () (_ BitVec 64))
(declare-fun a_ack!219 () (_ BitVec 64))
(declare-fun b_ack!216 () (_ BitVec 32))
(declare-fun c_ack!218 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!219) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!217) ((_ to_fp 11 53) #x0024000000000001)))
(assert (bvsle #x00000000 b_ack!216))
(assert (not (bvsle #x00000001 b_ack!216)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!219) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!218))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!218))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
