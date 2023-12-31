(declare-fun a_ack!1107 () (_ BitVec 32))
(declare-fun b_ack!1106 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1107 #x00000000)))
(assert (not (= #x00000000 a_ack!1107)))
(assert (not (= #x00000001 a_ack!1107)))
(assert (= #x00000002 a_ack!1107))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) #x4059000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1106) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 b_ack!1106))

(check-sat)
(exit)
