import canonicalLaneMathlib.AdmissibleClass
import FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean.ChainRuleEducational

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ExtremeValuePackage where
  closedBoundedSetCovered : Prop
  continuityRoleExplained : Prop
  criticalPointDefinition : Prop
  secondDerivativeTestTaught : Prop
  LagrangeMultipliersIntroduced : Prop

structure ExtremeValueEvidence (E : ExtremeValuePackage) where
  closedBoundedSetCoveredClosed : E.closedBoundedSetCovered
  continuityRoleExplainedClosed : E.continuityRoleExplained
  criticalPointDefinitionClosed : E.criticalPointDefinition
  secondDerivativeTestTaughtClosed : E.secondDerivativeTestTaught
  lagrangeMultipliersIntroducedClosed : E.LagrangeMultipliersIntroduced

def ExtremeValueClosed (E : ExtremeValuePackage) : Prop :=
  E.closedBoundedSetCovered ∧ E.continuityRoleExplained ∧
  E.criticalPointDefinition ∧ E.secondDerivativeTestTaught ∧
  E.LagrangeMultipliersIntroduced

theorem extreme_value_closed_from_evidence (E : ExtremeValuePackage)
    (Ev : ExtremeValueEvidence E) : ExtremeValueClosed E := by
  exact And.intro Ev.closedBoundedSetCoveredClosed
    (And.intro Ev.continuityRoleExplainedClosed
      (And.intro Ev.criticalPointDefinitionClosed
        (And.intro Ev.secondDerivativeTestTaughtClosed
          Ev.lagrangeMultipliersIntroducedClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse