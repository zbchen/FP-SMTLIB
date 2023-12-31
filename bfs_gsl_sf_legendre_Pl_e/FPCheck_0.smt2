(declare-fun a_ack!10 () (_ BitVec 32))
(declare-fun b_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!10 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!10)))
(assert (not (= #x00000001 a_ack!10)))
(assert (= #x00000002 a_ack!10))
(assert (FPCHECK_FMUL_OVERFLOW #x4008000000000000 b_ack!9))

(check-sat)
(exit)
