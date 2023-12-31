(declare-fun a_ack!278 () (_ BitVec 32))
(declare-fun b_ack!276 () (_ BitVec 32))
(declare-fun c_ack!277 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!278 #x00000000)))
(assert (not (bvslt b_ack!276 a_ack!278)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!278 #x00000000)))
(assert (= #x00000000 a_ack!278))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!277) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!277))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!277))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!277)))
  (fp.abs ((_ to_fp 11 53) c_ack!277))))

(check-sat)
(exit)
