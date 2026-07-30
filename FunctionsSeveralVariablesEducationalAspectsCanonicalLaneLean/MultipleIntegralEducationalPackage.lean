import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure MultipleIntegralPackage where
  regionType : Type u
  integralOverRegion : regionType → ℝ
  iteratedIntegralsComputed : Prop
  changeOfVariablesFormulated : Prop
  applicationsToVolume : Prop

structure MultipleIntegralEvidence (P : MultipleIntegralPackage) where
  iteratedIntegralsComputedClosed : P.iteratedIntegralsComputed
  changeOfVariablesFormulatedClosed : P.changeOfVariablesFormulated
  applicationsToVolumeClosed : P.applicationsToVolume

def MultipleIntegralClosed (P : MultipleIntegralPackage) : Prop :=
  P.iteratedIntegralsComputed ∧ P.changeOfVariablesFormulated ∧ P.applicationsToVolume

theorem multiple_integral_closed_from_evidence (P : MultipleIntegralPackage) (E : MultipleIntegralEvidence P) :
    MultipleIntegralClosed P := by
  exact And.intro E.iteratedIntegralsComputedClosed
    (And.intro E.changeOfVariablesFormulatedClosed E.applicationsToVolumeClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse