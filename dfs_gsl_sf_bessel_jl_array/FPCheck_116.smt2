(declare-fun a_ack!467 () (_ BitVec 32))
(declare-fun b_ack!466 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!467 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!467) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!467)))
(assert (not (= #x00000000 a_ack!467)))
(assert (= #x00000001 a_ack!467))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!466))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!466))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!466)
                  ((_ to_fp 11 53) b_ack!466)))
  #x3ff0000000000000))

(check-sat)
(exit)
