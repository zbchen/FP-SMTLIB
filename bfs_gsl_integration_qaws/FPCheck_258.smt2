(declare-fun alpha1_ack!2018 () (_ BitVec 64))
(declare-fun beta_ack!2019 () (_ BitVec 64))
(declare-fun mu_ack!2020 () (_ BitVec 32))
(declare-fun nu_ack!2021 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2018)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2019)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2020)))
(assert (= #x00000001 mu_ack!2020))
(assert (= #x00000000 nu_ack!2021))
(assert (FPCHECK_FADD_OVERFLOW alpha1_ack!2018 #x3ff0000000000000))

(check-sat)
(exit)
