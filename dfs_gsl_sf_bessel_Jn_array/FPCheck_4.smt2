(declare-fun a_ack!50 () (_ BitVec 32))
(declare-fun b_ack!48 () (_ BitVec 32))
(declare-fun c_ack!49 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!50 #x00000000)))
(assert (not (bvslt b_ack!48 a_ack!50)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!48) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!48)))
(assert (= #x00000000 b_ack!48))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!49))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!49))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!49))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!49))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!49))
  (fp.abs ((_ to_fp 11 53) c_ack!49))))

(check-sat)
(exit)
