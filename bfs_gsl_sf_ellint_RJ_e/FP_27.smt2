(declare-fun e_ack!669 () (_ BitVec 32))
(declare-fun a_ack!670 () (_ BitVec 64))
(declare-fun b_ack!666 () (_ BitVec 64))
(declare-fun c_ack!667 () (_ BitVec 64))
(declare-fun d_ack!668 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!669 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!666) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!667) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!670)
                    ((_ to_fp 11 53) b_ack!666))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!670)
                    ((_ to_fp 11 53) c_ack!667))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!666)
                    ((_ to_fp 11 53) c_ack!667))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!668) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!670) ((_ to_fp 11 53) b_ack!666))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!666) ((_ to_fp 11 53) c_ack!667))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!667) ((_ to_fp 11 53) d_ack!668))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!668) ((_ to_fp 11 53) #x551c4b19c41f715f)))

(check-sat)
(exit)
