(declare-fun b_ack!743 () (_ BitVec 64))
(declare-fun c_ack!744 () (_ BitVec 64))
(declare-fun d_ack!745 () (_ BitVec 32))
(declare-fun a_ack!746 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!743) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!744) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!744)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!745))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!743) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!743) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) a_ack!746))
       ((_ to_fp 11 53) #x4083ec744754dd24)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!746)
                                  ((_ to_fp 11 53) b_ack!743)))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!743)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!746))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!744)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) c_ack!744))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!744)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!744)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!744)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!744)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fc5f15f15f15f16))
                 a!1)
         ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!744)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!744)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fc5f15f15f15f16))
                 ((_ to_fp 11 53) #x3fc5f15f15f15f16))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!744)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!744)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!746))
                           ((_ to_fp 11 53) b_ack!743))
                   ((_ to_fp 11 53) b_ack!743))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 ((_ to_fp 11 53) a_ack!746)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!746))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!746))
                           ((_ to_fp 11 53) b_ack!743)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!743))))

(check-sat)
(exit)
