(declare-fun a_ack!145 () (_ BitVec 32))
(declare-fun b_ack!144 () (_ BitVec 64))
(assert (not (bvslt a_ack!145 #x00000000)))
(assert (not (= #x00000000 a_ack!145)))
(assert (= #x00000001 a_ack!145))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!144) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!144) ((_ to_fp 11 53) #xc024000000000000)))

(check-sat)
(exit)
