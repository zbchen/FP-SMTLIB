(declare-fun q_ack!480 () (_ BitVec 64))
(declare-fun j_ack!481 () (_ BitVec 32))
(declare-fun n_ack!479 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!481 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!481)))
(assert (= #x00000000 (bvsrem n_ack!479 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!479 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!479 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!479 #x00000000)))
(assert (not (= #x00000000 n_ack!479)))
(assert (not (= #x00000001 n_ack!479)))
(assert (not (= #x00000002 n_ack!479)))
(assert (not (= #x00000003 n_ack!479)))
(assert (not (bvslt n_ack!479 #x00000046)))
(assert (not (= #x00000000 n_ack!479)))
(assert (not (= #x00000002 n_ack!479)))
(assert (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!479 #x00000002))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!479 n_ack!479))
          ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
  #x4010000000000000))

(check-sat)
(exit)
