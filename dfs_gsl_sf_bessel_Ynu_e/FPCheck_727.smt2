(declare-fun b_ack!2111 () (_ BitVec 64))
(declare-fun a_ack!2112 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2111) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2112) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2111) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!2111))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!2112))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2112)
                       ((_ to_fp 11 53) a_ack!2112))
               ((_ to_fp 11 53) a_ack!2112))
       ((_ to_fp 11 53) a_ack!2112)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2112)
                       ((_ to_fp 11 53) a_ack!2112))
               ((_ to_fp 11 53) a_ack!2112))
       ((_ to_fp 11 53) a_ack!2112)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2112)
                                   ((_ to_fp 11 53) a_ack!2112))
                           ((_ to_fp 11 53) a_ack!2112)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2112)
                                   ((_ to_fp 11 53) a_ack!2112))
                           ((_ to_fp 11 53) a_ack!2112)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2112)
                                   ((_ to_fp 11 53) a_ack!2112))
                           ((_ to_fp 11 53) a_ack!2112)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 a!1)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) a_ack!2112)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2112))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2112))
                 a!2)
         ((_ to_fp 11 53) a_ack!2112)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2112)
                           ((_ to_fp 11 53) a_ack!2112))
                   ((_ to_fp 11 53) a_ack!2112))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2112))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2112))
                 ((_ to_fp 11 53) a_ack!2112))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2111)
                                   ((_ to_fp 11 53) a_ack!2112)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2111)
                           ((_ to_fp 11 53) a_ack!2112)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2111)
                                   ((_ to_fp 11 53) a_ack!2112))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2111)
                 ((_ to_fp 11 53) a_ack!2112)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2111)
                                   ((_ to_fp 11 53) a_ack!2112))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2111)
               ((_ to_fp 11 53) a_ack!2112))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2111)
                           ((_ to_fp 11 53) a_ack!2112))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2111)
                           ((_ to_fp 11 53) a_ack!2112)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2111)
                           ((_ to_fp 11 53) a_ack!2112))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2111)
                           ((_ to_fp 11 53) a_ack!2112)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6869c2f67339c)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2111)
                                   ((_ to_fp 11 53) a_ack!2112))))))
(let ((a!2 (CF_pow (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fda1a70bd9cce71)))
                   #x3fe5555555555555)))
  (FPCHECK_FDIV_OVERFLOW a!2 #x3fc54b0d0ce021f4))))

(check-sat)
(exit)
