(declare-fun a_ack!32 () (_ BitVec 32))
(declare-fun b_ack!31 () (_ BitVec 64))
(assert (not (bvslt a_ack!32 #x00000000)))
(assert (not (= #x00000000 a_ack!32)))
(assert (not (= #x00000001 a_ack!32)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!31)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!32))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!31))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!31))))))
  (not a!1)))

(check-sat)
(exit)
