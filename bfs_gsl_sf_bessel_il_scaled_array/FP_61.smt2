(declare-fun b_ack!723 () (_ BitVec 64))
(declare-fun a_ack!724 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!724) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!724)))
(assert (= #x00000000 a_ack!724))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!723))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!723))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!724 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!724))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!723) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!723))
       ((_ to_fp 11 53) #x3fc999999999999a)))

(check-sat)
(exit)
