(declare-fun a_ack!81 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor a_ack!81))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!81) a!1)
                 ((_ to_fp 11 53) a_ack!81))
         a!1)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor a_ack!81))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!81) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!81))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       (CF_floor a_ack!81))))))
  (not (fp.eq (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!81) a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvslt #x00000000
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (CF_floor a_ack!81)))))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!81)
                  ((_ to_fp 11 53) #x0000000000000000))
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!81)
                  ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
