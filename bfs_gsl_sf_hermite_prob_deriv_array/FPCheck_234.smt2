(declare-fun b_ack!1513 () (_ BitVec 32))
(declare-fun a_ack!1515 () (_ BitVec 32))
(declare-fun c_ack!1514 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1513 #x00000000)))
(assert (not (bvslt a_ack!1515 #x00000000)))
(assert (not (= #x00000000 b_ack!1513)))
(assert (not (= #x00000001 b_ack!1513)))
(assert (not (= #x00000000 a_ack!1515)))
(assert (not (= #x00000001 a_ack!1515)))
(assert (not (bvslt (bvsub b_ack!1513 a_ack!1515) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1513 a_ack!1515) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1513 a_ack!1515))))
(assert (= #x00000001 (bvsub b_ack!1513 a_ack!1515)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!1513 a_ack!1515)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!1513 a_ack!1515))))
(assert (not (= #x00000000 (bvsub b_ack!1513 a_ack!1515))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1514))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvadd #x00000001 (bvsub b_ack!1513 a_ack!1515))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1514))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) c_ack!1514)))))
(assert (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) c_ack!1514)) #x3cb0000000000000))

(check-sat)
(exit)
