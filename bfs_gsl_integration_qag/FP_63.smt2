(declare-fun key_ack!1406 () (_ BitVec 32))
(declare-fun limit_ack!1405 () (_ BitVec 64))
(declare-fun epsabs_ack!1404 () (_ BitVec 64))
(assert (not (bvslt key_ack!1406 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1406)))
(assert (= #x00000003 key_ack!1406))
(assert (not (bvult #x00000000000003e8 limit_ack!1405)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1404)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
