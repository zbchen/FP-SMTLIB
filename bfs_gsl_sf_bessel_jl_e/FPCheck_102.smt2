(declare-fun a_ack!378 () (_ BitVec 32))
(declare-fun b_ack!377 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!378 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!378)))
(assert (not (= #x00000001 a_ack!378)))
(assert (= #x00000002 a_ack!378))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!377))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!377))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FDIV_ACCURACY
  #x4008000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!377)
          ((_ to_fp 11 53) b_ack!377))))

(check-sat)
(exit)
