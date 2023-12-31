(declare-fun a_ack!356 () (_ BitVec 32))
(declare-fun b_ack!354 () (_ BitVec 32))
(declare-fun c_ack!355 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!356 #x00000000)))
(assert (not (bvslt b_ack!354 a_ack!356)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!355) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!354) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!355) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!354)))
(assert (= #x00000000 b_ack!354))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!355))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!355))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!355))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (bvslt b_ack!354 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!355) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!354))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!355))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) c_ack!355))
  (fp.abs ((_ to_fp 11 53) c_ack!355))))

(check-sat)
(exit)
