(declare-fun c_ack!100 () (_ BitVec 32))
(declare-fun a_ack!101 () (_ BitVec 64))
(declare-fun b_ack!99 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!100 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!101) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!99) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!101)
                    ((_ to_fp 11 53) b_ack!99))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!101) ((_ to_fp 11 53) b_ack!99)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!101) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!101)
                       ((_ to_fp 11 53) b_ack!99))
               ((_ to_fp 11 53) a_ack!101))
       ((_ to_fp 11 53) b_ack!99)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!101)
                       ((_ to_fp 11 53) b_ack!99))
               ((_ to_fp 11 53) b_ack!99))
       ((_ to_fp 11 53) a_ack!101)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!101)
                  ((_ to_fp 11 53) b_ack!99))
          ((_ to_fp 11 53) b_ack!99))
  #x4008000000000000))

(check-sat)
(exit)
