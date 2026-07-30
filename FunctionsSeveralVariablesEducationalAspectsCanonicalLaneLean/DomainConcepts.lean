import canonicalLaneMathlib.AdmissibleClass

/-!
# Domain Concepts for Functions of Several Variables

This module defines foundational concepts for the educational aspects
of functions of several variables.
-/

namespace HautevilleHouse
namespace FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean

structure EuclideanDomain where
  dimension : ℕ
  points : Type
  topology : Set (Set points)
  metric : points → points → ℝ
  metricPositiveDefinite : ∀ x y, metric x y ≥ 0 ∧ (metric x y = 0 ↔ x = y)
  metricSymmetric : ∀ x y, metric x y = metric y x
  metricTriangleIneq : ∀ x y z, metric x z ≤ metric x y + metric y z

structure PartialDerivative (domain : EuclideanDomain) where
  f : domain.points → ℝ
  direction : ℕ
  derivativeDefined : Prop
  limitCondition : Prop

structure MultivariableFunction (domain : EuclideanDomain) where
  f : domain.points → ℝ
  continuous : Prop
  differentiable : Prop
  partialDerivatives : List (PartialDerivative domain)

def QuadraticForm (domain : EuclideanDomain) : Prop :=
  True

end FunctionsSeveralVariablesEducationalAspectsCanonicalLaneLean
end HautevilleHouse