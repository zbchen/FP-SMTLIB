(declare-fun a_ack!274 () (_ BitVec 64))
(declare-fun b_ack!273 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!274) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!273) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!274))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!273))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!274))
       (fp.abs ((_ to_fp 11 53) b_ack!273))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!274))
            (fp.abs ((_ to_fp 11 53) b_ack!273)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!273))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!274 b_ack!273))

(check-sat)
(exit)
