(declare-fun d_ack!350 () (_ BitVec 64))
(declare-fun a_ack!352 () (_ BitVec 64))
(declare-fun b_ack!349 () (_ BitVec 32))
(declare-fun c_ack!351 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!350) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!352) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!350) ((_ to_fp 11 53) #x0024000000000001)))
(assert (not (bvsle #x00000000 b_ack!349)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!352) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!351))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!351))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!351))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!351))
       ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401921fb54442d18)
                                   ((_ to_fp 11 53) c_ack!351)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (CF_exp (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x401921fb54442d18)
                         ((_ to_fp 11 53) c_ack!351))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401921fb54442d18)
                                   ((_ to_fp 11 53) c_ack!351)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401921fb54442d18)
                                   ((_ to_fp 11 53) c_ack!351)))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401921fb54442d18)
                                   ((_ to_fp 11 53) c_ack!351)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x401921fb54442d18)
            ((_ to_fp 11 53) c_ack!351))
    a!1)))

(check-sat)
(exit)
