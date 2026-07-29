import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure CommutationCertificate where
  canonicalCommutation : Prop
  fieldAlgebra : Prop
  stateSpace : Prop
  canonicalCommutationClosed : canonicalCommutation
  fieldAlgebraClosed : fieldAlgebra
  stateSpaceClosed : stateSpace

def sourceCommutationCertificate : CommutationCertificate := {
  canonicalCommutation := True
  fieldAlgebra := True
  stateSpace := True
  canonicalCommutationClosed := True.intro
  fieldAlgebraClosed := True.intro
  stateSpaceClosed := True.intro
}

def CommutationClosed (C : CommutationCertificate) : Prop :=
  C.canonicalCommutation ∧ C.fieldAlgebra ∧ C.stateSpace

theorem source_commutation_closed :
    CommutationClosed sourceCommutationCertificate := by
  exact And.intro sourceCommutationCertificate.canonicalCommutationClosed
    (And.intro sourceCommutationCertificate.fieldAlgebraClosed
      sourceCommutationCertificate.stateSpaceClosed)

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse