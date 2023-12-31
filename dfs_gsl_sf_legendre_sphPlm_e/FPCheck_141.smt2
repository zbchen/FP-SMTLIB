(declare-fun b_ack!747 () (_ BitVec 32))
(declare-fun a_ack!749 () (_ BitVec 32))
(declare-fun c_ack!748 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!747 #x00000000)))
(assert (not (bvslt a_ack!749 b_ack!747)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!748) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!748) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!747))
(assert (not (bvslt a_ack!749 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!748) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!748) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!749)))
(assert (not (= #x00000001 a_ack!749)))
(assert (= #x00000002 a_ack!749))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4008000000000000)
                  ((_ to_fp 11 53) c_ack!748))
          ((_ to_fp 11 53) c_ack!748))
  #x3ff0000000000000))

(check-sat)
(exit)
