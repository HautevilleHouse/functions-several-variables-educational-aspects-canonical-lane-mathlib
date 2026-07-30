import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspects

structure ImplicitFunctionTheorem where
  map : Type u → Type v → Type w
  implicitFunctionExists : Prop
  derivativeFormulaValid : Prop
  regularityPreserved : Prop

structure ImplicitFunctionTheoremEvidence (I : ImplicitFunctionTheorem) where
  implicitFunctionExistsClosed : I.implicitFunctionExists
  derivativeFormulaValidClosed : I.derivativeFormulaValid
  regularityPreservedClosed : I.regularityPreserved

def ImplicitFunctionTheoremClosed (I : ImplicitFunctionTheorem) : Prop :=
  I.implicitFunctionExists ∧ I.derivativeFormulaValid ∧ I.regularityPreserved

theorem implicit_function_theorem_closed_from_evidence (I : ImplicitFunctionTheorem) (E : ImplicitFunctionTheoremEvidence I) : ImplicitFunctionTheoremClosed I := by
  exact And.intro E.implicitFunctionExistsClosed (And.intro E.derivativeFormulaValidClosed E.regularityPreservedClosed)

end FunctionsSeveralVariablesEducationalAspects
end HautevilleHouse