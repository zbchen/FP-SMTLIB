(declare-fun a_ack!1422 () (_ BitVec 64))
(declare-fun b_ack!1419 () (_ BitVec 64))
(declare-fun c_ack!1420 () (_ BitVec 64))
(declare-fun d_ack!1421 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1419) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1420) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1421)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))

(check-sat)
(exit)
