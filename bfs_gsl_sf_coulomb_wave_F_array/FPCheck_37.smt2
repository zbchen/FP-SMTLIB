(declare-fun d_ack!219 () (_ BitVec 64))
(declare-fun b_ack!218 () (_ BitVec 32))
(declare-fun a_ack!221 () (_ BitVec 64))
(declare-fun c_ack!220 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!219) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!218))
(assert (not (bvsle #x00000001 b_ack!218)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!221) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!220)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) c_ack!220))
  #x400921fb54442d18))

(check-sat)
(exit)
