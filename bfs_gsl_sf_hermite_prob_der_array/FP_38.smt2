(declare-fun b_ack!204 () (_ BitVec 32))
(declare-fun a_ack!206 () (_ BitVec 32))
(declare-fun c_ack!205 () (_ BitVec 64))
(assert (not (bvslt b_ack!204 #x00000000)))
(assert (not (bvslt a_ack!206 #x00000000)))
(assert (not (= #x00000000 b_ack!204)))
(assert (not (= #x00000001 b_ack!204)))
(assert (not (= #x00000000 a_ack!206)))
(assert (= #x00000001 a_ack!206))
(assert (not (bvslt b_ack!204 #x00000000)))
(assert (not (= #x00000000 b_ack!204)))
(assert (not (= #x00000001 b_ack!204)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!205) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
