(declare-fun b_ack!2357 () (_ BitVec 64))
(declare-fun a_ack!2358 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2358) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2358) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2358))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2357))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!2357)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2357))
               (CF_log b_ack!2357))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fea51a6625307d3)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fea51a6625307d3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fea51a6625307d3)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fea51a6625307d3)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                  (CF_log b_ack!2357)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea51a6625307d3)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                           (CF_log b_ack!2357)))))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fea51a6625307d3)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fea51a6625307d3)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2357))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea51a6625307d3)
                                   a!1))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea51a6625307d3)
                           a!1))))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                 (CF_log b_ack!2357))))))

(check-sat)
(exit)
