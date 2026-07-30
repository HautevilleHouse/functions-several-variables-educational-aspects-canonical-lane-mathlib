import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure PartialDerivativePackage (A : AdmissibleClass) where
  directionalDerivative : Prop
  partialDerivativeExistence : Prop
  clairautTheorem : Prop
  gradientDefined : Prop

structure PartialDerivativeEvidence {A : AdmissibleClass} (P : PartialDerivativePackage A) where
  directionalDerivativeClosed : P.directionalDerivative
  partialDerivativeExistenceClosed : P.partialDerivativeExistence
  clairautTheoremClosed : P.clairautTheorem
  gradientDefinedClosed : P.gradientDefined

def PartialDerivativeClosed {A : AdmissibleClass} (P : PartialDerivativePackage A) : Prop :=
  P.directionalDerivative ∧ P.partialDerivativeExistence ∧ P.clairautTheorem ∧ P.gradientDefined

theorem partial_derivative_closed_from_evidence {A : AdmissibleClass}
    (P : PartialDerivativePackage A) (E : PartialDerivativeEvidence P) : PartialDerivativeClosed P := by
  exact And.intro E.directionalDerivativeClosed (And.intro E.partialDerivativeExistenceClosed (And.intro E.clairautTheoremClosed E.gradientDefinedClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse