(declare-fun limit_ack!61 () (_ BitVec 64))
(declare-fun epsabs_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!62 () (_ BitVec 64))
(declare-fun b_ack!59 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!61)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!60)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!59 a_ack!62))

(check-sat)
(exit)
