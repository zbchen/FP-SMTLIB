(declare-fun key_ack!1992 () (_ BitVec 32))
(declare-fun limit_ack!1991 () (_ BitVec 64))
(declare-fun epsabs_ack!1990 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!1993 () (_ BitVec 64))
(declare-fun b_ack!1989 () (_ BitVec 64))
(assert (not (bvslt key_ack!1992 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1992)))
(assert (= #x00000006 key_ack!1992))
(assert (not (bvult #x00000000000003e8 limit_ack!1991)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1990)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!1989 a_ack!1993))

(check-sat)
(exit)
