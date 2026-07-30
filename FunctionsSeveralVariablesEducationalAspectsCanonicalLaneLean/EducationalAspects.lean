import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure EducationalPackage (domain : EuclideanDomain) where
  textbookReference : String
  theoremList : List String
  exerciseList : List String
  proofTechniques : List String
  commonMisconceptions : List String

def coreCurriculumTopics : List String :=
  ["limits", "continuity", "partial derivatives", "differentiability",
   "chain rule", "implicit function theorem", "inverse function theorem",
   "multiple integrals", "vector calculus"]

structure PedagogyStrategy where
  visualAids : Bool
  stepByStepDerivations : Bool
  examplesFromApplications : Bool
  interactiveExercises : Bool

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse