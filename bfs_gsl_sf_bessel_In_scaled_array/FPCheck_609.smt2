(declare-fun a_ack!2606 () (_ BitVec 32))
(declare-fun b_ack!2604 () (_ BitVec 32))
(declare-fun c_ack!2605 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2604 a_ack!2606)))
(assert (not (bvslt a_ack!2606 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2605) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2604)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2605))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) c_ack!2605))
               (fp.abs ((_ to_fp 11 53) c_ack!2605)))
       ((_ to_fp 11 53) #x41fd6e2bc3b82b06)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2605)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2605)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2605)))))

(check-sat)
(exit)
