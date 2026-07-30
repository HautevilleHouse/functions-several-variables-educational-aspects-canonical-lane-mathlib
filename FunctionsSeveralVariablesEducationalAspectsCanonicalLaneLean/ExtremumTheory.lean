import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspects

structure ExtremumTheory where
  criticalPointCharacterization : Prop
  hessianTest : Prop
  lagrangeMultiplierMethod : Prop

structure ExtremumTheoryEvidence (E : ExtremumTheory) where
  criticalPointCharacterizationClosed : E.criticalPointCharacterization
  hessianTestClosed : E.hessianTest
  lagrangeMultiplierMethodClosed : E.lagrangeMultiplierMethod

def ExtremumTheoryClosed (E : ExtremumTheory) : Prop :=
  E.criticalPointCharacterization ∧ E.hessianTest ∧ E.lagrangeMultiplierMethod

theorem extremum_theory_closed_from_evidence (E : ExtremumTheory) (Ev : ExtremumTheoryEvidence E) : ExtremumTheoryClosed E := by
  exact And.intro Ev.criticalPointCharacterizationClosed (And.intro Ev.hessianTestClosed Ev.lagrangeMultiplierMethodClosed)

end FunctionsSeveralVariablesEducationalAspects
end HautevilleHouse