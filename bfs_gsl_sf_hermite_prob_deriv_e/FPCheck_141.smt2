(declare-fun b_ack!606 () (_ BitVec 32))
(declare-fun a_ack!608 () (_ BitVec 32))
(declare-fun c_ack!607 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!606 #x00000000)))
(assert (not (bvslt a_ack!608 #x00000000)))
(assert (not (bvslt b_ack!606 a_ack!608)))
(assert (not (bvult b_ack!606 a_ack!608)))
(assert (not (= a_ack!608 b_ack!606)))
(assert (= #x00000000 a_ack!608))
(assert (bvult a_ack!608 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!608)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!608)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!606 a_ack!608) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!606 a_ack!608))))
(assert (not (= #x00000001 (bvsub b_ack!606 a_ack!608))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!607))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!606 a_ack!608)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!607))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FMUL_ACCURACY c_ack!607 c_ack!607))

(check-sat)
(exit)
