(declare-fun a_ack!3487 () (_ BitVec 32))
(declare-fun b_ack!3486 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!3487 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!3487) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!3487)))
(assert (not (= #x00000000 a_ack!3487)))
(assert (= #x00000001 a_ack!3487))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3486))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3486))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (not (bvslt a_ack!3487 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!3487)))
(assert (= #x00000001 a_ack!3487))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3486))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3486))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3487))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3487))
       #x0000000000000319))
(assert (bvsle #x00000001 a_ack!3487))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 a_ack!3487)))
                   ((_ to_fp 11 53) b_ack!3486)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_sin b_ack!3486)
                                   ((_ to_fp 11 53) b_ack!3486))
                           (CF_cos b_ack!3486))
                   ((_ to_fp 11 53) b_ack!3486))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
