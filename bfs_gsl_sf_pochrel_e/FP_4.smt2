(declare-fun a_ack!59 () (_ BitVec 64))
(declare-fun b_ack!58 () (_ BitVec 64))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!58))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!59))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!59))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!58))
               ((_ to_fp 11 53) #x3fe62e42fefa39ef))
       ((_ to_fp 11 53) #x3fb999999999999a)))

(check-sat)
(exit)
