(declare-fun d_ack!28 () (_ BitVec 64))
(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun b_ack!27 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!28) ((_ to_fp 11 53) #x0024000000000001)))
(assert (bvsle #x00000000 b_ack!27))
(assert (not (bvsle #x00000001 b_ack!27)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) d_ack!28) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
