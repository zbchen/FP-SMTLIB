(declare-fun x_ack!571 () (_ BitVec 64))
(declare-fun e_ack!570 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!571) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!571) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!571)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!571))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not (not a!1))))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!570)
        ((_ to_fp 11 53) #x4090000000000000)))

(check-sat)
(exit)
