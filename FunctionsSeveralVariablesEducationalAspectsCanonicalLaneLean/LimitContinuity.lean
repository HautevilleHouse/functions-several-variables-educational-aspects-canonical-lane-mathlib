import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure LimitContinuityPackage (A : AdmissibleClass) where
  pointwiseContinuity : Prop
  uniformContinuity : Prop
  limitExistence : Prop
  continuityTransfer : Prop

structure LimitContinuityEvidence {A : AdmissibleClass} (L : LimitContinuityPackage A) where
  pointwiseContinuityClosed : L.pointwiseContinuity
  uniformContinuityClosed : L.uniformContinuity
  limitExistenceClosed : L.limitExistence
  continuityTransferClosed : L.continuityTransfer

def LimitContinuityClosed {A : AdmissibleClass} (L : LimitContinuityPackage A) : Prop :=
  L.pointwiseContinuity ∧ L.uniformContinuity ∧ L.limitExistence ∧ L.continuityTransfer

theorem limit_continuity_closed_from_evidence {A : AdmissibleClass}
    (L : LimitContinuityPackage A) (E : LimitContinuityEvidence L) : LimitContinuityClosed L := by
  exact And.intro E.pointwiseContinuityClosed (And.intro E.uniformContinuityClosed (And.intro E.limitExistenceClosed E.continuityTransferClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse