(declare-fun c_ack!58 () (_ BitVec 32))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!58 #x00000007)))
       #x0000000000000011))

(check-sat)
(exit)
