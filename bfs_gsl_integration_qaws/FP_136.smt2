(declare-fun alpha1_ack!4461 () (_ BitVec 64))
(declare-fun beta_ack!4462 () (_ BitVec 64))
(declare-fun mu_ack!4463 () (_ BitVec 32))
(declare-fun nu_ack!4464 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4461)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4462)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!4463))
(assert (not (= #x00000000 nu_ack!4464)))
(assert (= #x00000001 nu_ack!4464))

(check-sat)
(exit)
