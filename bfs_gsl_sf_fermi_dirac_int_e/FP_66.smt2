(declare-fun a_ack!926 () (_ BitVec 32))
(declare-fun b_ack!925 () (_ BitVec 64))
(assert (not (bvslt a_ack!926 #xffffffff)))
(assert (not (= #xffffffff a_ack!926)))
(assert (not (= #x00000000 a_ack!926)))
(assert (not (= #x00000001 a_ack!926)))
(assert (not (= #x00000002 a_ack!926)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!925) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
