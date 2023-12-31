(declare-fun d_ack!1707 () (_ BitVec 64))
(declare-fun b_ack!1706 () (_ BitVec 32))
(declare-fun a_ack!1709 () (_ BitVec 64))
(declare-fun c_ack!1708 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1707) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1706))
(assert (not (bvsle #x00000001 b_ack!1706)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1709) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1708)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1708)))))
(assert (not (fp.gt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1708)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) c_ack!1708))
  (fp.abs ((_ to_fp 11 53) c_ack!1708))))

(check-sat)
(exit)
