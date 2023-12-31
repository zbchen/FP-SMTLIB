(declare-fun limit_ack!5456 () (_ BitVec 64))
(declare-fun a_ack!5457 () (_ BitVec 64))
(declare-fun b_ack!5453 () (_ BitVec 64))
(declare-fun epsabs_ack!5455 () (_ BitVec 64))
(declare-fun c_ack!5454 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5456)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5453) ((_ to_fp 11 53) a_ack!5457))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5455)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5454) ((_ to_fp 11 53) a_ack!5457))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5454) ((_ to_fp 11 53) b_ack!5453))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!5454))
  b_ack!5453))

(check-sat)
(exit)
