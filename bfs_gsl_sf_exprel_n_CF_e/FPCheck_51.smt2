(declare-fun a_ack!191 () (_ BitVec 64))
(declare-fun b_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!191))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!191))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!190)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!191)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!191)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!191)))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!190)
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!191)))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 b_ack!190))

(check-sat)
(exit)
