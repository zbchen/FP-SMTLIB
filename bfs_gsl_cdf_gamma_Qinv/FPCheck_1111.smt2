(declare-fun x_ack!3187 () (_ BitVec 64))
(declare-fun a_ack!3186 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3187)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3187) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     ((_ to_fp 11 53) a_ack!3186))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3186))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) a_ack!3186))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3186))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3186))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!3186)))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) a_ack!3186)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3186))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!3186)
                          ((_ to_fp 11 53) #xffffffdfdffe0000)))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3186))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          ((_ to_fp 11 53) a_ack!3186)))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3186))))
  (not (fp.leq (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!3186))
               ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3186))))
(let ((a!2 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) a_ack!3186)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3186))))
(let ((a!2 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) a_ack!3186)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!2))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3186) ((_ to_fp 11 53) #x4330000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3186))))
(let ((a!2 (CF_log (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!3186)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!3186))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3186)
                   (fp.sub roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!3186)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.abs a!2)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!3186))))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a!3)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!3186))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!6)
                           a!7))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!3)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3186))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!4)))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!5 (fp.mul roundNearestTiesToEven a!8 a!4))
    a!9)))))))

(check-sat)
(exit)
