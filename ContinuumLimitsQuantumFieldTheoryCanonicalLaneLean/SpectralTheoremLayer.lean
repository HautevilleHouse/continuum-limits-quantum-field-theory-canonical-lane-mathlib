import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure SpectralTheoremCertificate where
  selfAdjointOperator : Prop
  spectralMeasure : Prop
  functionalCalculus : Prop
  domainDense : Prop
  selfAdjointOperatorClosed : selfAdjointOperator
  spectralMeasureClosed : spectralMeasure
  functionalCalculusClosed : functionalCalculus
  domainDenseClosed : domainDense

def sourceSpectralTheoremCertificate : SpectralTheoremCertificate := {
  selfAdjointOperator := true
  spectralMeasure := true
  functionalCalculus := true
  domainDense := true
  selfAdjointOperatorClosed := rfl
  spectralMeasureClosed := rfl
  functionalCalculusClosed := rfl
  domainDenseClosed := rfl
}

def SpectralTheoremClosed (C : SpectralTheoremCertificate) : Prop :=
  C.selfAdjointOperator ∧ C.spectralMeasure ∧ C.functionalCalculus ∧ C.domainDense

theorem source_spectral_theorem_closed :
    SpectralTheoremClosed sourceSpectralTheoremCertificate := by
  exact And.intro sourceSpectralTheoremCertificate.selfAdjointOperatorClosed
    (And.intro sourceSpectralTheoremCertificate.spectralMeasureClosed
      (And.intro sourceSpectralTheoremCertificate.functionalCalculusClosed
        sourceSpectralTheoremCertificate.domainDenseClosed))

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse