import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure FunctionGraphPackage where
  surfaceType : Type u
  functionExpression : surfaceType → ℝ
  criticalPointsClassified : Prop
  saddlePointsIdentified : Prop
  gradientFlowVisualized : Prop

structure FunctionGraphEvidence (P : FunctionGraphPackage) where
  criticalPointsClassifiedClosed : P.criticalPointsClassified
  saddlePointsIdentifiedClosed : P.saddlePointsIdentified
  gradientFlowVisualizedClosed : P.gradientFlowVisualized

def FunctionGraphClosed (P : FunctionGraphPackage) : Prop :=
  P.criticalPointsClassified ∧ P.saddlePointsIdentified ∧ P.gradientFlowVisualized

theorem function_graph_closed_from_evidence (P : FunctionGraphPackage) (E : FunctionGraphEvidence P) :
    FunctionGraphClosed P := by
  exact And.intro E.criticalPointsClassifiedClosed
    (And.intro E.saddlePointsIdentifiedClosed E.gradientFlowVisualizedClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse