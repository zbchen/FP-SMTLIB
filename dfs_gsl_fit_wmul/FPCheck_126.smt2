(declare-fun w0_ack!557 () (_ BitVec 64))
(declare-fun w1_ack!554 () (_ BitVec 64))
(declare-fun w2_ack!555 () (_ BitVec 64))
(declare-fun w3_ack!556 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!557) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!554) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!556) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!557) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!554) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!556) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!557) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!554) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!554)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w1_ack!554)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!1))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!1))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!1)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!4)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!2 a!5)
                   (fp.add roundNearestTiesToEven a!6 a!7))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!1)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    a!1))
                    a!9)))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven a!8 a!3)))))
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) w1_ack!554) a!11)
            a!11))))))))))

(check-sat)
(exit)
