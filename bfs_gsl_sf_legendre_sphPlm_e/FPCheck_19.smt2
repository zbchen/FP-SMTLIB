(declare-fun b_ack!78 () (_ BitVec 32))
(declare-fun a_ack!80 () (_ BitVec 32))
(declare-fun c_ack!79 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!78 #x00000000)))
(assert (not (bvslt a_ack!80 b_ack!78)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!78)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY c_ack!79 #x4001e3779b97f4a8))

(check-sat)
(exit)
