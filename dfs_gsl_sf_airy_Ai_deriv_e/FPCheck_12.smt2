(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!22)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) a_ack!22))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (FPCHECK_FINVALID_SQRT a_ack!22 a_ack!22))

(check-sat)
(exit)
