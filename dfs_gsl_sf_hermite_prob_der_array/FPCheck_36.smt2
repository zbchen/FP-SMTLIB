(declare-fun b_ack!216 () (_ BitVec 32))
(declare-fun a_ack!218 () (_ BitVec 32))
(declare-fun c_ack!217 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!216 #x00000000)))
(assert (not (bvslt a_ack!218 #x00000000)))
(assert (not (= #x00000000 b_ack!216)))
(assert (not (= #x00000001 b_ack!216)))
(assert (= #x00000000 a_ack!218))
(assert (not (bvslt b_ack!216 #x00000000)))
(assert (not (= #x00000000 b_ack!216)))
(assert (not (= #x00000001 b_ack!216)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!217))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!216))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!217))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!217))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!217))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!217))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FADD_ACCURACY a!1 #x3cb0000000000000)))

(check-sat)
(exit)
