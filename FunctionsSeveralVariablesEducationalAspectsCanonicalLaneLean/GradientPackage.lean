import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure GradientPackage where
  partialDerivPackage : PartialDerivativePackage
  gradient : (Nat → ℝ) → (Nat → ℝ) → ℝ
  directionalDerivative : Prop
  maximalIncrease : Prop
  gradientPerpendicularLevelSet : Prop

structure GradientEvidence (G : GradientPackage) where
  directionalDerivativeClosed : G.directionalDerivative
  maximalIncreaseClosed : G.maximalIncrease
  gradientPerpendicularLevelSetClosed : G.gradientPerpendicularLevelSet

def GradientClosed (G : GradientPackage) : Prop :=
  G.directionalDerivative ∧ G.maximalIncrease ∧ G.gradientPerpendicularLevelSet

theorem gradient_closed_from_evidence (G : GradientPackage) (E : GradientEvidence G) :
    GradientClosed G := by
  exact And.intro E.directionalDerivativeClosed (And.intro E.maximalIncreaseClosed E.gradientPerpendicularLevelSetClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse