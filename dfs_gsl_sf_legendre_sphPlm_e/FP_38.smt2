(declare-fun b_ack!789 () (_ BitVec 32))
(declare-fun a_ack!791 () (_ BitVec 32))
(declare-fun c_ack!790 () (_ BitVec 64))
(assert (not (bvslt b_ack!789 #x00000000)))
(assert (not (bvslt a_ack!791 b_ack!789)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!790) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!790) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!789))
(assert (not (bvslt a_ack!791 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!790) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!790) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!791)))
(assert (not (= #x00000001 a_ack!791)))
(assert (= #x00000002 a_ack!791))

(check-sat)
(exit)
