(declare-fun a_ack!776 () (_ BitVec 32))
(declare-fun b_ack!775 () (_ BitVec 64))
(assert (not (bvslt a_ack!776 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!775) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!776)))
(assert (not (= #x00000001 a_ack!776)))
(assert (not (= #x00000002 a_ack!776)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!775) ((_ to_fp 11 53) #x4008000000000000)))
(assert (bvslt (bvadd #x00000001 a_ack!776) #x00000000))
(assert (fp.eq ((_ to_fp 11 53) b_ack!775) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
