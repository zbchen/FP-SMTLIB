(declare-fun a_ack!695 () (_ BitVec 32))
(declare-fun b_ack!694 () (_ BitVec 64))
(assert (= #x00000000 a_ack!695))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!694) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!694) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!694) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!694))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!694)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!694))
                           (fp.abs ((_ to_fp 11 53) b_ack!694)))
                   (fp.abs ((_ to_fp 11 53) b_ack!694)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!694)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!694)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!694))
                           (fp.abs ((_ to_fp 11 53) b_ack!694)))
                   (fp.abs ((_ to_fp 11 53) b_ack!694)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!694)))))

(check-sat)
(exit)
