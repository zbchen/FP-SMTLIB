(declare-fun a_ack!1040 () (_ BitVec 32))
(declare-fun b_ack!1039 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1040 #xffffffff)))
(assert (not (= #xffffffff a_ack!1040)))
(assert (not (= #x00000000 a_ack!1040)))
(assert (not (= #x00000001 a_ack!1040)))
(assert (= #x00000002 a_ack!1040))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!1039 #x3ff0000000000000))

(check-sat)
(exit)
