(declare-fun a_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 a_ack!3))

(check-sat)
(exit)
