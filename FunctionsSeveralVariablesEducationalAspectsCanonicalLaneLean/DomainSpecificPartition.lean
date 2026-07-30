import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspects

structure DomainSpecificPartition where
  domain : Type u
  partitionFinite : Prop
  subdomainMeasurable : Prop
  subdomainBoundaryRegular : Prop

structure DomainSpecificPartitionEvidence (D : DomainSpecificPartition) where
  partitionFiniteClosed : D.partitionFinite
  subdomainMeasurableClosed : D.subdomainMeasurable
  subdomainBoundaryRegularClosed : D.subdomainBoundaryRegular

def DomainSpecificPartitionClosed (D : DomainSpecificPartition) : Prop :=
  D.partitionFinite ∧ D.subdomainMeasurable ∧ D.subdomainBoundaryRegular

theorem domain_specific_partition_closed_from_evidence (D : DomainSpecificPartition) (E : DomainSpecificPartitionEvidence D) : DomainSpecificPartitionClosed D := by
  exact And.intro E.partitionFiniteClosed (And.intro E.subdomainMeasurableClosed E.subdomainBoundaryRegularClosed)

end FunctionsSeveralVariablesEducationalAspects
end HautevilleHouse