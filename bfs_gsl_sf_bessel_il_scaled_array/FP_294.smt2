(declare-fun b_ack!4021 () (_ BitVec 64))
(declare-fun a_ack!4022 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!4022) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!4022)))
(assert (not (= #x00000000 a_ack!4022)))
(assert (= #x00000001 a_ack!4022))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!4021))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!4021))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4022 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!4022)))
(assert (= #x00000001 a_ack!4022))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!4021))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!4021))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4021) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!4022))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!4022))
       #x0000000000000319))
(assert (bvsle #x00000001 a_ack!4022))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #xffffffff a_ack!4022)))
       #x0000000000000319))

(check-sat)
(exit)
