(declare-fun a_ack!369 () (_ BitVec 32))
(declare-fun b_ack!367 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!368 () (_ BitVec 64))
(assert (not (bvslt a_ack!369 #x00000000)))
(assert (not (bvslt b_ack!367 #x00000000)))
(assert (not (= #x00000000 a_ack!369)))
(assert (not (= #x00000001 a_ack!369)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!367 a_ack!369)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!367)))
(assert (bvslt b_ack!367 a_ack!369))
(assert (= #x00000000 (bvand (bvsub a_ack!369 b_ack!367) #x00000001)))
(assert (bvslt b_ack!367 (bvsub a_ack!369 b_ack!367)))
(assert (not (bvslt #x00000000 b_ack!367)))
(assert (bvsle #x00000001 (bvsub a_ack!369 b_ack!367)))
(assert (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) c_ack!368)) #x3cb0000000000000))

(check-sat)
(exit)
