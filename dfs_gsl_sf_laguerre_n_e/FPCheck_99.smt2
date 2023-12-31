(declare-fun a_ack!342 () (_ BitVec 32))
(declare-fun c_ack!341 () (_ BitVec 64))
(declare-fun b_ack!340 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!342 #x00000000)))
(assert (not (= #x00000000 a_ack!342)))
(assert (not (= #x00000001 a_ack!342)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!342 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!342)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!340) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!340) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!342))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!340))))

(check-sat)
(exit)
