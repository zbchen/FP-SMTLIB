(declare-fun a_ack!671 () (_ BitVec 32))
(declare-fun b_ack!669 () (_ BitVec 32))
(declare-fun c_ack!670 () (_ BitVec 64))
(assert (not (bvslt b_ack!669 a_ack!671)))
(assert (not (bvslt a_ack!671 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!669))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!670))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!670))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!670))
             ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)
