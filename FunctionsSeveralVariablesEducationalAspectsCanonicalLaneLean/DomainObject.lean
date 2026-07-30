import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure DomainObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  dimensionN : Nat
  smoothManifold : Prop
  compactSupport : Prop

structure AdmittedObject where
  domain : DomainObject
  functionDefined : Prop
  derivativeExists : Prop
  integralExists : Prop
  conclusion : functionDefined ∧ derivativeExists ∧ integralExists

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse