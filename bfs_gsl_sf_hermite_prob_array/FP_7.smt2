(declare-fun a_ack!52 () (_ BitVec 32))
(declare-fun b_ack!51 () (_ BitVec 64))
(assert (not (bvslt a_ack!52 #x00000000)))
(assert (not (= #x00000000 a_ack!52)))
(assert (not (= #x00000001 a_ack!52)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!51))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!52))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!51)) ((_ to_fp 11 53) #x7fefffffffffffff)))

(check-sat)
(exit)
