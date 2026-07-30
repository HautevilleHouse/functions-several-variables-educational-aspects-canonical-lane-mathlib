import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ImplicitFunctionTheoremPackage where
  constraintEquation : Type u
  implicitSolutionExists : Prop
  differentiabilityOfImplicitFunction : Prop
  applicationToManifolds : Prop

structure ImplicitFunctionTheoremEvidence (P : ImplicitFunctionTheoremPackage) where
  implicitSolutionExistsClosed : P.implicitSolutionExists
  differentiabilityOfImplicitFunctionClosed : P.differentiabilityOfImplicitFunction
  applicationToManifoldsClosed : P.applicationToManifolds

def ImplicitFunctionTheoremClosed (P : ImplicitFunctionTheoremPackage) : Prop :=
  P.implicitSolutionExists ∧ P.differentiabilityOfImplicitFunction ∧ P.applicationToManifolds

theorem implicit_function_theorem_closed_from_evidence (P : ImplicitFunctionTheoremPackage) (E : ImplicitFunctionTheoremEvidence P) :
    ImplicitFunctionTheoremClosed P := by
  exact And.intro E.implicitSolutionExistsClosed
    (And.intro E.differentiabilityOfImplicitFunctionClosed E.applicationToManifoldsClosed)

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse