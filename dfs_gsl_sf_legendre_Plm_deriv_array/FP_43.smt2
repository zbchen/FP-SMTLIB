(declare-fun b_ack!870 () (_ BitVec 32))
(declare-fun a_ack!872 () (_ BitVec 32))
(declare-fun c_ack!871 () (_ BitVec 64))
(assert (not (bvslt b_ack!870 #x00000000)))
(assert (not (bvslt a_ack!872 b_ack!870)))
(assert (= #x00000000 b_ack!870))
(assert (not (bvslt a_ack!872 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!871) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!871) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!872)))
(assert (not (= #x00000001 a_ack!872)))
(assert (bvsle #x00000002 a_ack!872))
(assert (bvsle #x00000003 a_ack!872))
(assert (bvsle #x00000004 a_ack!872))
(assert (bvsle #x00000005 a_ack!872))
(assert (bvsle #x00000006 a_ack!872))
(assert (bvsle #x00000007 a_ack!872))

(check-sat)
(exit)
