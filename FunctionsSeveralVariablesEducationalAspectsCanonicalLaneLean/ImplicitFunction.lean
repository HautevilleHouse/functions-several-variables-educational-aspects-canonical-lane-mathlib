import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Inverse

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ImplicitFunctionPackage (A : AdmissibleClass) where
  inverseFunctionTheorem : Prop
  implicitFunctionExistence : Prop
  differentiabilityOfImplicit : Prop
  constraintSatisfaction : Prop

structure ImplicitFunctionEvidence {A : AdmissibleClass} (I : ImplicitFunctionPackage A) where
  inverseFunctionTheoremClosed : I.inverseFunctionTheorem
  implicitFunctionExistenceClosed : I.implicitFunctionExistence
  differentiabilityOfImplicitClosed : I.differentiabilityOfImplicit
  constraintSatisfactionClosed : I.constraintSatisfaction

def ImplicitFunctionClosed {A : AdmissibleClass} (I : ImplicitFunctionPackage A) : Prop :=
  I.inverseFunctionTheorem ∧ I.implicitFunctionExistence ∧ I.differentiabilityOfImplicit ∧ I.constraintSatisfaction

theorem implicit_function_closed_from_evidence {A : AdmissibleClass}
    (I : ImplicitFunctionPackage A) (E : ImplicitFunctionEvidence I) : ImplicitFunctionClosed I := by
  exact And.intro E.inverseFunctionTheoremClosed (And.intro E.implicitFunctionExistenceClosed (And.intro E.differentiabilityOfImplicitClosed E.constraintSatisfactionClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse