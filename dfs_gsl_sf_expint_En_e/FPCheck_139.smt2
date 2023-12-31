(declare-fun a_ack!417 () (_ BitVec 32))
(declare-fun b_ack!416 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!417 #x00000000)))
(assert (not (= #x00000000 a_ack!417)))
(assert (not (= #x00000001 a_ack!417)))
(assert (= #x00000002 a_ack!417))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!416) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!416) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!416) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!416) ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 b_ack!416))

(check-sat)
(exit)
