(declare-fun limit_ack!165 () (_ BitVec 64))
(declare-fun epsabs_ack!170 () (_ BitVec 64))
(declare-fun a_ack!171 () (_ BitVec 64))
(declare-fun x1_ack!166 () (_ BitVec 64))
(declare-fun x2_ack!167 () (_ BitVec 64))
(declare-fun x3_ack!168 () (_ BitVec 64))
(declare-fun b_ack!169 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!165)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!170)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!166) ((_ to_fp 11 53) a_ack!171))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!167) ((_ to_fp 11 53) x1_ack!166))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!168) ((_ to_fp 11 53) x2_ack!167))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!169) ((_ to_fp 11 53) x3_ack!168))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!166 a_ack!171))

(check-sat)
(exit)
