(declare-fun a_ack!2848 () (_ BitVec 32))
(declare-fun b_ack!2847 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2848 #x00000000)))
(assert (not (= #x00000000 a_ack!2848)))
(assert (= #x00000001 a_ack!2848))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2847) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2847) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 b_ack!2847))

(check-sat)
(exit)
