(declare-fun a_ack!86 () (_ BitVec 64))
(declare-fun b_ack!83 () (_ BitVec 64))
(declare-fun c_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!85 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!83) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!84) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW d_ack!85 #x3ff0000000000000))

(check-sat)
(exit)
