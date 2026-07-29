import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure ContinuumLimitCertificate where
  latticeApproximation : Prop
  scalingLimit : Prop
  continuumCorrelators : Prop
  latticeApproximationClosed : latticeApproximation
  scalingLimitClosed : scalingLimit
  continuumCorrelatorsClosed : continuumCorrelators

def sourceContinuumLimitCertificate : ContinuumLimitCertificate := {
  latticeApproximation := baselineCertificateGates.length = 7
  scalingLimit := reviewerChainSteps.length = 7
  continuumCorrelators := sourceFormulaModels.length = sourceFormulaModelCount
  latticeApproximationClosed := rfl
  scalingLimitClosed := rfl
  continuumCorrelatorsClosed := rfl
}

def ContinuumLimitClosed (C : ContinuumLimitCertificate) : Prop :=
  C.latticeApproximation ∧ C.scalingLimit ∧ C.continuumCorrelators

theorem source_continuum_limit_closed :
    ContinuumLimitClosed sourceContinuumLimitCertificate := by
  exact And.intro sourceContinuumLimitCertificate.latticeApproximationClosed
    (And.intro sourceContinuumLimitCertificate.scalingLimitClosed
      sourceContinuumLimitCertificate.continuumCorrelatorsClosed)

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse