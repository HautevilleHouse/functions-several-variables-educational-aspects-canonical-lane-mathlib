import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ExtremeValuesPackage (A : AdmissibleClass) where
  extremeValueTheorem : Prop
  localExtremaClassification : Prop
  hessianTest : Prop
  globalExtremaOnCompact : Prop

structure ExtremeValuesEvidence {A : AdmissibleClass} (E : ExtremeValuesPackage A) where
  extremeValueTheoremClosed : E.extremeValueTheorem
  localExtremaClassificationClosed : E.localExtremaClassification
  hessianTestClosed : E.hessianTest
  globalExtremaOnCompactClosed : E.globalExtremaOnCompact

def ExtremeValuesClosed {A : AdmissibleClass} (E : ExtremeValuesPackage A) : Prop :=
  E.extremeValueTheorem ∧ E.localExtremaClassification ∧ E.hessianTest ∧ E.globalExtremaOnCompact

theorem extreme_values_closed_from_evidence {A : AdmissibleClass}
    (E : ExtremeValuesPackage A) (Ev : ExtremeValuesEvidence E) : ExtremeValuesClosed E := by
  exact And.intro Ev.extremeValueTheoremClosed (And.intro Ev.localExtremaClassificationClosed (And.intro Ev.hessianTestClosed Ev.globalExtremaOnCompactClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse