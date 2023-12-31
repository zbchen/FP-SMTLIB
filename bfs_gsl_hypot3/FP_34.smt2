(declare-fun c_ack!1004 () (_ BitVec 64))
(declare-fun b_ack!1003 () (_ BitVec 64))
(declare-fun a_ack!1005 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1003))
       (fp.abs ((_ to_fp 11 53) c_ack!1004))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1005))
       (fp.abs ((_ to_fp 11 53) b_ack!1003))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1005))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1005))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1005))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1003))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1003))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1005))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1005))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1003))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1003))
                           (fp.abs ((_ to_fp 11 53) a_ack!1005))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
