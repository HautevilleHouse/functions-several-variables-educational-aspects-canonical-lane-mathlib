import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ExtremeValueOptimizationPackage where
  compactDomain : Prop
  continuousFunction : Prop
  maximumExists : Prop
  minimumExists : Prop
  criticalPointCondition : Prop
  secondDerivativeTest : Prop
  lagrangeMultiplier : Prop
  constraintQualification : Prop

structure ExtremeValueOptimizationEvidence (E : ExtremeValueOptimizationPackage) where
  compactDomainClosed : E.compactDomain
  continuousFunctionClosed : E.continuousFunction
  maximumExistsClosed : E.maximumExists
  minimumExistsClosed : E.minimumExists
  criticalPointConditionClosed : E.criticalPointCondition
  secondDerivativeTestClosed : E.secondDerivativeTest
  lagrangeMultiplierClosed : E.lagrangeMultiplier
  constraintQualificationClosed : E.constraintQualification

def ExtremeValueOptimizationClosed (E : ExtremeValueOptimizationPackage) : Prop :=
  E.compactDomain ∧ E.continuousFunction ∧ E.maximumExists ∧ E.minimumExists ∧
  E.criticalPointCondition ∧ E.secondDerivativeTest ∧ E.lagrangeMultiplier ∧
  E.constraintQualification

theorem extreme_value_optimization_closed_from_evidence
    (E : ExtremeValueOptimizationPackage)
    (Ev : ExtremeValueOptimizationEvidence E) : ExtremeValueOptimizationClosed E := by
  exact And.intro Ev.compactDomainClosed
    (And.intro Ev.continuousFunctionClosed
      (And.intro Ev.maximumExistsClosed
        (And.intro Ev.minimumExistsClosed
          (And.intro Ev.criticalPointConditionClosed
            (And.intro Ev.secondDerivativeTestClosed
              (And.intro Ev.lagrangeMultiplierClosed Ev.constraintQualificationClosed))))))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse