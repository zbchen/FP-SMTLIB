(declare-fun b_ack!417 () (_ BitVec 64))
(declare-fun a_ack!418 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!418) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!418) ((_ to_fp 11 53) #xc076232bdd7abcd2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!418)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!417))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!418)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!417))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!417))))))
  (FPCHECK_FSUB_UNDERFLOW (CF_log (fp.abs ((_ to_fp 11 53) b_ack!417))) a!1)))

(check-sat)
(exit)
