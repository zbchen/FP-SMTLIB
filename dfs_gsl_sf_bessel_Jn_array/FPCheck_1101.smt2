(declare-fun a_ack!4532 () (_ BitVec 32))
(declare-fun b_ack!4530 () (_ BitVec 32))
(declare-fun c_ack!4531 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!4532 #x00000000)))
(assert (not (bvslt b_ack!4530 a_ack!4532)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!4530) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!4530)))
(assert (= #x00000000 b_ack!4530))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!4531))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!4531))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!4531))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_sin (fp.abs ((_ to_fp 11 53) c_ack!4531)))
  (CF_cos (fp.abs ((_ to_fp 11 53) c_ack!4531)))))

(check-sat)
(exit)
