(declare-fun b_ack!348 () (_ BitVec 64))
(declare-fun a_ack!350 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!349 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!348) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!350 #x00000000)))
(assert (not (= #x00000000 a_ack!350)))
(assert (not (= #x00000001 a_ack!350)))
(assert (= #x00000002 a_ack!350))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!348) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!348)))
                   ((_ to_fp 11 53) c_ack!349))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!348)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!349))))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.abs a!2))
    (fp.abs ((_ to_fp 11 53) b_ack!348))))))

(check-sat)
(exit)
