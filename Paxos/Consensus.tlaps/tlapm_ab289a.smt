;; Proof obligation:
;;ASSUME NEW CONSTANT Values,
;;        NEW VARIABLE chosen,
;;        Cardinality(chosen) =< 1 ,
;;        (/\ chosen = {}
;;         /\ \E v \in Values : ?chosen#prime = {v})
;;        \/ ?chosen#prime = chosen ,
;;        \E v \in Values : ?chosen#prime = {v} ,
;;        chosen = {} 
;; PROVE  Cardinality(?chosen#prime) =< 1
;; TLA+ Proof Manager 1.4.5 (build 33809)
;; Proof obligation #1
;;   generated from file "C:\\Users\\15150\\Documents\\GitHub\\tlaps-examples\\Paxos\\Consensus.tla", line 46, characters 5-6

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
(declare-fun Values () u)
(declare-fun a_aunde_unde_5a () u)
(declare-fun a_chosenhash_primea () u)
(declare-fun chosen () u)
(declare-fun v () u)

(assert
  (forall ((X_9 Int)) (! (= (u2int (int2u X_9)) X_9) :pattern ((int2u X_9)))))
(assert
  (forall ((M_7 Int) (N_8 Int))
  (! (= (tla__le (int2u M_7) (int2u N_8)) (<= M_7 N_8)) :pattern ((tla__le (int2u M_7) (int2u N_8))))))
(assert
  (forall ((S_12 u) (T_13 u))
  (=>
  (forall ((X_9 u)) (= (tla__in X_9 S_12) (tla__in X_9 T_13))) (= S_12 T_13))))
(assert
  (forall ((X_9 u))
  (! (= (tla__in X_9 tla__emptyset) false) :pattern ((tla__in X_9 tla__emptyset)))))
(assert (not (tla__le (Cardinality a_aunde_unde_5a) (int2u 1))))
(assert
  (forall ((a_v6a u))
    (! (= (tla__in a_v6a a_aunde_unde_5a) (= a_v6a v)) :pattern ((tla__in
                                                                   a_v6a
                                                                   a_aunde_unde_5a)))))
(assert (tla__le (Cardinality tla__emptyset) (int2u 1)))
(assert
  (or
    (exists ((a_vunde_1a u))
      (and
        (tla__in a_vunde_1a Values)
        (forall ((a_v1a u)) (= (= a_v1a v) (= a_v1a a_vunde_1a)))))
    (forall ((a_v2a u)) (not (= a_v2a v)))))
(assert (tla__in v Values))
(assert
  (forall ((a_v3a u)) (= (tla__in a_v3a a_chosenhash_primea) (= a_v3a v))))
(assert (forall ((a_v4a u)) (not (tla__in a_v4a chosen))))

(check-sat)
(exit)
