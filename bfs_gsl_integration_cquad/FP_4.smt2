(declare-fun epsabs_ack!39 () (_ BitVec 64))
(declare-fun epsrel_ack!40 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!39)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!40)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!39)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
