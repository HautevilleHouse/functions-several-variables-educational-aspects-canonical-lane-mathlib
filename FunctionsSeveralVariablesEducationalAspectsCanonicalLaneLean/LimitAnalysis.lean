import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure LimitDefinitionPackage where
  domain : Type u
  codomain : Type v
  limitPoint : domain
  limitValue : codomain
  epsilonDeltaCondition : Prop
  sequentialCondition : Prop
  epsilonDeltaConditionClosed : epsilonDeltaCondition
  sequentialConditionClosed : sequentialCondition
  equivalenceCondition : epsilonDeltaCondition ↔ sequentialCondition

structure LimitDefinitionEvidence (L : LimitDefinitionPackage) where
  epsilonDeltaConditionClosed : L.epsilonDeltaCondition
  sequentialConditionClosed : L.sequentialCondition
  equivalenceConditionClosed : L.equivalenceCondition

def LimitDefinitionClosed (L : LimitDefinitionPackage) : Prop :=
  L.epsilonDeltaCondition ∧ L.sequentialCondition ∧ (L.epsilonDeltaCondition ↔ L.sequentialCondition)

theorem limit_definition_closed_from_evidence (L : LimitDefinitionPackage) (E : LimitDefinitionEvidence L) : LimitDefinitionClosed L := by
  exact And.intro E.epsilonDeltaConditionClosed (And.intro E.sequentialConditionClosed E.equivalenceConditionClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
