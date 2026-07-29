import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure MoriTanakaHomogenizationPackage where
  inclusionShape : Type u
  matrixProperties : Prop
  inclusionProperties : Prop
  concentrationTensor : Prop
  effectiveStiffness : Prop
  concentrationTensorClosed : concentrationTensor
  effectiveStiffnessClosed : effectiveStiffness

structure MoriTanakaHomogenizationEvidence (p : MoriTanakaHomogenizationPackage) where
  concentrationTensorClosed : p.concentrationTensor
  effectiveStiffnessClosed : p.effectiveStiffness

def MoriTanakaHomogenizationClosed (p : MoriTanakaHomogenizationPackage) : Prop :=
  p.concentrationTensor ∧ p.effectiveStiffness

theorem mori_tanaka_homogenization_closed_from_evidence (p : MoriTanakaHomogenizationPackage) (e : MoriTanakaHomogenizationEvidence p) :
    MoriTanakaHomogenizationClosed p := by
  exact And.intro e.concentrationTensorClosed e.effectiveStiffnessClosed

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
