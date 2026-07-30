import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure EducationalAdmissibleObject where
  domain : Type
  functionFamily : Type
  differentiableStructure : Prop
  educationalFramework : Prop
  conclusion : educationalFramework

structure AdmissibleClass where
  object : EducationalAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse