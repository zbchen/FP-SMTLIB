(declare-fun x_ack!135 () (_ BitVec 64))
(declare-fun nu1_ack!133 () (_ BitVec 64))
(declare-fun nu2_ack!134 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!133) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!134) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!133)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!134)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!135) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu1_ack!133)
          ((_ to_fp 11 53) #x4000000000000000))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!134)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
