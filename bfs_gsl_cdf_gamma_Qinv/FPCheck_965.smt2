(declare-fun x_ack!2893 () (_ BitVec 64))
(declare-fun a_ack!2892 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2893)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!2893) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     ((_ to_fp 11 53) a_ack!2892))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!2892))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) a_ack!2892))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2892) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!2892))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!2892))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2892) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2892))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!2892)))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2892) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2892))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2892))))
  (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1) ((_ to_fp 11 53) a_ack!2892))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2892))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2892))))
  (not (fp.leq (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!2892))
               ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2892))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2892))))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2892)))
         ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2892))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2892))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           ((_ to_fp 11 53) #xbfb999999999999a)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!6))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!2892))
                           a!8))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!2892))
            (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!2892)))
    a!9)))))))))))

(check-sat)
(exit)
