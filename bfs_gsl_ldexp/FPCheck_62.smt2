(declare-fun x_ack!248 () (_ BitVec 64))
(declare-fun e_ack!247 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!248)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!248))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not (not a!1))))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!247)
        ((_ to_fp 11 53) #x4090000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven e_ack!247)
  #x4090000000000000))

(check-sat)
(exit)
