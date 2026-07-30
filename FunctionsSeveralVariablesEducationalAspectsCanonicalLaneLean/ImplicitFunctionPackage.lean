import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ImplicitFunctionPackage where
  functionDefined : Prop
  derivativeNondegenerate : Prop
  existenceCondition : Prop
  uniquenessCondition : Prop
  differentiabilityOfImplicit : Prop
  functionDefinedClosed : functionDefined
  derivativeNondegenerateClosed : derivativeNondegenerate
  existenceConditionClosed : existenceCondition
  uniquenessConditionClosed : uniquenessCondition
  differentiabilityOfImplicitClosed : differentiabilityOfImplicit

structure ImplicitFunctionEvidence (I : ImplicitFunctionPackage) where
  functionDefinedClosed : I.functionDefined
  derivativeNondegenerateClosed : I.derivativeNondegenerate
  existenceConditionClosed : I.existenceCondition
  uniquenessConditionClosed : I.uniquenessCondition
  differentiabilityOfImplicitClosed : I.differentiabilityOfImplicit

def ImplicitFunctionClosed (I : ImplicitFunctionPackage) : Prop :=
  I.functionDefined ∧ I.derivativeNondegenerate ∧ I.existenceCondition ∧ I.uniquenessCondition ∧ I.differentiabilityOfImplicit

theorem implicit_function_closed_from_evidence (I : ImplicitFunctionPackage) (E : ImplicitFunctionEvidence I) : ImplicitFunctionClosed I := by
  exact And.intro E.functionDefinedClosed
    (And.intro E.derivativeNondegenerateClosed
      (And.intro E.existenceConditionClosed
        (And.intro E.uniquenessConditionClosed E.differentiabilityOfImplicitClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
