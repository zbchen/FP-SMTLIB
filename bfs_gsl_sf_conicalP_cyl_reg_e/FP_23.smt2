(declare-fun c_ack!428 () (_ BitVec 64))
(declare-fun a_ack!429 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!429 #xffffffff)))
(assert (not (= #xffffffff a_ack!429)))
(assert (not (= #x00000000 a_ack!429)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
