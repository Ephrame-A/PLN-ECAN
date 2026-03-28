;; ============================================================
;; ECAN + PLN Knowledge Base — Insect Taxonomy
;; ============================================================
;; A small, self-contained knowledge base for testing ECAN→PLN
;; integration. Uses WordNet-style synset IDs.
;;
;; Relations are stored as: (IsA child parent) with truth values
;; that can be loaded into ECAN's TypeSpace via setStv and then
;; converted to PLN Sentence format.
;; ============================================================

;; ---- Core taxonomy chain (for transitive deduction) ----
;; holometabola → insect → arthropod → animal
(IsA holometabola.n.01 insect.n.01)
(IsA insect.n.01 arthropod.n.01)
(IsA arthropod.n.01 animal.n.01)

;; ---- Additional insect subtypes ----
(IsA ephemeron.n.01 insect.n.01)
(IsA defoliator.n.01 insect.n.01)
(IsA pollinator.n.01 insect.n.01)
(IsA social_insect.n.01 insect.n.01)
(IsA gallfly.n.03 insect.n.01)

;; ---- Arthropod subtypes (parallel branch) ----
(IsA arachnid.n.01 arthropod.n.01)
(IsA crustacean.n.01 arthropod.n.01)

;; ---- Part-whole links ----
(HasPartLink insect.n.01 wing.n.01)
(HasPartLink insect.n.01 thorax.n.03)
(HasPartLink insect.n.01 antenna.n.03)

;; ---- Membership links ----
(MemberLink insect.n.01 arthropoda.n.01)
(MemberLink insect.n.01 swarm.n.02)

;; ---- Synset name mappings ----
(InSynset holometabola holometabola.n.01)
(InSynset metabola holometabola.n.01)
(InSynset ephemeron ephemeron.n.01)
(InSynset defoliator defoliator.n.01)
(InSynset pollinator pollinator.n.01)
(InSynset social_insect social_insect.n.01)
(InSynset gallfly gallfly.n.03)
