import canonicalLaneMathlib.AdmissibleClass
import FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean.DomainAdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure PartialDerivativePackage where
  variablesIndexSet : Nat
  limitDefinitionTaught : Prop
  computationalRulesDerived : Prop
  geometricInterpretation : Prop
  examRigor : Prop

structure PartialDerivativeEvidence (P : PartialDerivativePackage) where
  limitDefinitionTaughtClosed : P.limitDefinitionTaught
  computationalRulesDerivedClosed : P.computationalRulesDerived
  geometricInterpretationClosed : P.geometricInterpretation
  examRigorClosed : P.examRigor

def PartialDerivativeClosed (P : PartialDerivativePackage) : Prop :=
  P.limitDefinitionTaught ∧ P.computationalRulesDerived ∧
  P.geometricInterpretation ∧ P.examRigor

theorem partial_derivative_closed_from_evidence (P : PartialDerivativePackage)
    (E : PartialDerivativeEvidence P) : PartialDerivativeClosed P := by
  exact And.intro E.limitDefinitionTaughtClosed
    (And.intro E.computationalRulesDerivedClosed
      (And.intro E.geometricInterpretationClosed E.examRigorClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse