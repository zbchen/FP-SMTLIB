(declare-fun b_ack!317 () (_ BitVec 32))
(declare-fun a_ack!318 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!317 #x00000000)))
(assert (not (bvslt a_ack!318 #x00000000)))
(assert (not (= #x00000000 a_ack!318)))
(assert (not (bvslt b_ack!317 a_ack!318)))
(assert (not (= b_ack!317 a_ack!318)))
(assert (not (= b_ack!317 (bvadd #x00000001 a_ack!318))))
(assert (bvult a_ack!318 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!318)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!318)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!318))
(assert (not (bvslt #x00000001 a_ack!318)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!318))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!318))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!318)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!318)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!318) (bvadd #xffffffff b_ack!317)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!318))
  #x3ff0000000000000))

(check-sat)
(exit)
