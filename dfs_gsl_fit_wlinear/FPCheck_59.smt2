(declare-fun w0_ack!221 () (_ BitVec 64))
(declare-fun w1_ack!218 () (_ BitVec 64))
(declare-fun w2_ack!219 () (_ BitVec 64))
(declare-fun w3_ack!220 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!218) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!219) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!220) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!218) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  w1_ack!218
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w1_ack!218))))

(check-sat)
(exit)
