(declare-fun x_hi_ack!1926 () (_ BitVec 64))
(declare-fun x_lo_ack!1929 () (_ BitVec 64))
(declare-fun epsrel_ack!1928 () (_ BitVec 64))
(declare-fun epsabs_ack!1927 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!1929) ((_ to_fp 11 53) x_hi_ack!1926))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!1929)
                       ((_ to_fp 11 53) x_hi_ack!1926))
               ((_ to_fp 11 53) x_lo_ack!1929))
       ((_ to_fp 11 53) x_hi_ack!1926)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!1929)
                       ((_ to_fp 11 53) x_hi_ack!1926))
               ((_ to_fp 11 53) x_hi_ack!1926))
       ((_ to_fp 11 53) x_lo_ack!1929)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!2 a!3)))))
(assert (let ((a!1 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!1926))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!1926))
                 a!1)
         ((_ to_fp 11 53) x_hi_ack!1926))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_hi_ack!1926))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!1926))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!1926))
                 ((_ to_fp 11 53) x_hi_ack!1926))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc014000000000000))
                 a!1)
         ((_ to_fp 11 53) #xc014000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc014000000000000))
                 ((_ to_fp 11 53) #xc014000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!2 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.lt (fp.abs (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc014000000000000)))
         (fp.abs (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #xc014000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929))))))
(let ((a!2 (fp.leq a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ca0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_lo_ack!1929))))))
  (not a!2))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_hi_ack!1926)
                                  ((_ to_fp 11 53) x_lo_ack!1929)))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ca0000000000000)
                          (fp.abs ((_ to_fp 11 53) x_lo_ack!1929))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929))))
(let ((a!3 (fp.leq (fp.abs (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xc014000000000000)))
                   (fp.abs (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc014000000000000))))))
  (not a!3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!3)
                 a!3)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!3))
         a!3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc014000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #xc014000000000000))))))
  (not (fp.gt a!4 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc014000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #xc014000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ca0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_lo_ack!1929)))
                   a!4))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           a!4))))
  (not (fp.lt (fp.sub roundNearestTiesToEven
                      (fp.mul roundNearestTiesToEven a!1 a!4)
                      (fp.abs a!5))
              a!6))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!4)))
         a!5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.gt a!5
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ca0000000000000)
                 (fp.abs ((_ to_fp 11 53) x_lo_ack!1929))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #xc014000000000000))
                 a!6)
         ((_ to_fp 11 53) #xc014000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #xc014000000000000))
                 ((_ to_fp 11 53) #xc014000000000000))
         a!6))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
(let ((a!7 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!6
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!8 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!6
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!7 a!8))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!6
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      a!6
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.lt a!5 ((_ to_fp 11 53) x_hi_ack!1926))))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1928)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!1927)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (not (fp.gt a!5 ((_ to_fp 11 53) x_hi_ack!1926)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (not (fp.gt a!5 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.lt a!5 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) x_hi_ack!1926)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) x_hi_ack!1926)
                         a!5)
                 a!5)
         ((_ to_fp 11 53) x_hi_ack!1926))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x_hi_ack!1926)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) x_hi_ack!1926)
                         a!5))
         a!5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_hi_ack!1926)
                                  a!5))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) epsabs_ack!1927)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) epsrel_ack!1928)
                                  ((_ to_fp 11 53) #x0000000000000000))))))
  (not a!6))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!6
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      a!6
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
(let ((a!7 (fp.lt (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  (fp.abs (fp.add roundNearestTiesToEven
                                  a!6
                                  ((_ to_fp 11 53) #xc014000000000000))))))
  (not a!7)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!6
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
  (not (fp.leq a!6
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ca0000000000000)
                       (fp.abs a!5)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_hi_ack!1926)
                                  ((_ to_fp 11 53) x_lo_ack!1929)))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ca0000000000000)
                          (fp.abs a!5)))))
  (not a!6))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (fp.leq (fp.abs (fp.add roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #xc014000000000000)))
          (fp.abs (fp.add roundNearestTiesToEven
                          a!6
                          ((_ to_fp 11 53) #xc014000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
  (fp.gt a!6
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ca0000000000000)
                 (fp.abs a!5))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!7
                         ((_ to_fp 11 53) #xc014000000000000))
                 a!7)
         ((_ to_fp 11 53) #xc014000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!7
                         ((_ to_fp 11 53) #xc014000000000000))
                 ((_ to_fp 11 53) #xc014000000000000))
         a!7)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
(let ((a!8 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!7
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!9 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!7
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!8 a!9)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!7
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!7
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
  (not (fp.lt a!6 a!5)))))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1928)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!1927)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
  (not (fp.gt a!5 a!6)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (not (fp.gt a!5 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.lt a!5 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
  (not (fp.lt a!6 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven a!6 a!5))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) epsabs_ack!1927)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) epsrel_ack!1928)
                                  ((_ to_fp 11 53) #x0000000000000000))))))
  (not a!7)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!7
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!6)))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!7
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   ((_ to_fp 11 53) x_lo_ack!1929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1929))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1929)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1926))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1926))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1929)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1926)
                                   a!5)))))
  (FPCHECK_FSUB_OVERFLOW a!6 a!5))))))

(check-sat)
(exit)
