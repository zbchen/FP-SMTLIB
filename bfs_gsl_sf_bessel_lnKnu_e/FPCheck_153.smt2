(declare-fun b_ack!445 () (_ BitVec 64))
(declare-fun a_ack!446 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!446) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!445) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!445)
                       ((_ to_fp 11 53) b_ack!445))
               ((_ to_fp 11 53) b_ack!445))
       ((_ to_fp 11 53) b_ack!445)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!445)
                       ((_ to_fp 11 53) b_ack!445))
               ((_ to_fp 11 53) b_ack!445))
       ((_ to_fp 11 53) b_ack!445)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!445)
                           ((_ to_fp 11 53) b_ack!445))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!445)
                           ((_ to_fp 11 53) b_ack!445))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fd0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!445)
          ((_ to_fp 11 53) b_ack!445))))

(check-sat)
(exit)
