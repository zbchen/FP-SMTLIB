(declare-fun a_ack!438 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!438) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!438) ((_ to_fp 11 53) #x402e000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!438 #x4024000000000000))

(check-sat)
(exit)
