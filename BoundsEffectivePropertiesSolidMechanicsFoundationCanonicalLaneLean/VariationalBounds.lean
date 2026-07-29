import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure VariationalBoundsPackage where
  energyFunctional : Type u
  trialFields : Type v
  upperBoundFunctional : Prop
  lowerBoundFunctional : Prop
  optimalityCondition : Prop
  upperBoundFunctionalClosed : upperBoundFunctional
  lowerBoundFunctionalClosed : lowerBoundFunctional
  optimalityConditionClosed : optimalityCondition

structure VariationalBoundsEvidence (p : VariationalBoundsPackage) where
  upperBoundFunctionalClosed : p.upperBoundFunctional
  lowerBoundFunctionalClosed : p.lowerBoundFunctional
  optimalityConditionClosed : p.optimalityCondition

def VariationalBoundsClosed (p : VariationalBoundsPackage) : Prop :=
  p.upperBoundFunctional ∧ p.lowerBoundFunctional ∧ p.optimalityCondition

theorem variational_bounds_closed_from_evidence (p : VariationalBoundsPackage) (e : VariationalBoundsEvidence p) :
    VariationalBoundsClosed p := by
  exact And.intro e.upperBoundFunctionalClosed (And.intro e.lowerBoundFunctionalClosed e.optimalityConditionClosed)

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
