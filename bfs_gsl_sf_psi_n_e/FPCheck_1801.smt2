(declare-fun a_ack!4768 () (_ BitVec 32))
(declare-fun b_ack!4767 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 a_ack!4768)))
(assert (not (= #x00000001 a_ack!4768)))
(assert (not (bvslt a_ack!4768 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4767) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4767) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4768)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_log b_ack!4767))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4768)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_log b_ack!4767))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x404b000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x403b000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x403b000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!4767))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4768)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!4767))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb5555555555555)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4768)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!16 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!3
                                   (fp.add roundNearestTiesToEven a!15 a!3)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!16)))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf56c16c16c16c17)
                         a!2)
                 ((_ to_fp 11 53) #xbf56c16c16c16c17))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf56c16c16c16c17)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #xbf56c16c16c16c17)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!4767))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4768)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!4767))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4768)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!4768)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14))
      (a!18 (fp.div roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!4767))
                           a!1))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!4767))
                            a!1))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!13 a!15)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf56c16c16c16c17)
                    a!17)
            a!18)))))))))))))))

(check-sat)
(exit)
