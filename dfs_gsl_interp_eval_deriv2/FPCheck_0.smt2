(declare-fun xx_ack!2 () (_ BitVec 64))
(declare-fun x0_ack!3 () (_ BitVec 64))
(declare-fun x1_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!2) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!2) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!2) ((_ to_fp 11 53) x0_ack!3))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!2) ((_ to_fp 11 53) x1_ack!1))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!1 x0_ack!3))

(check-sat)
(exit)
