(declare-fun b_ack!217 () (_ BitVec 64))
(declare-fun a_ack!218 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!218) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW b_ack!217 a_ack!218))

(check-sat)
(exit)
