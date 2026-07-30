import canonicalLaneMathlib.AdmissibleClass
import FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean.ExtremeValueMultivariable

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ImplicitFunctionPackage where
  theoremStatementProved : Prop
  existenceUniquenessCovered : Prop
  differentiableDependencyShown : Prop
  manifoldInterpretation : Prop
  applicationsInEconomics : Prop

structure ImplicitFunctionEvidence (I : ImplicitFunctionPackage) where
  theoremStatementProvedClosed : I.theoremStatementProved
  existenceUniquenessCoveredClosed : I.existenceUniquenessCovered
  differentiableDependencyShownClosed : I.differentiableDependencyShown
  manifoldInterpretationClosed : I.manifoldInterpretation
  applicationsInEconomicsClosed : I.applicationsInEconomics

def ImplicitFunctionClosed (I : ImplicitFunctionPackage) : Prop :=
  I.theoremStatementProved ∧ I.existenceUniquenessCovered ∧
  I.differentiableDependencyShown ∧ I.manifoldInterpretation ∧
  I.applicationsInEconomics

theorem implicit_function_closed_from_evidence (I : ImplicitFunctionPackage)
    (Ev : ImplicitFunctionEvidence I) : ImplicitFunctionClosed I := by
  exact And.intro Ev.theoremStatementProvedClosed
    (And.intro Ev.existenceUniquenessCoveredClosed
      (And.intro Ev.differentiableDependencyShownClosed
        (And.intro Ev.manifoldInterpretationClosed
          Ev.applicationsInEconomicsClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse