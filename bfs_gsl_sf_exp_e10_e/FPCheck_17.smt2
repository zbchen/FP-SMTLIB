(declare-fun a_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #xc1dfffffffc00000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (FPCHECK_FDIV_ACCURACY a_ack!26 #x40026bb1bbb55516))

(check-sat)
(exit)
