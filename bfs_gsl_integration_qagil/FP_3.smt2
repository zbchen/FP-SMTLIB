(declare-fun limit_ack!40 () (_ BitVec 64))
(declare-fun epsabs_ack!38 () (_ BitVec 64))
(declare-fun epsrel_ack!39 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!40)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!38) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!39)
            ((_ to_fp 11 53) #x3d09000000000000))))

(check-sat)
(exit)
