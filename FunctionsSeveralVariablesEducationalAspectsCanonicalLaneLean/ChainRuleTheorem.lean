import HautevilleHouse.FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ChainRulePackage where
  totalDerivative : Prop
  compositionRule : Prop
  derivativeOfComposition : Prop

structure ChainRuleEvidence (C : ChainRulePackage) where
  totalDerivativeClosed : C.totalDerivative
  compositionRuleClosed : C.compositionRule
  derivativeOfCompositionClosed : C.derivativeOfComposition

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.totalDerivative ∧ C.compositionRule ∧ C.derivativeOfComposition

theorem chain_rule_closed_from_evidence (C : ChainRulePackage) (E : ChainRuleEvidence C) :
    ChainRuleClosed C := by
  exact And.intro E.totalDerivativeClosed (And.intro E.compositionRuleClosed E.derivativeOfCompositionClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse