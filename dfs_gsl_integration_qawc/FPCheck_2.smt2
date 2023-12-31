(declare-fun limit_ack!33 () (_ BitVec 64))
(declare-fun a_ack!34 () (_ BitVec 64))
(declare-fun b_ack!29 () (_ BitVec 64))
(declare-fun epsabs_ack!31 () (_ BitVec 64))
(declare-fun epsrel_ack!32 () (_ BitVec 64))
(declare-fun c_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!33)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!29) ((_ to_fp 11 53) a_ack!34))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!31) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!32)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!32)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!30) ((_ to_fp 11 53) a_ack!34))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!30) ((_ to_fp 11 53) b_ack!29))))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 c_ack!30))

(check-sat)
(exit)
