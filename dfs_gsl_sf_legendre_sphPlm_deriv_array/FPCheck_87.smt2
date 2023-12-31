(declare-fun b_ack!462 () (_ BitVec 32))
(declare-fun a_ack!464 () (_ BitVec 32))
(declare-fun c_ack!463 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!462 #x00000000)))
(assert (not (bvslt a_ack!464 b_ack!462)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!463) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!463) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!462))
(assert (not (bvslt a_ack!464 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!463) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!463) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!464)))
(assert (not (= #x00000001 a_ack!464)))
(assert (bvsle #x00000002 a_ack!464))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!463)
                  ((_ to_fp 11 53) #x4008000000000000))
          ((_ to_fp 11 53) c_ack!463))
  #x3ff0000000000000))

(check-sat)
(exit)
