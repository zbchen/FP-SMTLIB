(declare-fun a_ack!1019 () (_ BitVec 32))
(declare-fun b_ack!1017 () (_ BitVec 32))
(declare-fun c_ack!1018 () (_ BitVec 64))
(assert (not (bvslt a_ack!1019 #x00000000)))
(assert (not (bvslt b_ack!1017 a_ack!1019)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1018) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1017))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1018) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1018) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1018) ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)
