(declare-fun alpha1_ack!2494 () (_ BitVec 64))
(declare-fun beta_ack!2495 () (_ BitVec 64))
(declare-fun mu_ack!2496 () (_ BitVec 32))
(declare-fun nu_ack!2497 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2494)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2495)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2496)))
(assert (= #x00000001 mu_ack!2496))
(assert (= #x00000000 nu_ack!2497))

(check-sat)
(exit)
