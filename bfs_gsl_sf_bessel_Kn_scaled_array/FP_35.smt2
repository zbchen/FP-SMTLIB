(declare-fun a_ack!799 () (_ BitVec 32))
(declare-fun b_ack!797 () (_ BitVec 32))
(declare-fun c_ack!798 () (_ BitVec 64))
(assert (not (bvslt a_ack!799 #x00000000)))
(assert (not (bvslt b_ack!797 a_ack!799)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!798) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!797)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!798) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!798) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!798) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!798) ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)
