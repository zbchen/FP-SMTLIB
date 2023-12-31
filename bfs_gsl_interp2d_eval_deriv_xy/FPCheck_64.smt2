(declare-fun x1_ack!707 () (_ BitVec 64))
(declare-fun x0_ack!714 () (_ BitVec 64))
(declare-fun y0_ack!708 () (_ BitVec 64))
(declare-fun x_ack!712 () (_ BitVec 64))
(declare-fun y_ack!713 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!710 () (_ BitVec 64))
(declare-fun z3_ack!711 () (_ BitVec 64))
(declare-fun z0_ack!709 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!714) ((_ to_fp 11 53) x1_ack!707))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!708) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!712) ((_ to_fp 11 53) x0_ack!714))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!712) ((_ to_fp 11 53) x1_ack!707))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!713) ((_ to_fp 11 53) y0_ack!708))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!713) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!712) ((_ to_fp 11 53) x0_ack!714))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!712) ((_ to_fp 11 53) x1_ack!707))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!713) ((_ to_fp 11 53) y0_ack!708))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!713) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!707)
                       ((_ to_fp 11 53) x0_ack!714))
               ((_ to_fp 11 53) x0_ack!714))
       ((_ to_fp 11 53) x1_ack!707)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!707)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!707)
                       ((_ to_fp 11 53) x0_ack!714)))
       ((_ to_fp 11 53) x0_ack!714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!708))
               ((_ to_fp 11 53) y0_ack!708))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!708)))
       ((_ to_fp 11 53) y0_ack!708)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!709)
          ((_ to_fp 11 53) z3_ack!711))
  z1_ack!710))

(check-sat)
(exit)
