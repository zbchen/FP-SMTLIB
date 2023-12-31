(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!1122 () (_ BitVec 64))
(declare-fun c_ack!1121 () (_ BitVec 32))
(declare-fun b_ack!1120 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (not (fp.lt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      (fp.mul roundNearestTiesToEven a!2 a!2))
              ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!1121 #x00000007)))
       #x0000000000000011))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (not (fp.lt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      (fp.mul roundNearestTiesToEven a!2 a!2))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (not (fp.lt a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  (fp.mul roundNearestTiesToEven a!2 a!2))
                          a!3)
                  ((_ to_fp 11 53) #x0034000000000000))))
  (not a!4))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  (fp.mul roundNearestTiesToEven a!2 a!2))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0034000000000000))))
  (not a!3)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!3
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0034000000000000)))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (fp.gt (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.mul roundNearestTiesToEven a!2 a!2))
         a!3)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (not (fp.gt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      (fp.mul roundNearestTiesToEven a!2 a!2))
              ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2)))
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!3)
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!5))
                  (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!6)))))
  (not a!7))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!3)
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         a!5))
         (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         a!6)))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!6 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand c_ack!1121 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!3)
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!5))
                  a!6)))
  (not a!7))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!3
                         ((_ to_fp 11 53) #x4007057a866c7f8c))
                 a!3)
         ((_ to_fp 11 53) #x4007057a866c7f8c))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!3
                         ((_ to_fp 11 53) #x4007057a866c7f8c))
                 ((_ to_fp 11 53) #x4007057a866c7f8c))
         a!3)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3fef057a866c7f8c))
                 a!5)
         ((_ to_fp 11 53) #x3fef057a866c7f8c)))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3fef057a866c7f8c))
                 ((_ to_fp 11 53) #x3fef057a866c7f8c))
         a!5))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3)))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq a!7 a!3))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3)))
  (fp.eq (fp.sub roundNearestTiesToEven a!6 a!3)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3fef057a866c7f8c))
                 ((_ to_fp 11 53) #x4008000000000000)))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq a!7
         (fp.mul roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x4007057a866c7f8c))
                 ((_ to_fp 11 53) #x3fd0000000000000))))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (fp.eq a!7
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3fef057a866c7f8c))
                 ((_ to_fp 11 53) #x4008000000000000))))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (not (fp.eq a!6 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (not (fp.eq a!8 a!6))))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (not (fp.eq (fp.abs a!7) ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven a!6 a!7)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3fef057a866c7f8c))
                 ((_ to_fp 11 53) #x4008000000000000))))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!10 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!7))
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!9)))))
  (not a!10)))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         a!7))
         (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         a!9))))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand c_ack!1121 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         a!7))
         a!8))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3fef057a866c7f8c))
                            ((_ to_fp 11 53) #x4008000000000000))
                    ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3fef057a866c7f8c))
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!7)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!9)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!12)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!12))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!10 a!13)
                 a!13)
         a!10)))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3fef057a866c7f8c))
                            ((_ to_fp 11 53) #x4008000000000000))
                    ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3fef057a866c7f8c))
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!7)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!9)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!12)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!12))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!10
                 (fp.sub roundNearestTiesToEven a!10 a!13))
         a!13)))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1122)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1122)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x4007057a866c7f8c))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1120)
                                   ((_ to_fp 11 53) b_ack!1120))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4007057a866c7f8c))
                           ((_ to_fp 11 53) #x3fd0000000000000))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3fef057a866c7f8c))
                            ((_ to_fp 11 53) #x4008000000000000))
                    ((_ to_fp 11 53) #x3fef057a866c7f8c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fef057a866c7f8c))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3fef057a866c7f8c))
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!7)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!11)))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fa5555555555555) a!12)
    #x3fb999999999999a)))))))))

(check-sat)
(exit)
