(declare-fun n_ack!228 () (_ BitVec 32))
(declare-fun a_ack!229 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!228 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!228 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!228 #x00000000)))
(assert (not (= #x00000000 n_ack!228)))
(assert (not (= #x00000001 n_ack!228)))
(assert (not (= #x00000002 n_ack!228)))
(assert (not (= #x00000003 n_ack!228)))
(assert (not (bvslt n_ack!228 #x00000046)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!228 n_ack!228))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul n_ack!228 n_ack!228)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!228 n_ack!228))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
  (fp.eq a!1
         ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!228 n_ack!228)))))
(assert (not (= #x00000000 n_ack!228)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!229))
  a_ack!229))

(check-sat)
(exit)
