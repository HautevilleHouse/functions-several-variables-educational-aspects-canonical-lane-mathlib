import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure MultipleIntegralPackage where
  integrableFunction : Prop
  domainOfIntegration : Prop
  iteratedIntegralDefined : Prop
  fubiniTheoremHolds : Prop
  changeOfVariablesFormulaHolds : Prop
  integrableFunctionClosed : integrableFunction
  domainOfIntegrationClosed : domainOfIntegration
  iteratedIntegralDefinedClosed : iteratedIntegralDefined
  fubiniTheoremHoldsClosed : fubiniTheoremHolds
  changeOfVariablesFormulaHoldsClosed : changeOfVariablesFormulaHolds

structure MultipleIntegralEvidence (M : MultipleIntegralPackage) where
  integrableFunctionClosed : M.integrableFunction
  domainOfIntegrationClosed : M.domainOfIntegration
  iteratedIntegralDefinedClosed : M.iteratedIntegralDefined
  fubiniTheoremHoldsClosed : M.fubiniTheoremHolds
  changeOfVariablesFormulaHoldsClosed : M.changeOfVariablesFormulaHolds

def MultipleIntegralClosed (M : MultipleIntegralPackage) : Prop :=
  M.integrableFunction ∧ M.domainOfIntegration ∧ M.iteratedIntegralDefined ∧ M.fubiniTheoremHolds ∧ M.changeOfVariablesFormulaHolds

theorem multiple_integral_closed_from_evidence (M : MultipleIntegralPackage) (E : MultipleIntegralEvidence M) : MultipleIntegralClosed M := by
  exact And.intro E.integrableFunctionClosed
    (And.intro E.domainOfIntegrationClosed
      (And.intro E.iteratedIntegralDefinedClosed
        (And.intro E.fubiniTheoremHoldsClosed E.changeOfVariablesFormulaHoldsClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
