(declare-fun d_ack!32 () (_ BitVec 64))
(declare-fun b_ack!31 () (_ BitVec 32))
(declare-fun a_ack!34 () (_ BitVec 64))
(declare-fun c_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!32) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!31))
(assert (not (bvsle #x00000001 b_ack!31)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!34) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!33)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 c_ack!33))

(check-sat)
(exit)
