(declare-fun w0_ack!332 () (_ BitVec 64))
(declare-fun w1_ack!329 () (_ BitVec 64))
(declare-fun w2_ack!330 () (_ BitVec 64))
(declare-fun w3_ack!331 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!332) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!330) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!331) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!332) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4028000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!332)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!332))))))
  (FPCHECK_FSUB_ACCURACY
    #x4028000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!1))))

(check-sat)
(exit)
