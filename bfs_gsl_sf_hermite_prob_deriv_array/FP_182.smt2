(declare-fun b_ack!2137 () (_ BitVec 32))
(declare-fun a_ack!2139 () (_ BitVec 32))
(declare-fun c_ack!2138 () (_ BitVec 64))
(assert (not (bvslt b_ack!2137 #x00000000)))
(assert (not (bvslt a_ack!2139 #x00000000)))
(assert (not (= #x00000000 b_ack!2137)))
(assert (not (= #x00000001 b_ack!2137)))
(assert (not (= #x00000000 a_ack!2139)))
(assert (= #x00000001 a_ack!2139))
(assert (not (bvslt b_ack!2137 #x00000000)))
(assert (not (= #x00000000 b_ack!2137)))
(assert (not (= #x00000001 b_ack!2137)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2138))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!2137))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2138))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!2137))

(check-sat)
(exit)
