(declare-fun c_ack!233 () (_ BitVec 64))
(declare-fun a_ack!234 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!233) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!234 #xffffffff)))
(assert (= #xffffffff a_ack!234))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!233) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!233) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 c_ack!233))

(check-sat)
(exit)
