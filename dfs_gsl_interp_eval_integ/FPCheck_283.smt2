(declare-fun x1_ack!3420 () (_ BitVec 64))
(declare-fun x0_ack!3424 () (_ BitVec 64))
(declare-fun x2_ack!3421 () (_ BitVec 64))
(declare-fun b_ack!3423 () (_ BitVec 64))
(declare-fun a_ack!3422 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3424) ((_ to_fp 11 53) x1_ack!3420)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3420) ((_ to_fp 11 53) x2_ack!3421)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3420)
                       ((_ to_fp 11 53) x0_ack!3424))
               ((_ to_fp 11 53) x0_ack!3424))
       ((_ to_fp 11 53) x1_ack!3420)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3420)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3420)
                       ((_ to_fp 11 53) x0_ack!3424)))
       ((_ to_fp 11 53) x0_ack!3424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3421)
                       ((_ to_fp 11 53) x1_ack!3420))
               ((_ to_fp 11 53) x1_ack!3420))
       ((_ to_fp 11 53) x2_ack!3421)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3421)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3421)
                       ((_ to_fp 11 53) x1_ack!3420)))
       ((_ to_fp 11 53) x1_ack!3420)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3420)
                    ((_ to_fp 11 53) x0_ack!3424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3421)
                    ((_ to_fp 11 53) x1_ack!3420))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3422) ((_ to_fp 11 53) b_ack!3423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3422) ((_ to_fp 11 53) x0_ack!3424))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3423) ((_ to_fp 11 53) x2_ack!3421))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3422) ((_ to_fp 11 53) b_ack!3423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3422) ((_ to_fp 11 53) x0_ack!3424))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3422) ((_ to_fp 11 53) x1_ack!3420))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3423) ((_ to_fp 11 53) x0_ack!3424))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3423) ((_ to_fp 11 53) x1_ack!3420))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3420)
                    ((_ to_fp 11 53) x0_ack!3424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3420)
          ((_ to_fp 11 53) x0_ack!3424))))

(check-sat)
(exit)
