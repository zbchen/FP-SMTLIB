(declare-fun a_ack!381 () (_ BitVec 64))
(declare-fun b_ack!380 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!380))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!381))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!381))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!380))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!380) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!381) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!381) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!381) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!381))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!381))
                           (fp.abs ((_ to_fp 11 53) a_ack!381))))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
