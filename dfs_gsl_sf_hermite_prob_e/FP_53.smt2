(declare-fun a_ack!778 () (_ BitVec 32))
(declare-fun b_ack!777 () (_ BitVec 64))
(assert (not (bvslt a_ack!778 #x00000000)))
(assert (not (= #x00000000 a_ack!778)))
(assert (not (= #x00000001 a_ack!778)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!777) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!777))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (bvslt #x00000001 a_ack!778)))

(check-sat)
(exit)
