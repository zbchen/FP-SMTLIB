(declare-fun a_ack!166 () (_ BitVec 64))
(declare-fun b_ack!165 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!166) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!166))
            (fp.abs ((_ to_fp 11 53) b_ack!165)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!166))
            (fp.abs ((_ to_fp 11 53) b_ack!165)))))

(check-sat)
(exit)
