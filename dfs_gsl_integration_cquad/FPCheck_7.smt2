(declare-fun epsabs_ack!55 () (_ BitVec 64))
(declare-fun epsrel_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!57 () (_ BitVec 64))
(declare-fun b_ack!54 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!55)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!56)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!55) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!56)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!54 a_ack!57))

(check-sat)
(exit)
