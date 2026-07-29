import canonicallanelean.ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse