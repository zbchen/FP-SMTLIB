(declare-fun b_ack!849 () (_ BitVec 64))
(declare-fun a_ack!851 () (_ BitVec 32))
(declare-fun c_ack!850 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!849) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!851 #x00000000)))
(assert (not (= #x00000000 a_ack!851)))
(assert (not (= #x00000001 a_ack!851)))
(assert (not (= #x00000002 a_ack!851)))
(assert (not (= #x00000003 a_ack!851)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!849) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!850) ((_ to_fp 11 53) #xbff0000000000000))))

(check-sat)
(exit)
