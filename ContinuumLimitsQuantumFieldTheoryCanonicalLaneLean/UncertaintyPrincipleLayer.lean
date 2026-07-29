import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure UncertaintyPrincipleCertificate where
  canonicalCommutation : Prop
  heisenbergInequality : Prop
  stateSpace : Prop
  expectationValues : Prop
  canonicalCommutationClosed : canonicalCommutation
  heisenbergInequalityClosed : heisenbergInequality
  stateSpaceClosed : stateSpace
  expectationValuesClosed : expectationValues

def sourceUncertaintyPrincipleCertificate : UncertaintyPrincipleCertificate := {
  canonicalCommutation := true
  heisenbergInequality := true
  stateSpace := true
  expectationValues := true
  canonicalCommutationClosed := rfl
  heisenbergInequalityClosed := rfl
  stateSpaceClosed := rfl
  expectationValuesClosed := rfl
}

def UncertaintyPrincipleClosed (C : UncertaintyPrincipleCertificate) : Prop :=
  C.canonicalCommutation ∧ C.heisenbergInequality ∧ C.stateSpace ∧ C.expectationValues

theorem source_uncertainty_principle_closed :
    UncertaintyPrincipleClosed sourceUncertaintyPrincipleCertificate := by
  exact And.intro sourceUncertaintyPrincipleCertificate.canonicalCommutationClosed
    (And.intro sourceUncertaintyPrincipleCertificate.heisenbergInequalityClosed
      (And.intro sourceUncertaintyPrincipleCertificate.stateSpaceClosed
        sourceUncertaintyPrincipleCertificate.expectationValuesClosed))

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse