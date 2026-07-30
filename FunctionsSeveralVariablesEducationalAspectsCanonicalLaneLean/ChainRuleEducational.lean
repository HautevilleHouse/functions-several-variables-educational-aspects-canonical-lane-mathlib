import canonicalLaneMathlib.AdmissibleClass
import FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean.PartialDerivativePedagogy

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ChainRulePackage where
  compositionDefinitionTaught : Prop
  totalDerivativeCompositionProof : Prop
  treeDiagramMethod : Prop
  implicitDifferentiationApplication : Prop
  errorAnalysisPresented : Prop

structure ChainRuleEvidence (C : ChainRulePackage) where
  compositionDefinitionTaughtClosed : C.compositionDefinitionTaught
  totalDerivativeCompositionProofClosed : C.totalDerivativeCompositionProof
  treeDiagramMethodClosed : C.treeDiagramMethod
  implicitDifferentiationApplicationClosed : C.implicitDifferentiationApplication
  errorAnalysisPresentedClosed : C.errorAnalysisPresented

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.compositionDefinitionTaught ∧ C.totalDerivativeCompositionProof ∧
  C.treeDiagramMethod ∧ C.implicitDifferentiationApplication ∧
  C.errorAnalysisPresented

theorem chain_rule_closed_from_evidence (C : ChainRulePackage)
    (E : ChainRuleEvidence C) : ChainRuleClosed C := by
  exact And.intro E.compositionDefinitionTaughtClosed
    (And.intro E.totalDerivativeCompositionProofClosed
      (And.intro E.treeDiagramMethodClosed
        (And.intro E.implicitDifferentiationApplicationClosed
          E.errorAnalysisPresentedClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse