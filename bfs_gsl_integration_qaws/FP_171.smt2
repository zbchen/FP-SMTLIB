(declare-fun alpha1_ack!5681 () (_ BitVec 64))
(declare-fun beta_ack!5682 () (_ BitVec 64))
(declare-fun mu_ack!5683 () (_ BitVec 32))
(declare-fun nu_ack!5684 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!5681)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!5682)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!5683))
(assert (not (= #x00000000 nu_ack!5684)))
(assert (= #x00000001 nu_ack!5684))

(check-sat)
(exit)
