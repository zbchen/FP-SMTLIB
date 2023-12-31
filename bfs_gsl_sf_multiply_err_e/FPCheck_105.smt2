(declare-fun a_ack!588 () (_ BitVec 64))
(declare-fun c_ack!587 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!586 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!588) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!588))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!587))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!588))
            (fp.abs ((_ to_fp 11 53) c_ack!587)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!588))
            (fp.abs ((_ to_fp 11 53) c_ack!587)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!587))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!587))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feffffffffffffb)
               (fp.abs ((_ to_fp 11 53) c_ack!587)))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!588)
                                  ((_ to_fp 11 53) c_ack!587)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY b_ack!586 c_ack!587))

(check-sat)
(exit)
