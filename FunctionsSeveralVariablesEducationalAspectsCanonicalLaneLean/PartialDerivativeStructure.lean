import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspects

structure PartialDerivativeStructure where
  functionSpace : Type u
  partialDerivativeDefined : Prop
  clairautTheoremHolds : Prop
  higherOrderDerivativesExist : Prop

structure PartialDerivativeStructureEvidence (D : PartialDerivativeStructure) where
  partialDerivativeDefinedClosed : D.partialDerivativeDefined
  clairautTheoremHoldsClosed : D.clairautTheoremHolds
  higherOrderDerivativesExistClosed : D.higherOrderDerivativesExist

def PartialDerivativeStructureClosed (D : PartialDerivativeStructure) : Prop :=
  D.partialDerivativeDefined ∧ D.clairautTheoremHolds ∧ D.higherOrderDerivativesExist

theorem partial_derivative_structure_closed_from_evidence (D : PartialDerivativeStructure) (E : PartialDerivativeStructureEvidence D) : PartialDerivativeStructureClosed D := by
  exact And.intro E.partialDerivativeDefinedClosed (And.intro E.clairautTheoremHoldsClosed E.higherOrderDerivativesExistClosed)

end FunctionsSeveralVariablesEducationalAspects
end HautevilleHouse