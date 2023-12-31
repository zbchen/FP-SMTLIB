(declare-fun b_ack!2209 () (_ BitVec 32))
(declare-fun a_ack!2210 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!2209 #x00000000)))
(assert (not (bvslt a_ack!2210 #x00000000)))
(assert (not (bvslt b_ack!2209 a_ack!2210)))
(assert (not (bvult b_ack!2209 a_ack!2210)))
(assert (not (= a_ack!2210 b_ack!2209)))
(assert (not (= #x00000000 a_ack!2210)))
(assert (not (bvule b_ack!2209 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!2210) b_ack!2209))
(assert (not (bvult (bvsub b_ack!2209 (bvsub b_ack!2209 a_ack!2210)) #x00000040)))
(assert (not (bvult b_ack!2209 (bvsub b_ack!2209 a_ack!2210))))
(assert (not (= (bvsub b_ack!2209 a_ack!2210) b_ack!2209)))
(assert (not (= #x00000000 (bvsub b_ack!2209 a_ack!2210))))
(assert (bvult b_ack!2209 (bvmul #x00000002 (bvsub b_ack!2209 a_ack!2210))))
(assert (not (bvule b_ack!2209 #x000000aa)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2209)
  #x3ff0000000000000))

(check-sat)
(exit)
