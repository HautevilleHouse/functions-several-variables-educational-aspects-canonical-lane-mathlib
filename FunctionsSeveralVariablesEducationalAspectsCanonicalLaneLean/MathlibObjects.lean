import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure FSVSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FSVAdmittedObject where
  space : FSVSpace
  openSet : Set space.carrier
  differentiableFunction : space.carrier → ℝ
  partialsExist : Prop
  conclusion : partialsExist

def FSVWitnessClosed (O : FSVAdmittedObject) : Prop :=
  O.partialsExist

structure FSVEndgameState where
  object : FSVAdmittedObject

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse