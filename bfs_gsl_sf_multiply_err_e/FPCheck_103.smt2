(declare-fun a_ack!576 () (_ BitVec 64))
(declare-fun c_ack!575 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!574 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!576) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!575) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!576))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!575))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!576))
            (fp.abs ((_ to_fp 11 53) c_ack!575)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!576))
            (fp.abs ((_ to_fp 11 53) c_ack!575)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!575))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!575))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feffffffffffffb)
               (fp.abs ((_ to_fp 11 53) c_ack!575)))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!576)
                                  ((_ to_fp 11 53) c_ack!575)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_OVERFLOW b_ack!574 c_ack!575))

(check-sat)
(exit)
