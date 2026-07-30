import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure VectorCalculusPackage where
  vectorFieldType : Type u
  curlDefined : Prop
  divergenceDefined : Prop
  gradientDefined : Prop
  stokesTheoremFormulated : Prop

structure VectorCalculusEvidence (P : VectorCalculusPackage) where
  curlDefinedClosed : P.curlDefined
  divergenceDefinedClosed : P.divergenceDefined
  gradientDefinedClosed : P.gradientDefined
  stokesTheoremFormulatedClosed : P.stokesTheoremFormulated

def VectorCalculusClosed (P : VectorCalculusPackage) : Prop :=
  P.curlDefined ∧ P.divergenceDefined ∧ P.gradientDefined ∧ P.stokesTheoremFormulated

theorem vector_calculus_closed_from_evidence (P : VectorCalculusPackage) (E : VectorCalculusEvidence P) :
    VectorCalculusClosed P := by
  exact And.intro E.curlDefinedClosed
    (And.intro E.divergenceDefinedClosed
      (And.intro E.gradientDefinedClosed E.stokesTheoremFormulatedClosed))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse