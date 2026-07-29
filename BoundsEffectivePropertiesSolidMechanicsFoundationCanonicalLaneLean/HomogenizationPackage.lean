import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure HomogenizationPackage where
  periodicMicrostructure : Prop
  representativeVolumeElement : Prop
  scaleSeparation : Prop
  effectiveModuliComputed : Prop

structure HomogenizationEvidence (H : HomogenizationPackage) where
  periodicMicrostructureClosed : H.periodicMicrostructure
  representativeVolumeElementClosed : H.representativeVolumeElement
  scaleSeparationClosed : H.scaleSeparation
  effectiveModuliComputedClosed : H.effectiveModuliComputed

def HomogenizationClosed (H : HomogenizationPackage) : Prop :=
  H.periodicMicrostructure ∧ H.representativeVolumeElement ∧
  H.scaleSeparation ∧ H.effectiveModuliComputed

theorem homogenization_closed_from_evidence (H : HomogenizationPackage)
    (E : HomogenizationEvidence H) : HomogenizationClosed H := by
  exact And.intro E.periodicMicrostructureClosed
    (And.intro E.representativeVolumeElementClosed
      (And.intro E.scaleSeparationClosed E.effectiveModuliComputedClosed))

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse