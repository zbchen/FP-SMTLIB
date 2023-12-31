(declare-fun c_ack!170 () (_ BitVec 64))
(declare-fun b_ack!169 () (_ BitVec 32))
(declare-fun a_ack!171 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!170) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!171 b_ack!169)))
(assert (not (= #x00000000 b_ack!169)))
(assert (not (= #x00000000 a_ack!171)))
(assert (not (bvslt b_ack!169 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!170) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!170) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!171 #x00000000)))
(assert (not (bvslt a_ack!171 #x00000000)))
(assert (not (= a_ack!171 b_ack!169)))
(assert (not (= #x00000001 a_ack!171)))
(assert (not (= b_ack!169 (bvadd #x00000001 a_ack!171))))
(assert (not (= a_ack!171 (bvadd #x00000001 b_ack!169))))
(assert (not (= a_ack!171 (bvadd #x00000002 b_ack!169))))
(assert (not (= b_ack!169 (bvmul #x00000002 a_ack!171))))
(assert (bvslt b_ack!169 #x0000000a))
(assert (bvslt a_ack!171 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!170))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!169)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!171)
                          (fp.abs ((_ to_fp 11 53) c_ack!170))))))
  (not a!1)))
(assert (not (bvslt a_ack!171 b_ack!169)))
(assert (not (bvslt a_ack!171 b_ack!169)))
(assert (not (bvslt a_ack!171 b_ack!169)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!170) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvslt b_ack!169 a_ack!171))
(assert (FPCHECK_FDIV_ZERO c_ack!170 ((_ to_fp 11 53) roundNearestTiesToEven b_ack!169)))

(check-sat)
(exit)
