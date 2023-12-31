(declare-fun b_ack!56 () (_ BitVec 32))
(declare-fun a_ack!58 () (_ BitVec 32))
(declare-fun c_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!56 #x00000000)))
(assert (not (bvslt a_ack!58 #x00000000)))
(assert (= #x00000000 a_ack!58))
(assert (not (bvslt b_ack!56 #x00000000)))
(assert (not (= #x00000000 b_ack!56)))
(assert (not (= #x00000001 b_ack!56)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!57)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!56))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!57))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!57))))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW c_ack!57 c_ack!57))

(check-sat)
(exit)
