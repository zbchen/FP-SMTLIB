(declare-fun limit_ack!258 () (_ BitVec 64))
(declare-fun a_ack!259 () (_ BitVec 64))
(declare-fun b_ack!254 () (_ BitVec 64))
(declare-fun epsabs_ack!256 () (_ BitVec 64))
(declare-fun epsrel_ack!257 () (_ BitVec 64))
(declare-fun c_ack!255 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!258)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) a_ack!259))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!256) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!257)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!257)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!255) ((_ to_fp 11 53) a_ack!259))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!255) ((_ to_fp 11 53) b_ack!254))))

(check-sat)
(exit)
