import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure TaylorExpansionMultivariablePackage where
  function : ℝ^3 → ℝ
  expansionOrder : Nat
  remainderTerm : ℝ^3 → ℝ
  quadraticForm : Prop
  remainderEstimate : Prop

structure TaylorExpansionMultivariableEvidence (T : TaylorExpansionMultivariablePackage) where
  quadraticFormClosed : T.quadraticForm
  remainderEstimateClosed : T.remainderEstimate

def TaylorExpansionMultivariableClosed (T : TaylorExpansionMultivariablePackage) : Prop :=
  T.quadraticForm ∧ T.remainderEstimate

theorem taylor_expansion_multivariable_closed_from_evidence
    (T : TaylorExpansionMultivariablePackage) (E : TaylorExpansionMultivariableEvidence T) :
    TaylorExpansionMultivariableClosed T := by
  exact And.intro E.quadraticFormClosed E.remainderEstimateClosed

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse