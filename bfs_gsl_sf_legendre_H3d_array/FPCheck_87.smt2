(declare-fun c_ack!493 () (_ BitVec 64))
(declare-fun a_ack!494 () (_ BitVec 32))
(declare-fun b_ack!492 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!493) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!494 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!493) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!494)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!493) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!493) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!494)))
(assert (not (= #x00000001 a_ack!494)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!493) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!492))
                          ((_ to_fp 11 53) c_ack!493))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!492))
          (fp.abs ((_ to_fp 11 53) b_ack!492)))))

(check-sat)
(exit)
