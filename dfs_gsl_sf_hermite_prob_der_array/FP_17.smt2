(declare-fun b_ack!264 () (_ BitVec 32))
(declare-fun a_ack!266 () (_ BitVec 32))
(declare-fun c_ack!265 () (_ BitVec 64))
(assert (not (bvslt b_ack!264 #x00000000)))
(assert (not (bvslt a_ack!266 #x00000000)))
(assert (not (= #x00000000 b_ack!264)))
(assert (not (= #x00000001 b_ack!264)))
(assert (= #x00000000 a_ack!266))
(assert (not (bvslt b_ack!264 #x00000000)))
(assert (not (= #x00000000 b_ack!264)))
(assert (not (= #x00000001 b_ack!264)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!265))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!264))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!265))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!265))))))
  (not a!1)))
(assert (not (bvslt #x00000002 b_ack!264)))

(check-sat)
(exit)
