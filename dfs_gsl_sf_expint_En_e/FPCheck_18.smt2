(declare-fun a_ack!72 () (_ BitVec 32))
(declare-fun b_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!72 #x00000000)))
(assert (not (= #x00000000 a_ack!72)))
(assert (not (= #x00000001 a_ack!72)))
(assert (not (= #x00000002 a_ack!72)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_POW b_ack!71 b_ack!71))

(check-sat)
(exit)
