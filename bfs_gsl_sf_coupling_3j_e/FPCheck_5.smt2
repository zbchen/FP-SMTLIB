(declare-fun a_ack!65 () (_ BitVec 32))
(declare-fun b_ack!60 () (_ BitVec 32))
(declare-fun c_ack!61 () (_ BitVec 32))
(declare-fun d_ack!62 () (_ BitVec 32))
(declare-fun e_ack!63 () (_ BitVec 32))
(declare-fun f_ack!64 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!65 #x00000000)))
(assert (not (bvslt b_ack!60 #x00000000)))
(assert (not (bvslt c_ack!61 #x00000000)))
(assert (not (bvslt b_ack!60 #x00000000)))
(assert (not (bvslt (bvadd a_ack!65 c_ack!61) b_ack!60)))
(assert (= #x00000000 (bvand (bvadd a_ack!65 b_ack!60 c_ack!61) #x00000001)))
(assert (not (bvslt a_ack!65 #x00000000)))
(assert (not (bvslt b_ack!60 #x00000000)))
(assert (not (bvslt c_ack!61 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!65 d_ack!62) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!60 e_ack!63) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!61 f_ack!64) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!62 e_ack!63 f_ack!64)))
(assert (= #x00000000 d_ack!62))
(assert (= #x00000000 e_ack!63))
(assert (= #x00000000 f_ack!64))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!65 b_ack!60 c_ack!61) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!60 e_ack!63) #x00000002)
                         (bvsdiv (bvsub c_ack!61 f_ack!64) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!65 d_ack!62) #x00000002)
                         (bvsdiv (bvadd c_ack!61 f_ack!64) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!60 e_ack!63) #x00000002)
                         (bvsdiv (bvsub c_ack!61 f_ack!64) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002)
                  (bvsdiv (bvsub a_ack!65 d_ack!62) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!65 d_ack!62) #x00000002)
            (bvsdiv (bvadd b_ack!60 e_ack!63) #x00000002))))
(assert (let ((a!1 (bvult a_ack!65
                  (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002) a_ack!65))
(assert (let ((a!1 (bvult b_ack!60
                  (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002) b_ack!60))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000 (bvsdiv (bvsub (bvadd a_ack!65 b_ack!60) c_ack!61) #x00000002)))
(assert (not (bvult a_ack!65 (bvsdiv (bvsub a_ack!65 d_ack!62) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!65 d_ack!62) #x00000002) a_ack!65))
(assert (not (bvult b_ack!60 (bvsdiv (bvsub b_ack!60 e_ack!63) #x00000002))))
(assert (= (bvsdiv (bvsub b_ack!60 e_ack!63) #x00000002) b_ack!60))
(assert (not (bvult c_ack!61 (bvsdiv (bvadd c_ack!61 f_ack!64) #x00000002))))
(assert (= (bvsdiv (bvadd c_ack!61 f_ack!64) #x00000002) c_ack!61))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x0000000000000000
  (CF_log (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven c_ack!61)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
