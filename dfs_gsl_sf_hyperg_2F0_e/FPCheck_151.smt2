(declare-fun c_ack!768 () (_ BitVec 64))
(declare-fun a_ack!769 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!767 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) c_ack!768) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) c_ack!768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!769) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) c_ack!768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!769)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!769)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!769)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!769)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) c_ack!768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) a_ack!769))
                ((_ to_fp 11 53) b_ack!767))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!769) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!769) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!769)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!769)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!769))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   ((_ to_fp 11 53) b_ack!767))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           a!1)
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!769))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   ((_ to_fp 11 53) b_ack!767))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           a!1))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
  (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fefae147ae147ae)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) c_ack!768))))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!769))
                 (fp.abs a!1))
         a!2)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!769) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!769)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!769)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_floor (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3d4f400000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!769) a!1)
                 ((_ to_fp 11 53) a_ack!769))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!769) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!769))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!769)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!769)
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!769)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!3 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!769) a!1))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!769))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!769))
                           ((_ to_fp 11 53) b_ack!767)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!769)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!769)
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!769) a!1))
         (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!769) a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #xbff0000000000000)
          ((_ to_fp 11 53) c_ack!768))))

(check-sat)
(exit)
