(declare-fun a_ack!448 () (_ BitVec 64))
(declare-fun c_ack!447 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!448) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!448))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!447))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!447))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!448))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!448))
       (fp.abs ((_ to_fp 11 53) c_ack!447))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!448))
            (fp.abs ((_ to_fp 11 53) c_ack!447)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!447))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!448)
                  ((_ to_fp 11 53) c_ack!447)))))

(check-sat)
(exit)
