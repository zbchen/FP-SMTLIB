(declare-fun a_ack!5611 () (_ BitVec 32))
(declare-fun b_ack!5609 () (_ BitVec 32))
(declare-fun c_ack!5610 () (_ BitVec 64))
(assert (not (bvslt a_ack!5611 #x00000000)))
(assert (not (bvslt b_ack!5609 a_ack!5611)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5610) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!5611 #x00000000)))
(assert (not (= #x00000000 a_ack!5611)))
(assert (not (= #x00000001 a_ack!5611)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5610) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5610) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!5610))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!5611 a_ack!5611))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!5611))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5610) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5610)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!5611))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3feccccccccccccd))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5610)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5611))
            ((_ to_fp 11 53) #x3ff199999999999a))))

(check-sat)
(exit)
