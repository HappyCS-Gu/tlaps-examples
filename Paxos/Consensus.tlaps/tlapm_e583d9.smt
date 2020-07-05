;; Proof obligation:
;;ASSUME NEW CONSTANT Values,
;;        NEW VARIABLE chosen
;; PROVE  chosen = {} => Cardinality(chosen) =< 1
;; TLA+ Proof Manager 1.4.5 (build 33809)
;; Proof obligation #1
;;   generated from file "C:\\Users\\15150\\Documents\\GitHub\\tlaps-examples\\Paxos\\Consensus.tla", line 31, characters 3-4

(set-logic UFNIA)
(declare-sort u 0)
;; Standard TLA+ operators
(declare-fun int2u (Int) u)
(declare-fun u2int (u) Int)
(declare-fun tla__le (u u) Bool)
(declare-fun tla__in (u u) Bool)
(declare-fun tla__emptyset () u)

;; Terms, predicates and strings
(declare-fun Cardinality (u) u)
(declare-fun chosen () u)

(assert
  (forall ((X_4 Int)) (! (= (u2int (int2u X_4)) X_4) :pattern ((int2u X_4)))))
(assert
  (forall ((M_2 Int) (N_3 Int))
  (! (= (tla__le (int2u M_2) (int2u N_3)) (<= M_2 N_3)) :pattern ((tla__le (int2u M_2) (int2u N_3))))))
(assert
  (forall ((S_7 u) (T_8 u))
  (=> (forall ((X_4 u)) (= (tla__in X_4 S_7) (tla__in X_4 T_8))) (= S_7 T_8))))
(assert
  (forall ((X_4 u))
  (! (= (tla__in X_4 tla__emptyset) false) :pattern ((tla__in X_4 tla__emptyset)))))
(assert (not (tla__le (Cardinality tla__emptyset) (int2u 1))))
(assert (forall ((a_v1a u)) (not (tla__in a_v1a chosen))))

(check-sat)
(exit)
