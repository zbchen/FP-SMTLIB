(declare-fun a_ack!5424 () (_ BitVec 64))
(declare-fun b_ack!5423 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5424) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!5423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5424) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!5424) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!5423) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5424) ((_ to_fp 11 53) b_ack!5423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5424) ((_ to_fp 11 53) b_ack!5423))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!5423)
                    ((_ to_fp 11 53) b_ack!5423))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5424)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!5424 #x4000000000000000))

(check-sat)
(exit)
