import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure VariationalHashinShtrikmanBounds where
  phaseStiffnessContrast : ℝ
  polarizationField : Type u
  trialStrainField : Type v
  stationaryPrinciple : Prop
  upperBound : Prop
  lowerBound : Prop

structure HashinShtrikmanEvidence (H : VariationalHashinShtrikmanBounds) where
  stationaryPrincipleClosed : H.stationaryPrinciple
  upperBoundClosed : H.upperBound
  lowerBoundClosed : H.lowerBound

def HashinShtrikmanBoundsClosed (H : VariationalHashinShtrikmanBounds) : Prop :=
  H.stationaryPrinciple ∧ H.upperBound ∧ H.lowerBound

theorem hashin_shtrikman_bounds_closed_from_evidence (H : VariationalHashinShtrikmanBounds) (E : HashinShtrikmanEvidence H) :
    HashinShtrikmanBoundsClosed H := by
  exact And.intro E.stationaryPrincipleClosed
    (And.intro E.upperBoundClosed E.lowerBoundClosed)

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
