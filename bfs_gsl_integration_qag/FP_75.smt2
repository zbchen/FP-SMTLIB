(declare-fun key_ack!1698 () (_ BitVec 32))
(declare-fun limit_ack!1697 () (_ BitVec 64))
(declare-fun epsabs_ack!1695 () (_ BitVec 64))
(declare-fun epsrel_ack!1696 () (_ BitVec 64))
(assert (not (bvslt key_ack!1698 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1698)))
(assert (= #x00000004 key_ack!1698))
(assert (not (bvult #x00000000000003e8 limit_ack!1697)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1695) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1696)
            ((_ to_fp 11 53) #x3d09000000000000))))

(check-sat)
(exit)
