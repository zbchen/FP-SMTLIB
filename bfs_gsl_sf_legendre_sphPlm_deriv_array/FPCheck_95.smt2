(declare-fun b_ack!438 () (_ BitVec 32))
(declare-fun a_ack!440 () (_ BitVec 32))
(declare-fun c_ack!439 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!438 #x00000000)))
(assert (not (bvslt a_ack!440 b_ack!438)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!439) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!438)))
(assert (= #x00000001 b_ack!438))
(assert (not (bvslt b_ack!438 #x00000000)))
(assert (not (bvslt a_ack!440 b_ack!438)))
(assert (not (= #x00000000 b_ack!438)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!440 b_ack!438))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!440 b_ack!438))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!440))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
