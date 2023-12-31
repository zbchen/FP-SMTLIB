(declare-fun a_ack!2363 () (_ BitVec 32))
(declare-fun b_ack!2361 () (_ BitVec 32))
(declare-fun c_ack!2362 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!2363 #x00000000)))
(assert (not (bvslt b_ack!2361 a_ack!2363)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2362) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2361)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2362) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2362) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2362) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!2362) ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4030000000000000)
          ((_ to_fp 11 53) c_ack!2362))
  #x4022000000000000))

(check-sat)
(exit)
