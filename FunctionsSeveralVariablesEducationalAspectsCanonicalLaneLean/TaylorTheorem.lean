import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure TaylorTheoremPackage where
  firstOrderExpansion : Prop
  secondOrderExpansion : Prop
  taylorRemainder : Prop
  lagrangeRemainder : Prop
  integralRemainder : Prop
  quadraticFormHessian : Prop
  criticalPointClassification : Prop

structure TaylorTheoremEvidence (T : TaylorTheoremPackage) where
  firstOrderExpansionClosed : T.firstOrderExpansion
  secondOrderExpansionClosed : T.secondOrderExpansion
  taylorRemainderClosed : T.taylorRemainder
  lagrangeRemainderClosed : T.lagrangeRemainder
  integralRemainderClosed : T.integralRemainder
  quadraticFormHessianClosed : T.quadraticFormHessian
  criticalPointClassificationClosed : T.criticalPointClassification

def TaylorTheoremClosed (T : TaylorTheoremPackage) : Prop :=
  T.firstOrderExpansion ∧ T.secondOrderExpansion ∧ T.taylorRemainder ∧
  T.lagrangeRemainder ∧ T.integralRemainder ∧ T.quadraticFormHessian ∧
  T.criticalPointClassification

theorem taylor_theorem_closed_from_evidence (T : TaylorTheoremPackage)
    (E : TaylorTheoremEvidence T) : TaylorTheoremClosed T := by
  exact And.intro E.firstOrderExpansionClosed
    (And.intro E.secondOrderExpansionClosed
      (And.intro E.taylorRemainderClosed
        (And.intro E.lagrangeRemainderClosed
          (And.intro E.integralRemainderClosed
            (And.intro E.quadraticFormHessianClosed E.criticalPointClassificationClosed)))))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse