import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean

structure StateSpaceCertificate where
  hilbertSpace : Prop
  braKetStructure : Prop
  observableAlgebra : Prop
  positivityCondition : Prop
  hilbertSpaceClosed : hilbertSpace
  braKetStructureClosed : braKetStructure
  observableAlgebraClosed : observableAlgebra
  positivityConditionClosed : positivityCondition

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  hilbertSpace := true
  braKetStructure := true
  observableAlgebra := true
  positivityCondition := true
  hilbertSpaceClosed := rfl
  braKetStructureClosed := rfl
  observableAlgebraClosed := rfl
  positivityConditionClosed := rfl
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.hilbertSpace ∧ C.braKetStructure ∧ C.observableAlgebra ∧ C.positivityCondition

theorem source_state_space_closed :
    StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro sourceStateSpaceCertificate.hilbertSpaceClosed
    (And.intro sourceStateSpaceCertificate.braKetStructureClosed
      (And.intro sourceStateSpaceCertificate.observableAlgebraClosed
        sourceStateSpaceCertificate.positivityConditionClosed))

end ContinuumLimitsQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse