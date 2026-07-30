import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ExtremeValueTheoremPackage (D : DomainObject) where
  compactDomain : Prop
  continuousFunction : Prop
  boundedAchieved : Prop
  extremeValuesExist : Prop

structure ExtremeValueEvidence {D : DomainObject} (E : ExtremeValueTheoremPackage D) where
  boundedAchievedClosed : E.boundedAchieved
  extremeValuesExistClosed : E.extremeValuesExist

def ExtremeValueClosed {D : DomainObject} (E : ExtremeValueTheoremPackage D) : Prop :=
  E.boundedAchieved ∧ E.extremeValuesExist

theorem extreme_value_closed_from_evidence {D : DomainObject} (E : ExtremeValueTheoremPackage D) (Ev : ExtremeValueEvidence E) : ExtremeValueClosed E := by
  exact And.intro Ev.boundedAchievedClosed Ev.extremeValuesExistClosed

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse