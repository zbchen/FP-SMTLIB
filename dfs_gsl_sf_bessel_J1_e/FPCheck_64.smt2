(declare-fun a_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!119) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!119))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!119))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW (CF_cos a_ack!119) a_ack!119))

(check-sat)
(exit)
