(declare-fun a_ack!67 () (_ BitVec 32))
(declare-fun b_ack!66 () (_ BitVec 64))
(assert (not (bvslt a_ack!67 #x00000000)))
(assert (not (= #x00000000 a_ack!67)))
(assert (not (= #x00000001 a_ack!67)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) b_ack!66)))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
