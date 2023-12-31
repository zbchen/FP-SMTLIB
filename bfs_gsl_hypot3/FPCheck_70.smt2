(declare-fun c_ack!356 () (_ BitVec 64))
(declare-fun b_ack!355 () (_ BitVec 64))
(declare-fun a_ack!357 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!355))
            (fp.abs ((_ to_fp 11 53) c_ack!356)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!357))
            (fp.abs ((_ to_fp 11 53) c_ack!356)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!355))
            (fp.abs ((_ to_fp 11 53) c_ack!356)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!356))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW (fp.abs ((_ to_fp 11 53) c_ack!356)) #x7ff8000000000001))

(check-sat)
(exit)
