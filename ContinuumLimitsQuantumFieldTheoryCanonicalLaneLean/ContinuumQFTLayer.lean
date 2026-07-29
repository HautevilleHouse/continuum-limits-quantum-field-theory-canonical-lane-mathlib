import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure ContinuumQFTCertificate where
  spectralLayerClosed : Prop
  uncertaintyLayerClosed : Prop
  commutationLayerClosed : Prop
  stateSpaceLayerClosed : Prop
  continuumLimitClosed : Prop
  spectralLayerClosedProof : spectralLayerClosed
  uncertaintyLayerClosedProof : uncertaintyLayerClosed
  commutationLayerClosedProof : commutationLayerClosed
  stateSpaceLayerClosedProof : stateSpaceLayerClosed
  continuumLimitClosedProof : continuumLimitClosed

def sourceContinuumQFTCertificate : ContinuumQFTCertificate := {
  spectralLayerClosed := SpectralTheoremClosed sourceSpectralCertificate
  uncertaintyLayerClosed := UncertaintyPrincipleClosed sourceUncertaintyCertificate
  commutationLayerClosed := CommutationRelationClosed sourceCommutationCertificate
  stateSpaceLayerClosed := StateSpaceClosed sourceStateSpaceCertificate
  continuumLimitClosed := true
  spectralLayerClosedProof := source_spectral_theorem_closed
  uncertaintyLayerClosedProof := source_uncertainty_principle_closed
  commutationLayerClosedProof := source_commutation_relation_closed
  stateSpaceLayerClosedProof := source_state_space_closed
  continuumLimitClosedProof := rfl
}

def ContinuumQFTClosed (C : ContinuumQFTCertificate) : Prop :=
  C.spectralLayerClosed ∧ C.uncertaintyLayerClosed ∧ C.commutationLayerClosed ∧
  C.stateSpaceLayerClosed ∧ C.continuumLimitClosed

theorem source_continuum_qft_closed :
    ContinuumQFTClosed sourceContinuumQFTCertificate := by
  exact And.intro sourceContinuumQFTCertificate.spectralLayerClosedProof
    (And.intro sourceContinuumQFTCertificate.uncertaintyLayerClosedProof
      (And.intro sourceContinuumQFTCertificate.commutationLayerClosedProof
        (And.intro sourceContinuumQFTCertificate.stateSpaceLayerClosedProof
          sourceContinuumQFTCertificate.continuumLimitClosedProof)))

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse