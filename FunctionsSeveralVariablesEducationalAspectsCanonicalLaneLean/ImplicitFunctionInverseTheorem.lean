import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ImplicitFunctionInverseTheoremPackage where
  implicitFunctionTheorem : Prop
  inverseFunctionTheorem : Prop
  jacobianNonSingular : Prop
  localDiffeomorphism : Prop
  differentiationOfImplicit : Prop
  changeOfVariablesFormula : Prop

structure ImplicitFunctionInverseTheoremEvidence (I : ImplicitFunctionInverseTheoremPackage) where
  implicitFunctionTheoremClosed : I.implicitFunctionTheorem
  inverseFunctionTheoremClosed : I.inverseFunctionTheorem
  jacobianNonSingularClosed : I.jacobianNonSingular
  localDiffeomorphismClosed : I.localDiffeomorphism
  differentiationOfImplicitClosed : I.differentiationOfImplicit
  changeOfVariablesFormulaClosed : I.changeOfVariablesFormula

def ImplicitFunctionInverseTheoremClosed (I : ImplicitFunctionInverseTheoremPackage) : Prop :=
  I.implicitFunctionTheorem ∧ I.inverseFunctionTheorem ∧ I.jacobianNonSingular ∧
  I.localDiffeomorphism ∧ I.differentiationOfImplicit ∧ I.changeOfVariablesFormula

theorem implicit_function_inverse_theorem_closed_from_evidence
    (I : ImplicitFunctionInverseTheoremPackage)
    (E : ImplicitFunctionInverseTheoremEvidence I) : ImplicitFunctionInverseTheoremClosed I := by
  exact And.intro E.implicitFunctionTheoremClosed
    (And.intro E.inverseFunctionTheoremClosed
      (And.intro E.jacobianNonSingularClosed
        (And.intro E.localDiffeomorphismClosed
          (And.intro E.differentiationOfImplicitClosed E.changeOfVariablesFormulaClosed))))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse