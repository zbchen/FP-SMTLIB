(declare-fun b_ack!1926 () (_ BitVec 32))
(declare-fun a_ack!1928 () (_ BitVec 32))
(declare-fun c_ack!1927 () (_ BitVec 64))
(assert (not (bvslt b_ack!1926 #x00000000)))
(assert (not (bvslt a_ack!1928 #x00000000)))
(assert (not (bvslt b_ack!1926 a_ack!1928)))
(assert (not (bvult b_ack!1926 a_ack!1928)))
(assert (not (= a_ack!1928 b_ack!1926)))
(assert (= #x00000000 a_ack!1928))
(assert (bvult a_ack!1928 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1928)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1928)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1926 a_ack!1928) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1926 a_ack!1928))))
(assert (not (= #x00000001 (bvsub b_ack!1926 a_ack!1928))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1927) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1927))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1926 a_ack!1928)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1927))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 (bvsub b_ack!1926 a_ack!1928)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1927)
                                   ((_ to_fp 11 53) c_ack!1927))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1927))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))

(check-sat)
(exit)
