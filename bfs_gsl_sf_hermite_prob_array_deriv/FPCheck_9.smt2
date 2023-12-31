(declare-fun b_ack!63 () (_ BitVec 32))
(declare-fun a_ack!65 () (_ BitVec 32))
(declare-fun c_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!63 #x00000000)))
(assert (not (bvslt a_ack!65 #x00000000)))
(assert (= #x00000000 a_ack!65))
(assert (not (bvslt b_ack!63 #x00000000)))
(assert (not (= #x00000000 b_ack!63)))
(assert (not (= #x00000001 b_ack!63)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!64))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!63))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!64))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!64)
          ((_ to_fp 11 53) c_ack!64))
  #x3ff0000000000000))

(check-sat)
(exit)
