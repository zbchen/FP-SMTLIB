(declare-fun a_ack!796 () (_ BitVec 64))
(declare-fun b_ack!795 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!796) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!796) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!795)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!796)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!796) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!796) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!796) ((_ to_fp 11 53) b_ack!795))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!795)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!796)
                    ((_ to_fp 11 53) #xffffffffffffffff)))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!796) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_OVERFLOW a_ack!796 #x3ff0000000000000))

(check-sat)
(exit)
