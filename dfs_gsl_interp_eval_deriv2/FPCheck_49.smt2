(declare-fun xx_ack!358 () (_ BitVec 64))
(declare-fun x0_ack!359 () (_ BitVec 64))
(declare-fun x1_ack!357 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!358) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!358) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!358) ((_ to_fp 11 53) x0_ack!359)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!357)
               ((_ to_fp 11 53) x0_ack!359))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!358 x0_ack!359))

(check-sat)
(exit)
