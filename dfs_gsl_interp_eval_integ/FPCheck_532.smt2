(declare-fun x1_ack!6675 () (_ BitVec 64))
(declare-fun x0_ack!6679 () (_ BitVec 64))
(declare-fun x2_ack!6676 () (_ BitVec 64))
(declare-fun b_ack!6678 () (_ BitVec 64))
(declare-fun a_ack!6677 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6679) ((_ to_fp 11 53) x1_ack!6675)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6675) ((_ to_fp 11 53) x2_ack!6676)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6675)
                       ((_ to_fp 11 53) x0_ack!6679))
               ((_ to_fp 11 53) x0_ack!6679))
       ((_ to_fp 11 53) x1_ack!6675)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6675)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6675)
                       ((_ to_fp 11 53) x0_ack!6679)))
       ((_ to_fp 11 53) x0_ack!6679)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6676)
                       ((_ to_fp 11 53) x1_ack!6675))
               ((_ to_fp 11 53) x1_ack!6675))
       ((_ to_fp 11 53) x2_ack!6676)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6676)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6676)
                       ((_ to_fp 11 53) x1_ack!6675)))
       ((_ to_fp 11 53) x1_ack!6675)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6675)
                    ((_ to_fp 11 53) x0_ack!6679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6676)
                    ((_ to_fp 11 53) x1_ack!6675))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6677) ((_ to_fp 11 53) b_ack!6678))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6677) ((_ to_fp 11 53) x0_ack!6679))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6678) ((_ to_fp 11 53) x2_ack!6676))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6677) ((_ to_fp 11 53) b_ack!6678))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6677) ((_ to_fp 11 53) x0_ack!6679))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6677) ((_ to_fp 11 53) x1_ack!6675)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6675) ((_ to_fp 11 53) a_ack!6677))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6678) ((_ to_fp 11 53) x1_ack!6675))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6678) ((_ to_fp 11 53) x2_ack!6676))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6676)
                    ((_ to_fp 11 53) x1_ack!6675))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6677)
          ((_ to_fp 11 53) x1_ack!6675))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6678)
          ((_ to_fp 11 53) x1_ack!6675))))

(check-sat)
(exit)
