(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun b_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!30))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!31)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY a_ack!31 b_ack!30))

(check-sat)
(exit)
