(declare-fun c_ack!30 () (_ BitVec 64))
(declare-fun a_ack!31 () (_ BitVec 32))
(declare-fun b_ack!29 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!30))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!29 a_ack!31)))
(assert (not (bvslt a_ack!31 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!29)))
(assert (FPCHECK_FDIV_ACCURACY #x4000000000000000 (fp.abs ((_ to_fp 11 53) c_ack!30))))

(check-sat)
(exit)
