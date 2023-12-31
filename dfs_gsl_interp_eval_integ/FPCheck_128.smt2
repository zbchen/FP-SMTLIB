(declare-fun x1_ack!1404 () (_ BitVec 64))
(declare-fun x0_ack!1408 () (_ BitVec 64))
(declare-fun x2_ack!1405 () (_ BitVec 64))
(declare-fun b_ack!1407 () (_ BitVec 64))
(declare-fun a_ack!1406 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1408) ((_ to_fp 11 53) x1_ack!1404)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1404) ((_ to_fp 11 53) x2_ack!1405)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1404)
                       ((_ to_fp 11 53) x0_ack!1408))
               ((_ to_fp 11 53) x0_ack!1408))
       ((_ to_fp 11 53) x1_ack!1404)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1404)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1404)
                       ((_ to_fp 11 53) x0_ack!1408)))
       ((_ to_fp 11 53) x0_ack!1408)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1405)
                       ((_ to_fp 11 53) x1_ack!1404))
               ((_ to_fp 11 53) x1_ack!1404))
       ((_ to_fp 11 53) x2_ack!1405)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1405)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1405)
                       ((_ to_fp 11 53) x1_ack!1404)))
       ((_ to_fp 11 53) x1_ack!1404)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1404)
                    ((_ to_fp 11 53) x0_ack!1408))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1405)
                    ((_ to_fp 11 53) x1_ack!1404))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) b_ack!1407))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) x0_ack!1408))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1407) ((_ to_fp 11 53) x2_ack!1405))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) b_ack!1407))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) x0_ack!1408))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) x1_ack!1404))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1407) ((_ to_fp 11 53) x0_ack!1408))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1407) ((_ to_fp 11 53) x1_ack!1404)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1404) ((_ to_fp 11 53) b_ack!1407))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1404)
                    ((_ to_fp 11 53) x0_ack!1408))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1406)
                  ((_ to_fp 11 53) x0_ack!1408))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1406)
                  ((_ to_fp 11 53) x0_ack!1408)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1404)
                  ((_ to_fp 11 53) x0_ack!1408))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1404)
                  ((_ to_fp 11 53) x0_ack!1408)))))

(check-sat)
(exit)
