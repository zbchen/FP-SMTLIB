(declare-fun nu1_ack!96 () (_ BitVec 64))
(declare-fun nu2_ack!97 () (_ BitVec 64))
(declare-fun x_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!97)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!96)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!98)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!97)
               ((_ to_fp 11 53) nu1_ack!96))))
(assert (FPCHECK_FDIV_UNDERFLOW nu1_ack!96 #x4000000000000000))

(check-sat)
(exit)
