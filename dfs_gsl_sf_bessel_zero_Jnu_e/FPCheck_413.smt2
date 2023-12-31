(declare-fun a_ack!1711 () (_ BitVec 64))
(declare-fun b_ack!1710 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1711) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1710)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1711) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1710)))
(assert (not (bvule b_ack!1710 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1710)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1711))))
(assert (not (bvule b_ack!1710 #x00000014)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1710)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!1711))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4010000000000000)
                                  ((_ to_fp 11 53) a_ack!1711))
                          ((_ to_fp 11 53) a_ack!1711))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403f000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x403f000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403f000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x403f000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403f000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403f000000000000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x401c000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403f000000000000)
                                   a!1)))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x403f000000000000)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4138324f00000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4157f21d40000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40bb250000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc102c7f800000000)
                                   a!2)
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe3813813813814)
                         a!3)
                 ((_ to_fp 11 53) #x3fe3813813813814))
         a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4138324f00000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4157f21d40000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40bb250000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc102c7f800000000)
                                   a!2)
                           a!1))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4138324f00000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4157f21d40000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40bb250000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc102c7f800000000)
                                   a!2)
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe3813813813814)
                         a!3)
                 a!3)
         ((_ to_fp 11 53) #x3fe3813813813814))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   ((_ to_fp 11 53) #xc1be857454000000))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x41df2cf87d400000)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #xc1be857454000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40f1235000000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1)))
                   ((_ to_fp 11 53) #x3ffa01a01a01a01a))))
  (fp.eq a!4
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40f1235000000000)
                 (fp.mul roundNearestTiesToEven a!3 a!1))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40f1235000000000)
                                  (fp.mul roundNearestTiesToEven a!3 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40f1235000000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40f1235000000000)
                           (fp.mul roundNearestTiesToEven a!3 a!1)))))
  (fp.eq a!4 ((_ to_fp 11 53) #x3ffa01a01a01a01a)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x429e0327e3572400)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x427cd9cda00b5000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x427cd9cda00b5000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1)))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x429e0327e3572400)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x420095bd56500000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc244df3f4fdd0000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4155559440000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc1b11d8c4d000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe2e9e8cd187470)
                         a!4)
                 ((_ to_fp 11 53) #x3fe2e9e8cd187470))
         a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x420095bd56500000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc244df3f4fdd0000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4155559440000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc1b11d8c4d000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))
                           a!1))))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x420095bd56500000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc244df3f4fdd0000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4155559440000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc1b11d8c4d000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe2e9e8cd187470)
                         a!4)
                 a!4)
         ((_ to_fp 11 53) #x3fe2e9e8cd187470)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1711))
                           ((_ to_fp 11 53) a_ack!1711)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1711))
                   ((_ to_fp 11 53) a_ack!1711)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1710)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1711)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403f000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
  (FPCHECK_FMUL_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff5555555555555) a!5))))))

(check-sat)
(exit)
