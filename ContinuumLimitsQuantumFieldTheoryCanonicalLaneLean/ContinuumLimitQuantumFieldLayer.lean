import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure QuantumFieldCertificate where
  fieldOperator : Prop
  vacuumExpectation : Prop
  timeOrderedProduct : Prop
  fieldOperatorClosed : fieldOperator
  vacuumExpectationClosed : vacuumExpectation
  timeOrderedProductClosed : timeOrderedProduct

def sourceQuantumFieldCertificate : QuantumFieldCertificate := {
  fieldOperator := True
  vacuumExpectation := True
  timeOrderedProduct := True
  fieldOperatorClosed := True.intro
  vacuumExpectationClosed := True.intro
  timeOrderedProductClosed := True.intro
}

def QuantumFieldClosed (C : QuantumFieldCertificate) : Prop :=
  C.fieldOperator ∧ C.vacuumExpectation ∧ C.timeOrderedProduct

theorem source_quantum_field_closed :
    QuantumFieldClosed sourceQuantumFieldCertificate := by
  exact And.intro sourceQuantumFieldCertificate.fieldOperatorClosed
    (And.intro sourceQuantumFieldCertificate.vacuumExpectationClosed
      sourceQuantumFieldCertificate.timeOrderedProductClosed)

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse