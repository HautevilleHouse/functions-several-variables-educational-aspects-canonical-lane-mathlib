import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

def ConstrainedFsveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fsve_endgame (A : AdmissibleClass) : ConstrainedFsveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse