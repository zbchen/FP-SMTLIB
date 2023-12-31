(declare-fun key_ack!1121 () (_ BitVec 32))
(declare-fun limit_ack!1120 () (_ BitVec 64))
(declare-fun epsabs_ack!1118 () (_ BitVec 64))
(declare-fun epsrel_ack!1119 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!1117 () (_ BitVec 64))
(declare-fun a_ack!1122 () (_ BitVec 64))
(assert (not (bvslt key_ack!1121 #x00000001)))
(assert (bvslt #x00000006 key_ack!1121))
(assert (not (bvult #x00000000000003e8 limit_ack!1120)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1118) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1119)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1119)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!1122 b_ack!1117))

(check-sat)
(exit)
