import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure ContinuityDifferentiabilityPackage where
  continuityDefinition : Prop
  differentiabilityDefinition : Prop
  limitDefinition : Prop
  partialDerivativeDefinition : Prop
  directionDerivativeDefinition : Prop
  continuityImpliesPartialDerivatives : Prop
  differentiabilityImpliesContinuity : Prop
  clairautTheorem : Prop
  meanValueTheorem : Prop

structure ContinuityDifferentiabilityEvidence (C : ContinuityDifferentiabilityPackage) where
  continuityDefinitionClosed : C.continuityDefinition
  differentiabilityDefinitionClosed : C.differentiabilityDefinition
  limitDefinitionClosed : C.limitDefinition
  partialDerivativeDefinitionClosed : C.partialDerivativeDefinition
  directionDerivativeDefinitionClosed : C.directionDerivativeDefinition
  continuityImpliesPartialDerivativesClosed : C.continuityImpliesPartialDerivatives
  differentiabilityImpliesContinuityClosed : C.differentiabilityImpliesContinuity
  clairautTheoremClosed : C.clairautTheorem
  meanValueTheoremClosed : C.meanValueTheorem

def ContinuityDifferentiabilityClosed (C : ContinuityDifferentiabilityPackage) : Prop :=
  C.continuityDefinition ∧ C.differentiabilityDefinition ∧ C.limitDefinition ∧
  C.partialDerivativeDefinition ∧ C.directionDerivativeDefinition ∧
  C.continuityImpliesPartialDerivatives ∧ C.differentiabilityImpliesContinuity ∧
  C.clairautTheorem ∧ C.meanValueTheorem

theorem continuity_differentiability_closed_from_evidence
    (C : ContinuityDifferentiabilityPackage)
    (E : ContinuityDifferentiabilityEvidence C) : ContinuityDifferentiabilityClosed C := by
  exact And.intro E.continuityDefinitionClosed
    (And.intro E.differentiabilityDefinitionClosed
      (And.intro E.limitDefinitionClosed
        (And.intro E.partialDerivativeDefinitionClosed
          (And.intro E.directionDerivativeDefinitionClosed
            (And.intro E.continuityImpliesPartialDerivativesClosed
              (And.intro E.differentiabilityImpliesContinuityClosed
                (And.intro E.clairautTheoremClosed E.meanValueTheoremClosed)))))))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse