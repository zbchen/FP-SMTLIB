(declare-fun a_ack!79 () (_ BitVec 64))
(declare-fun c_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!79) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!78) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!78)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FSUB_ACCURACY c_ack!78 #x3ff0000000000000))

(check-sat)
(exit)
