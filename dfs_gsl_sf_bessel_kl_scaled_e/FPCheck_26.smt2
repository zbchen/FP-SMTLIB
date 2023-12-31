(declare-fun a_ack!121 () (_ BitVec 32))
(declare-fun b_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!121 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!121)))
(assert (not (= #x00000001 a_ack!121)))
(assert (not (= #x00000002 a_ack!121)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!120) ((_ to_fp 11 53) #x4008000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!121) #x00000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 a_ack!121) #x00000001))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!121)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!121)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!121))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvadd #x00000001 a_ack!121)) #b1)
                (concat #b1 ((_ extract 31 1) (bvadd #x00000001 a_ack!121)))
                (concat #b0 ((_ extract 31 1) (bvadd #x00000001 a_ack!121))))))
  (not (= #x00000000 (bvand a!1 #x00000001)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!120))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!120)
          ((_ to_fp 11 53) b_ack!120))))

(check-sat)
(exit)
