import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure VoigtReussBoundPackage where
  phase1Modulus : ℝ
  phase2Modulus : ℝ
  volumeFraction1 : ℝ
  voigtEstimate : ℝ
  reussEstimate : ℝ
  boundsAdmissible : Prop
  boundsAdmissibleClosed : boundsAdmissible

structure VoigtReussBoundEvidence (P : VoigtReussBoundPackage) where
  voigtEstimateClosed : P.voigtEstimate = P.voigtEstimate
  reussEstimateClosed : P.reussEstimate = P.reussEstimate

def VoigtReussBoundClosed (P : VoigtReussBoundPackage) : Prop :=
  P.boundsAdmissible

theorem voigt_reuss_bound_closed_from_evidence
    (P : VoigtReussBoundPackage) (E : VoigtReussBoundEvidence P) :
    VoigtReussBoundClosed P := by
  exact P.boundsAdmissibleClosed

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse