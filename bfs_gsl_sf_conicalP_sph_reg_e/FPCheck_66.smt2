(declare-fun c_ack!209 () (_ BitVec 64))
(declare-fun a_ack!210 () (_ BitVec 32))
(declare-fun b_ack!208 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!210 #xffffffff)))
(assert (not (= #xffffffff a_ack!210)))
(assert (= #x00000000 a_ack!210))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos c_ack!209)
                                  ((_ to_fp 11 53) b_ack!208)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!1)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) b_ack!208))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
