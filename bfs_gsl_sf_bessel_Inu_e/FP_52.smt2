(declare-fun b_ack!761 () (_ BitVec 64))
(declare-fun a_ack!762 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!761) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!762) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!761)
               ((_ to_fp 11 53) b_ack!761))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!762)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!762) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!761) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!761) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!762) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fd0000000000000)
                                  ((_ to_fp 11 53) b_ack!761)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!761))
                           ((_ to_fp 11 53) b_ack!761))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) b_ack!761)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!761))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!761))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!761))
                           ((_ to_fp 11 53) b_ack!761))
                   ((_ to_fp 11 53) b_ack!761))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fd0000000000000)
                 ((_ to_fp 11 53) b_ack!761)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!761))
                           ((_ to_fp 11 53) b_ack!761))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!761))
                           ((_ to_fp 11 53) b_ack!761))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!761))
                           ((_ to_fp 11 53) b_ack!761))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) b_ack!761))
                   ((_ to_fp 11 53) b_ack!761))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
  (fp.eq a!5
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 a!3)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) b_ack!761))
                   ((_ to_fp 11 53) b_ack!761))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!762)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
  (fp.eq a!5
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2))))))))

(check-sat)
(exit)
