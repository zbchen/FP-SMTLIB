(declare-fun c_ack!2963 () (_ BitVec 64))
(declare-fun b_ack!2962 () (_ BitVec 32))
(declare-fun a_ack!2964 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2963) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!2964 b_ack!2962)))
(assert (not (= #x00000000 b_ack!2962)))
(assert (not (= #x00000000 a_ack!2964)))
(assert (not (bvslt b_ack!2962 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2963) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2963) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!2964 #x00000000)))
(assert (not (bvslt a_ack!2964 #x00000000)))
(assert (not (= a_ack!2964 b_ack!2962)))
(assert (not (= #x00000001 a_ack!2964)))
(assert (not (= b_ack!2962 (bvadd #x00000001 a_ack!2964))))
(assert (not (= a_ack!2964 (bvadd #x00000001 b_ack!2962))))
(assert (not (= a_ack!2964 (bvadd #x00000002 b_ack!2962))))
(assert (not (= b_ack!2962 (bvmul #x00000002 a_ack!2964))))
(assert (bvslt b_ack!2962 #x0000000a))
(assert (bvslt a_ack!2964 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2963))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2962)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2964)
                          (fp.abs ((_ to_fp 11 53) c_ack!2963))))))
  (not a!1)))
(assert (not (bvslt a_ack!2964 b_ack!2962)))
(assert (not (bvslt a_ack!2964 b_ack!2962)))
(assert (not (bvslt a_ack!2964 b_ack!2962)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2963) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2964)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2962)
                                   ((_ to_fp 11 53) c_ack!2963))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2964)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!2963)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
  (bvslt b_ack!2962 (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   a!3
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (fp.eq a!4 a!2))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
  (fp.eq (fp.div roundNearestTiesToEven a!3 a!2)
         ((_ to_fp 11 53)
           roundNearestTiesToEven
           (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2963)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2963))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2963)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2963)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!5 a!6)
                 a!6)
         a!5))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2963)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!2963))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2963)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (CF_exp c_ack!2963)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!5
                 (fp.sub roundNearestTiesToEven a!5 a!6))
         a!6))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
  (bvslt b_ack!2962 (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
  (bvslt b_ack!2962 (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
  (bvslt b_ack!2962 (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2963)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              ((_ fp.to_sbv 32) roundTowardZero a!1))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!13))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!16))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!20)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xbff0000000000000))
                            (CF_exp c_ack!2963)))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.div roundNearestTiesToEven a!12 a!14))
                            a!15)
                    a!17)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!5 a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc008000000000000))
                            (fp.div roundNearestTiesToEven a!12 a!14)))))
(let ((a!22 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!19 a!21))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc010000000000000))
                            a!18))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc010000000000000))
                            a!18))))
  (fp.eq a!23
         (fp.mul roundNearestTiesToEven
                 a!3
                 (fp.div roundNearestTiesToEven a!19 a!21)))))))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2963)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              ((_ fp.to_sbv 32) roundTowardZero a!1))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!13))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!16))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!20)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xbff0000000000000))
                            (CF_exp c_ack!2963)))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.div roundNearestTiesToEven a!12 a!14))
                            a!15)
                    a!17)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!5 a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc008000000000000))
                            (fp.div roundNearestTiesToEven a!12 a!14)))))
(let ((a!22 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!19 a!21))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc010000000000000))
                            a!18))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!3
                         (fp.div roundNearestTiesToEven a!19 a!21))
                 a!22)
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) c_ack!2963)
                         ((_ to_fp 11 53) #xc010000000000000))
                 a!18)))))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
  (bvslt b_ack!2962 (bvadd #xfffffffb ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2963))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2963)
                       ((_ to_fp 11 53) #xc014000000000000))
               ((_ to_fp 11 53) c_ack!2963))
       ((_ to_fp 11 53) #xc014000000000000)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2963)
                       ((_ to_fp 11 53) #xc014000000000000))
               ((_ to_fp 11 53) #xc014000000000000))
       ((_ to_fp 11 53) c_ack!2963)))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000006 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) c_ack!2963)))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2963)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              ((_ fp.to_sbv 32) roundTowardZero a!1))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!22 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!25 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!10))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!15))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!18))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!22))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!25)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xbff0000000000000))
                            (CF_exp c_ack!2963)))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!14 a!16))
                            a!17)
                    a!19)))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!7 a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc008000000000000))
                            (fp.div roundNearestTiesToEven a!14 a!16)))))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.div roundNearestTiesToEven a!21 a!23))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc010000000000000))
                            a!20)))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc014000000000000))
                    (fp.div roundNearestTiesToEven a!21 a!23))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!24 a!26))
                            a!27)
                    a!27)))
  (fp.eq a!28
         (fp.mul roundNearestTiesToEven
                 a!3
                 (fp.div roundNearestTiesToEven a!24 a!26)))))))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000006 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) c_ack!2963)))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2963)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              ((_ fp.to_sbv 32) roundTowardZero a!1))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!22 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!25 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!10))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!15))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!18))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!22))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!25)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xbff0000000000000))
                            (CF_exp c_ack!2963)))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!14 a!16))
                            a!17)
                    a!19)))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!7 a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc008000000000000))
                            (fp.div roundNearestTiesToEven a!14 a!16)))))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.div roundNearestTiesToEven a!21 a!23))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc010000000000000))
                            a!20)))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc014000000000000))
                    (fp.div roundNearestTiesToEven a!21 a!23))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!24 a!26))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!24 a!26))
                            a!27))))
  (fp.eq a!28 a!27)))))))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!2962)
                                    ((_ to_fp 11 53) c_ack!2963))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000006 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   ((_ to_fp 11 53) c_ack!2963)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) c_ack!2963)))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2963)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              ((_ fp.to_sbv 32) roundTowardZero a!1))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!22 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!25 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!28 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffb ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000005 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000004 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000003 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000002 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                   a!8))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvsub #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!10))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!15))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!2963)
                            ((_ to_fp 11 53) #xc000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffe ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!18))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffd ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!22))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffc ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!25))
      (a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #xfffffffb ((_ fp.to_sbv 32) roundTowardZero a!1)))
                    a!28)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (CF_exp c_ack!2963)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xbff0000000000000))
                            (CF_exp c_ack!2963)))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!14 a!16))
                            a!17)
                    a!19)))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!7 a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc008000000000000))
                            (fp.div roundNearestTiesToEven a!14 a!16)))))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.div roundNearestTiesToEven a!21 a!23))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc010000000000000))
                            a!20))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!24 a!26))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!2963)
                                    ((_ to_fp 11 53) #xc014000000000000))
                            (fp.div roundNearestTiesToEven a!21 a!23)))))
  (FPCHECK_FDIV_ZERO a!27 a!29)))))))))))

(check-sat)
(exit)
