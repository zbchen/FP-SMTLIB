(declare-fun a_ack!33 () (_ BitVec 32))
(declare-fun b_ack!32 () (_ BitVec 64))
(assert (not (bvslt a_ack!33 #x00000000)))
(assert (= #x00000000 a_ack!33))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!32)))
       ((_ to_fp 11 53) #x0010000000000000)))

(check-sat)
(exit)
