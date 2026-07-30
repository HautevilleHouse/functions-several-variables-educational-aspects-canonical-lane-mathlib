import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure DomainKnowledgePackage where
  functionGraph : Type u
  partialDerivative : Type v
  jacobianMatrix : Type w
  hessianMatrix : Type x
  chainRuleApplied : Prop
  implicitFunctionTheorem : Prop
  inverseFunctionTheorem : Prop
  domainConnected : Prop
  functionSmooth : Prop

structure DomainKnowledgeEvidence (D : DomainKnowledgePackage) where
  chainRuleAppliedClosed : D.chainRuleApplied
  implicitFunctionTheoremClosed : D.implicitFunctionTheorem
  inverseFunctionTheoremClosed : D.inverseFunctionTheorem
  domainConnectedClosed : D.domainConnected
  functionSmoothClosed : D.functionSmooth

def DomainKnowledgeClosed (D : DomainKnowledgePackage) : Prop :=
  D.chainRuleApplied ∧ D.implicitFunctionTheorem ∧ D.inverseFunctionTheorem ∧
  D.domainConnected ∧ D.functionSmooth

theorem domain_knowledge_closed_from_evidence (D : DomainKnowledgePackage)
    (E : DomainKnowledgeEvidence D) : DomainKnowledgeClosed D := by
  exact And.intro E.chainRuleAppliedClosed
    (And.intro E.implicitFunctionTheoremClosed
      (And.intro E.inverseFunctionTheoremClosed
        (And.intro E.domainConnectedClosed E.functionSmoothClosed)))

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse