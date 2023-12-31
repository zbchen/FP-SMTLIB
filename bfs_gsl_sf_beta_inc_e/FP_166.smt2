(declare-fun c_ack!4908 () (_ BitVec 64))
(declare-fun a_ack!4909 () (_ BitVec 64))
(declare-fun b_ack!4907 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!4908) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4909) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4907) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) b_ack!4907) (CF_floor b_ack!4907))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4909)
               ((_ to_fp 11 53) b_ack!4907))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!4909)
                          ((_ to_fp 11 53) b_ack!4907))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4909)
                                    ((_ to_fp 11 53) b_ack!4907))))))
(let ((a!2 (not (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (ite a!1 #x00000001 #x00000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4908) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!4909) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4909) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!4907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4909)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4908)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!4908)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!4908)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4908)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
