import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure PartialDerivativePackage where
  domain : Type u
  codomain : Type v
  partialDerivativeDefined : Prop
  gradientDefined : Prop
  higherOrderDerivativesDefined : Prop
  chainRuleHolds : Prop
  clairautTheoremHolds : Prop
  partialDerivativeDefinedClosed : partialDerivativeDefined
  gradientDefinedClosed : gradientDefined
  higherOrderDerivativesDefinedClosed : higherOrderDerivativesDefined
  chainRuleHoldsClosed : chainRuleHolds
  clairautTheoremHoldsClosed : clairautTheoremHolds

structure PartialDerivativeEvidence (P : PartialDerivativePackage) where
  partialDerivativeDefinedClosed : P.partialDerivativeDefined
  gradientDefinedClosed : P.gradientDefined
  higherOrderDerivativesDefinedClosed : P.higherOrderDerivativesDefined
  chainRuleHoldsClosed : P.chainRuleHolds
  clairautTheoremHoldsClosed : P.clairautTheoremHolds

def PartialDerivativeClosed (P : PartialDerivativePackage) : Prop :=
  P.partialDerivativeDefined ∧ P.gradientDefined ∧ P.higherOrderDerivativesDefined ∧ P.chainRuleHolds ∧ P.clairautTheoremHolds

theorem partial_derivative_closed_from_evidence (P : PartialDerivativePackage) (E : PartialDerivativeEvidence P) : PartialDerivativeClosed P := by
  exact And.intro E.partialDerivativeDefinedClosed
    (And.intro E.gradientDefinedClosed
      (And.intro E.higherOrderDerivativesDefinedClosed
        (And.intro E.chainRuleHoldsClosed E.clairautTheoremHoldsClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
