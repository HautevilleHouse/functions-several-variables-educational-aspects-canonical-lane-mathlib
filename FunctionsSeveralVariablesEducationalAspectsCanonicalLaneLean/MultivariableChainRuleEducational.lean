import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure MultivariableChainRulePackage where
  compositeFunctions : Type u
  partialDerivativeComposition : Prop
  gradientChainRuleFormulated : Prop
  jacobianMatrixMultiplication : Prop
  chainRuleProved : Prop

structure MultivariableChainRuleEvidence (P : MultivariableChainRulePackage) where
  partialDerivativeCompositionClosed : P.partialDerivativeComposition
  gradientChainRuleFormulatedClosed : P.gradientChainRuleFormulated
  jacobianMatrixMultiplicationClosed : P.jacobianMatrixMultiplication
  chainRuleProvedClosed : P.chainRuleProved

def MultivariableChainRuleClosed (P : MultivariableChainRulePackage) : Prop :=
  P.partialDerivativeComposition ∧ P.gradientChainRuleFormulated ∧
  P.jacobianMatrixMultiplication ∧ P.chainRuleProved

theorem multivariable_chain_rule_closed_from_evidence (P : MultivariableChainRulePackage) (E : MultivariableChainRuleEvidence P) :
    MultivariableChainRuleClosed P := by
  exact And.intro E.partialDerivativeCompositionClosed
    (And.intro E.gradientChainRuleFormulatedClosed
      (And.intro E.jacobianMatrixMultiplicationClosed E.chainRuleProvedClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse