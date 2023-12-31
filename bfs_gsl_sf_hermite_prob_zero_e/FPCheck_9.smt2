(declare-fun a_ack!48 () (_ BitVec 32))
(declare-fun b_ack!47 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvsle a_ack!48 #x00000000)))
(assert (not (bvslt b_ack!47 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!48 #x00000002) b_ack!47)))
(assert (not (= #x00000000 b_ack!47)))
(assert (not (= #x00000002 a_ack!48)))
(assert (not (bvslt a_ack!48 #x00000015)))
(assert (= #x00000001 b_ack!47))
(assert (bvslt #x00000032 a_ack!48))
(assert (= #x00000000 (bvand a_ack!48 #x00000001)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!48 #x00000002) b_ack!47)))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #x3ff8000000000000)))

(check-sat)
(exit)
