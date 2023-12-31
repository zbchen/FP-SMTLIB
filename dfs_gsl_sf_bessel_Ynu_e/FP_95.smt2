(declare-fun b_ack!2021 () (_ BitVec 64))
(declare-fun a_ack!2022 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!2021))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!2022))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2022))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2022)
                       ((_ to_fp 11 53) a_ack!2022))
               ((_ to_fp 11 53) a_ack!2022))
       ((_ to_fp 11 53) a_ack!2022)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2022))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2022)
                       ((_ to_fp 11 53) a_ack!2022))
               ((_ to_fp 11 53) a_ack!2022))
       ((_ to_fp 11 53) a_ack!2022)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2022)
                                   ((_ to_fp 11 53) a_ack!2022))
                           ((_ to_fp 11 53) a_ack!2022)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2022)
                                   ((_ to_fp 11 53) a_ack!2022))
                           ((_ to_fp 11 53) a_ack!2022)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2022)
                                   ((_ to_fp 11 53) a_ack!2022))
                           ((_ to_fp 11 53) a_ack!2022)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 a!1)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) a_ack!2022)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2022))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2022))
                 a!2)
         ((_ to_fp 11 53) a_ack!2022)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2022))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2022)
                           ((_ to_fp 11 53) a_ack!2022))
                   ((_ to_fp 11 53) a_ack!2022))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2022))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2022))
                 ((_ to_fp 11 53) a_ack!2022))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2021)
                                   ((_ to_fp 11 53) a_ack!2022)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2021)
                           ((_ to_fp 11 53) a_ack!2022)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2021)
                                   ((_ to_fp 11 53) a_ack!2022))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2021)
                 ((_ to_fp 11 53) a_ack!2022)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2021)
                                   ((_ to_fp 11 53) a_ack!2022))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))

(check-sat)
(exit)
