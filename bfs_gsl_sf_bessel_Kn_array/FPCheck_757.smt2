(declare-fun a_ack!2959 () (_ BitVec 32))
(declare-fun b_ack!2957 () (_ BitVec 32))
(declare-fun c_ack!2958 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2959 #x00000000)))
(assert (not (bvslt b_ack!2957 a_ack!2959)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2958) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2957))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2958) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2958) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2958) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 c_ack!2958))

(check-sat)
(exit)
