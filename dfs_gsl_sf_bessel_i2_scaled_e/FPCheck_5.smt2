(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!11))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!11)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!11 a_ack!11))

(check-sat)
(exit)
