(declare-fun a_ack!1226 () (_ BitVec 64))
(declare-fun b_ack!1223 () (_ BitVec 64))
(declare-fun c_ack!1224 () (_ BitVec 64))
(declare-fun d_ack!1225 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!1226) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1224) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1225)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (FPCHECK_FSUB_ACCURACY c_ack!1224 a_ack!1226))

(check-sat)
(exit)
