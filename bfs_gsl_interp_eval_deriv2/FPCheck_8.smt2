(declare-fun xx_ack!58 () (_ BitVec 64))
(declare-fun x0_ack!59 () (_ BitVec 64))
(declare-fun x1_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x2_ack!57 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!58) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!58) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!58) ((_ to_fp 11 53) x0_ack!59))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!58) ((_ to_fp 11 53) x1_ack!56)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!56) ((_ to_fp 11 53) xx_ack!58))))
(assert (FPCHECK_FSUB_ACCURACY x2_ack!57 x1_ack!56))

(check-sat)
(exit)
