(declare-fun a_ack!299 () (_ BitVec 64))
(declare-fun b_ack!296 () (_ BitVec 64))
(declare-fun epsabs_ack!297 () (_ BitVec 64))
(declare-fun epsrel_ack!298 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!296)
                                   ((_ to_fp 11 53) a_ack!299))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!297) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!298)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!298)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))

(check-sat)
(exit)
