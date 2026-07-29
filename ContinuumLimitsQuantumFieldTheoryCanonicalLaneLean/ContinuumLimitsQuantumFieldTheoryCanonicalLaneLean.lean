import canonicalLaneMathlib.AdmissibleClass
import ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean.SpectralTheoremLayer
import ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean.UncertaintyPrincipleLayer
import ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean.StateSpaceLayer

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

def AdmissibleClass (A : AdmissibleClass) : Prop := True

theorem trivial_admissible : AdmissibleClass := by trivial

def ContinuumQFTClosure : Prop :=
  SpectralTheoremClosed sourceSpectralTheoremCertificate ∧
  UncertaintyPrincipleClosed sourceUncertaintyPrincipleCertificate ∧
  StateSpaceClosed sourceStateSpaceCertificate

theorem continuum_qft_closure_checked : ContinuumQFTClosure := by
  exact And.intro source_spectral_theorem_closed
    (And.intro source_uncertainty_principle_closed source_state_space_closed)

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse