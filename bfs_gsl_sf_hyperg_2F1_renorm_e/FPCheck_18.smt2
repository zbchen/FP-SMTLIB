(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun b_ack!45 () (_ BitVec 64))
(declare-fun c_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!46) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW c_ack!46 #x3ff0000000000000))

(check-sat)
(exit)
