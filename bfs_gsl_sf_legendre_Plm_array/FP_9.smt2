(declare-fun b_ack!149 () (_ BitVec 32))
(declare-fun a_ack!151 () (_ BitVec 32))
(declare-fun c_ack!150 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!151 b_ack!149))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!151 b_ack!149))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt b_ack!149 #x00000000)))
(assert (not (bvslt a_ack!151 b_ack!149)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!150) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!149))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!150) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
