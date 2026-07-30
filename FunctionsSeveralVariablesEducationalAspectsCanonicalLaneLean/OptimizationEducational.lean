import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure OptimizationPackage where
  functionOnDomain : Type u
  lagrangeMultipliersApplied : Prop
  secondDerivativeTestApplied : Prop
  constrainedOptimizationSolved : Prop

structure OptimizationEvidence (P : OptimizationPackage) where
  lagrangeMultipliersAppliedClosed : P.lagrangeMultipliersApplied
  secondDerivativeTestAppliedClosed : P.secondDerivativeTestApplied
  constrainedOptimizationSolvedClosed : P.constrainedOptimizationSolved

def OptimizationClosed (P : OptimizationPackage) : Prop :=
  P.lagrangeMultipliersApplied ∧ P.secondDerivativeTestApplied ∧ P.constrainedOptimizationSolved

theorem optimization_closed_from_evidence (P : OptimizationPackage) (E : OptimizationEvidence P) :
    OptimizationClosed P := by
  exact And.intro E.lagrangeMultipliersAppliedClosed
    (And.intro E.secondDerivativeTestAppliedClosed E.constrainedOptimizationSolvedClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse