(declare-fun a_ack!108 () (_ BitVec 32))
(declare-fun b_ack!107 () (_ BitVec 64))
(assert (not (bvslt a_ack!108 #x00000000)))
(assert (not (= #x00000000 a_ack!108)))
(assert (not (= #x00000001 a_ack!108)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!107)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvslt #x00000001 a_ack!108))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) b_ack!107)))
       ((_ to_fp 11 53) #x7fefffffffffffff)))

(check-sat)
(exit)
