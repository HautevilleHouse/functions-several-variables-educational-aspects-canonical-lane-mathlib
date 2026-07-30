import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure LagrangeMultipliersPackage where
  objective : ℝ^3 → ℝ
  constraint : ℝ^3 → ℝ
  criticalPointCondition : Prop
  multiplierExists : Prop

structure LagrangeMultipliersEvidence (L : LagrangeMultipliersPackage) where
  criticalPointConditionClosed : L.criticalPointCondition
  multiplierExistsClosed : L.multiplierExists

def LagrangeMultipliersClosed (L : LagrangeMultipliersPackage) : Prop :=
  L.criticalPointCondition ∧ L.multiplierExists

theorem lagrange_multipliers_closed_from_evidence (L : LagrangeMultipliersPackage)
    (E : LagrangeMultipliersEvidence L) : LagrangeMultipliersClosed L := by
  exact And.intro E.criticalPointConditionClosed E.multiplierExistsClosed

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse