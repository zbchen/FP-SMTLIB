(declare-fun x_ack!8512 () (_ BitVec 64))
(declare-fun nu1_ack!8510 () (_ BitVec 64))
(declare-fun nu2_ack!8511 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!8512) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!8512) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8510) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8511) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!8512) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!8512) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!8512) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
