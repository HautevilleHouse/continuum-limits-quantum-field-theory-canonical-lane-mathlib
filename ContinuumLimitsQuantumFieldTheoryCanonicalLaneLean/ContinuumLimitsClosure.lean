import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure ContinuumLimitsClosureCertificate where
  continuumQFT : ContinuumQFTCertificate
  spectralTheoremClosed : Prop
  uncertaintyPrincipleClosed : Prop
  commutationRelationClosed : Prop
  stateSpaceClosed : Prop
  spectralTheoremClosedProof : spectralTheoremClosed
  uncertaintyPrincipleClosedProof : uncertaintyPrincipleClosed
  commutationRelationClosedProof : commutationRelationClosed
  stateSpaceClosedProof : stateSpaceClosed

def sourceContinuumLimitsClosureCertificate : ContinuumLimitsClosureCertificate := {
  continuumQFT := sourceContinuumQFTCertificate
  spectralTheoremClosed := SpectralTheoremClosed sourceSpectralCertificate
  uncertaintyPrincipleClosed := UncertaintyPrincipleClosed sourceUncertaintyCertificate
  commutationRelationClosed := CommutationRelationClosed sourceCommutationCertificate
  stateSpaceClosed := StateSpaceClosed sourceStateSpaceCertificate
  spectralTheoremClosedProof := source_spectral_theorem_closed
  uncertaintyPrincipleClosedProof := source_uncertainty_principle_closed
  commutationRelationClosedProof := source_commutation_relation_closed
  stateSpaceClosedProof := source_state_space_closed
}

def ContinuumLimitsClosureClosed (C : ContinuumLimitsClosureCertificate) : Prop :=
  ContinuumQFTClosed C.continuumQFT ∧
  C.spectralTheoremClosed ∧ C.uncertaintyPrincipleClosed ∧
  C.commutationRelationClosed ∧ C.stateSpaceClosed

theorem source_continuum_limits_closure_closed :
    ContinuumLimitsClosureClosed sourceContinuumLimitsClosureCertificate := by
  exact And.intro source_continuum_qft_closed
    (And.intro sourceContinuumLimitsClosureCertificate.spectralTheoremClosedProof
      (And.intro sourceContinuumLimitsClosureCertificate.uncertaintyPrincipleClosedProof
        (And.intro sourceContinuumLimitsClosureCertificate.commutationRelationClosedProof
          sourceContinuumLimitsClosureCertificate.stateSpaceClosedProof)))

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse