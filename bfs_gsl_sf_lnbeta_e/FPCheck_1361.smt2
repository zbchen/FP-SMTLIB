(declare-fun a_ack!4108 () (_ BitVec 64))
(declare-fun b_ack!4107 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4107) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4107) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!4107) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) b_ack!4107))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) b_ack!4107)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4108)
               ((_ to_fp 11 53) b_ack!4107))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4108) ((_ to_fp 11 53) #x40c0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4108)
                                   ((_ to_fp 11 53) a_ack!4108)))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!1)
                 ((_ to_fp 11 53) #x3f7a41a41a41a41a))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4108)
                                   ((_ to_fp 11 53) a_ack!4108)))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3f7a41a41a41a41a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4108)
                           ((_ to_fp 11 53) a_ack!4108)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                         a!2)
                 ((_ to_fp 11 53) #xbf5f6ab0d9993c7d))
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4108)
                           ((_ to_fp 11 53) a_ack!4108)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4108)
                           ((_ to_fp 11 53) a_ack!4108)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (FPCHECK_FADD_ACCURACY
    #x3f4b951e2b18ff23
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                    a!2))))))

(check-sat)
(exit)
