import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure VoigtReussBounds where
  voigtEstimate : ℝ
  reussEstimate : ℝ
  voigtReussInequality : voigtEstimate ≥ reussEstimate
  packingFraction : ℝ

def VoigtReussBoundsClosed (B : VoigtReussBounds) : Prop :=
  B.voigtReussInequality ∧ B.packingFraction ≥ 0

structure HashinShtrikmanBounds where
  shearModulusBounds : ℝ × ℝ
  bulkModulusBounds : ℝ × ℝ
  boundsValid : shearModulusBounds.1 ≤ shearModulusBounds.2 ∧ bulkModulusBounds.1 ≤ bulkModulusBounds.2

def HashinShtrikmanBoundsClosed (H : HashinShtrikmanBounds) : Prop :=
  H.boundsValid

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse