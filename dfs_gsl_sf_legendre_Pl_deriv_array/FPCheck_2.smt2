(declare-fun a_ack!7 () (_ BitVec 32))
(declare-fun b_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!7 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!7))
(assert (bvsle #x00000000 a_ack!7))
(assert (not (bvsle #x00000001 a_ack!7)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!6 #x3ff0000000000000))

(check-sat)
(exit)
