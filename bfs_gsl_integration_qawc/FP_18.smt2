(declare-fun limit_ack!406 () (_ BitVec 64))
(declare-fun a_ack!407 () (_ BitVec 64))
(declare-fun b_ack!403 () (_ BitVec 64))
(declare-fun epsabs_ack!405 () (_ BitVec 64))
(declare-fun c_ack!404 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!406)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!403) ((_ to_fp 11 53) a_ack!407)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!405)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!404) ((_ to_fp 11 53) a_ack!407)))

(check-sat)
(exit)
