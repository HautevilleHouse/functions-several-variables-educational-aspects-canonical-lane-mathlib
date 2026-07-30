import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspects

structure VectorCalculusPackage where
  gradientDefined : Prop
  divergenceDefined : Prop
  curlDefined : Prop
  divergenceTheorem : Prop
  stokesTheorem : Prop

structure VectorCalculusPackageEvidence (V : VectorCalculusPackage) where
  gradientDefinedClosed : V.gradientDefined
  divergenceDefinedClosed : V.divergenceDefined
  curlDefinedClosed : V.curlDefined
  divergenceTheoremClosed : V.divergenceTheorem
  stokesTheoremClosed : V.stokesTheorem

def VectorCalculusPackageClosed (V : VectorCalculusPackage) : Prop :=
  V.gradientDefined ∧ V.divergenceDefined ∧ V.curlDefined ∧ V.divergenceTheorem ∧ V.stokesTheorem

theorem vector_calculus_package_closed_from_evidence (V : VectorCalculusPackage) (E : VectorCalculusPackageEvidence V) : VectorCalculusPackageClosed V := by
  exact And.intro E.gradientDefinedClosed (And.intro E.divergenceDefinedClosed (And.intro E.curlDefinedClosed (And.intro E.divergenceTheoremClosed E.stokesTheoremClosed)))

end FunctionsSeveralVariablesEducationalAspects
end HautevilleHouse