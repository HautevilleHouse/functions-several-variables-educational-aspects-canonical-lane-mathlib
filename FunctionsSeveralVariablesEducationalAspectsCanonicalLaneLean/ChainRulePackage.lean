import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ChainRulePackage (D : DomainObject) where
  outerFunction : ℝ^m → ℝ^n
  innerFunction : D.carrier → ℝ^m
  composition : D.carrier → ℝ^n
  jacobianProduct : Prop
  differentiabilityPreserved : Prop

structure ChainRuleEvidence {D : DomainObject} (C : ChainRulePackage D) where
  jacobianProductClosed : C.jacobianProduct
  differentiabilityPreservedClosed : C.differentiabilityPreserved

def ChainRuleClosed {D : DomainObject} (C : ChainRulePackage D) : Prop :=
  C.jacobianProduct ∧ C.differentiabilityPreserved

theorem chain_rule_closed_from_evidence {D : DomainObject} (C : ChainRulePackage D) (E : ChainRuleEvidence C) : ChainRuleClosed C := by
  exact And.intro E.jacobianProductClosed E.differentiabilityPreservedClosed

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse