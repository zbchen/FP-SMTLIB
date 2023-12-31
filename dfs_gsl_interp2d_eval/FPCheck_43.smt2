(declare-fun x1_ack!444 () (_ BitVec 64))
(declare-fun x0_ack!450 () (_ BitVec 64))
(declare-fun y0_ack!445 () (_ BitVec 64))
(declare-fun x_ack!448 () (_ BitVec 64))
(declare-fun y_ack!449 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!447 () (_ BitVec 64))
(declare-fun z0_ack!446 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!450) ((_ to_fp 11 53) x1_ack!444))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!445) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!448) ((_ to_fp 11 53) x0_ack!450))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!448) ((_ to_fp 11 53) x1_ack!444))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!449) ((_ to_fp 11 53) y0_ack!445))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!449) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!448) ((_ to_fp 11 53) x0_ack!450))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!448) ((_ to_fp 11 53) x1_ack!444))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!449) ((_ to_fp 11 53) y0_ack!445))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!449) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!444)
                       ((_ to_fp 11 53) x0_ack!450))
               ((_ to_fp 11 53) x0_ack!450))
       ((_ to_fp 11 53) x1_ack!444)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!444)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!444)
                       ((_ to_fp 11 53) x0_ack!450)))
       ((_ to_fp 11 53) x0_ack!450)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!445))
               ((_ to_fp 11 53) y0_ack!445))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!445)))
       ((_ to_fp 11 53) y0_ack!445)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!448)
                           ((_ to_fp 11 53) x0_ack!450))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!444)
                           ((_ to_fp 11 53) x0_ack!450))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!449)
                                   ((_ to_fp 11 53) y0_ack!445))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!445))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!446))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!447))))))

(check-sat)
(exit)
