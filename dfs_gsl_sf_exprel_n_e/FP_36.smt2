(declare-fun a_ack!423 () (_ BitVec 32))
(declare-fun b_ack!422 () (_ BitVec 64))
(assert (not (bvslt a_ack!423 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!422))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!423)))))
(assert (not (= #x00000000 a_ack!423)))
(assert (not (= #x00000001 a_ack!423)))
(assert (= #x00000002 a_ack!423))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!422) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!422) ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))

(check-sat)
(exit)
