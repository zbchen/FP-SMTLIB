(declare-fun a_ack!173 () (_ BitVec 32))
(declare-fun b_ack!172 () (_ BitVec 64))
(assert (not (bvslt a_ack!173 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!172) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!172) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!173)))
(assert (not (= #x00000001 a_ack!173)))
(assert (bvsle #x00000002 a_ack!173))
(assert (bvsle #x00000003 a_ack!173))
(assert (bvsle #x00000004 a_ack!173))
(assert (bvsle #x00000005 a_ack!173))

(check-sat)
(exit)
