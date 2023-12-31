(declare-fun b_ack!445 () (_ BitVec 64))
(declare-fun a_ack!446 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!445)
                       ((_ to_fp 11 53) a_ack!446)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!445) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!445)
                                   ((_ to_fp 11 53) a_ack!446)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!445)
                                   ((_ to_fp 11 53) a_ack!446))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4008000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4008000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!445)
                                   ((_ to_fp 11 53) a_ack!446)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!445)
                                   ((_ to_fp 11 53) a_ack!446))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!445)
                                   ((_ to_fp 11 53) a_ack!446)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!445)
                                   ((_ to_fp 11 53) a_ack!446))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4008000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x4008000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fbdddddddddddde)
          ((_ to_fp 11 53) b_ack!445))
  b_ack!445))

(check-sat)
(exit)
