(declare-fun a_ack!468 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
