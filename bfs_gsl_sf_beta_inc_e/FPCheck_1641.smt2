(declare-fun c_ack!6270 () (_ BitVec 64))
(declare-fun a_ack!6271 () (_ BitVec 64))
(declare-fun b_ack!6269 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!6270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!6270) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6271) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6271)
                    ((_ to_fp 11 53) b_ack!6269))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6270) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!6271) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6271) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!6269))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6271)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6270)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!6270)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!6270)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6270)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6270)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6271)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!6271))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!6269)))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6271)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6271)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6271)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!6271))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!6269)))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6271)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!6271))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!6269)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000))
    #xbff007228b4cd147)))

(check-sat)
(exit)
