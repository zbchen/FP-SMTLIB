(declare-fun a_ack!64 () (_ BitVec 32))
(declare-fun b_ack!63 () (_ BitVec 64))
(assert (not (bvslt a_ack!64 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!63)) ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
