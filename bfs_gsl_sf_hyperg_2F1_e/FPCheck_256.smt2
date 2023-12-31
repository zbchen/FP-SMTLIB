(declare-fun a_ack!1894 () (_ BitVec 64))
(declare-fun b_ack!1891 () (_ BitVec 64))
(declare-fun c_ack!1892 () (_ BitVec 64))
(declare-fun d_ack!1893 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1894) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1891) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1892) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1893)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1892)
                                  ((_ to_fp 11 53) a_ack!1894))
                          ((_ to_fp 11 53) b_ack!1891))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1893) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!1893))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1892)
                                  ((_ to_fp 11 53) b_ack!1891)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1892)
                                  ((_ to_fp 11 53) a_ack!1894)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1894) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1891) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1892) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) d_ack!1893) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1893) ((_ to_fp 11 53) #x3fefd70a3d70a3d7))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1894))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1894))
       (fp.abs ((_ to_fp 11 53) b_ack!1891))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1891))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!1891))
  (fp.abs ((_ to_fp 11 53) a_ack!1894))))

(check-sat)
(exit)
