(declare-fun b_ack!526 () (_ BitVec 64))
(declare-fun a_ack!527 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!526) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!527 #x00000000)))
(assert (not (= #x00000000 a_ack!527)))
(assert (not (= #x00000001 a_ack!527)))
(assert (not (= #x00000002 a_ack!527)))
(assert (= #x00000003 a_ack!527))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!526) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  b_ack!526
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4018000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!526)))))

(check-sat)
(exit)
