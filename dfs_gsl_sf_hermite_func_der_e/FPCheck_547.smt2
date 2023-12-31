(declare-fun a_ack!3268 () (_ BitVec 32))
(declare-fun b_ack!3266 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!3267 () (_ BitVec 64))
(assert (not (bvslt a_ack!3268 #x00000000)))
(assert (not (bvslt b_ack!3266 #x00000000)))
(assert (not (= #x00000000 a_ack!3268)))
(assert (not (= #x00000001 a_ack!3268)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3266 a_ack!3268)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3266)))
(assert (bvslt b_ack!3266 a_ack!3268))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3268 b_ack!3266) #x00000001))))
(assert (bvslt b_ack!3266 (bvsub a_ack!3268 b_ack!3266)))
(assert (not (bvslt #x00000000 b_ack!3266)))
(assert (bvsle #x00000001 (bvsub a_ack!3268 b_ack!3266)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!3267)
          ((_ to_fp 11 53) c_ack!3267))
  #x3ff0000000000000))

(check-sat)
(exit)
