(declare-fun b_ack!192 () (_ BitVec 64))
(declare-fun a_ack!193 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!193 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!193)))
(assert (= #x00000001 a_ack!193))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!192))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!192))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #xc000000000000000 (fp.abs ((_ to_fp 11 53) b_ack!192))))

(check-sat)
(exit)
