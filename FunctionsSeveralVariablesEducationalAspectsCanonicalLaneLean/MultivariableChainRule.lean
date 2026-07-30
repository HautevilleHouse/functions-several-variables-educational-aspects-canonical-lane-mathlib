import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure MultivariableChainRulePackage where
  f : ℝ^3 → ℝ^2
  g : ℝ^2 → ℝ
  composition : ℝ^3 → ℝ
  derivativeComposition : Prop
  chainRuleFormula : Prop

structure MultivariableChainRuleEvidence (P : MultivariableChainRulePackage) where
  derivativeCompositionClosed : P.derivativeComposition
  chainRuleFormulaClosed : P.chainRuleFormula

def MultivariableChainRuleClosed (P : MultivariableChainRulePackage) : Prop :=
  P.derivativeComposition ∧ P.chainRuleFormula

theorem multivariable_chain_rule_closed_from_evidence (P : MultivariableChainRulePackage)
    (E : MultivariableChainRuleEvidence P) : MultivariableChainRuleClosed P := by
  exact And.intro E.derivativeCompositionClosed E.chainRuleFormulaClosed

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse