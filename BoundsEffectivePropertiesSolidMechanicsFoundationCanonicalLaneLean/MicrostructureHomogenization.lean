import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure MicrostructurePackage where
  inclusionShape : Type u
  volumeFraction : ℝ
  spatialDistribution : Prop
  representativeVolumeElement : Prop
  homogeneityScale : ℝ

structure HomogenizationPackage (M : MicrostructurePackage) where
  effectiveStiffness : Type v
  effectiveCompliance : Type w
  boundsVoigtReuss : Prop
  hashinShtrikmanBounds : Prop
  selfConsistentEstimate : Prop
  moriTanakaEstimate : Prop
  boundsSatisfied : Prop

structure HomogenizationEvidence {M : MicrostructurePackage} (H : HomogenizationPackage M) where
  boundsVoigtReussClosed : H.boundsVoigtReuss
  hashinShtrikmanBoundsClosed : H.hashinShtrikmanBounds
  selfConsistentEstimateClosed : H.selfConsistentEstimate
  moriTanakaEstimateClosed : H.moriTanakaEstimate
  boundsSatisfiedClosed : H.boundsSatisfied

def HomogenizationClosed {M : MicrostructurePackage} (H : HomogenizationPackage M) : Prop :=
  H.boundsVoigtReuss ∧ H.hashinShtrikmanBounds ∧ H.selfConsistentEstimate ∧ H.moriTanakaEstimate ∧ H.boundsSatisfied

theorem homogenization_closed_from_evidence
    {M : MicrostructurePackage} (H : HomogenizationPackage M)
    (E : HomogenizationEvidence H) : HomogenizationClosed H := by
  exact And.intro E.boundsVoigtReussClosed
    (And.intro E.hashinShtrikmanBoundsClosed
      (And.intro E.selfConsistentEstimateClosed
        (And.intro E.moriTanakaEstimateClosed E.boundsSatisfiedClosed)))

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
