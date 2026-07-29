import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure SelfConsistentSchemePackage where
  inclusionShape : Type u
  matrixProperties : Prop
  inclusionProperties : Prop
  polarizationTensor : Prop
  effectiveStiffnessImplicit : Prop
  polarizationTensorClosed : polarizationTensor
  effectiveStiffnessImplicitClosed : effectiveStiffnessImplicit

structure SelfConsistentSchemeEvidence (p : SelfConsistentSchemePackage) where
  polarizationTensorClosed : p.polarizationTensor
  effectiveStiffnessImplicitClosed : p.effectiveStiffnessImplicit

def SelfConsistentSchemeClosed (p : SelfConsistentSchemePackage) : Prop :=
  p.polarizationTensor ∧ p.effectiveStiffnessImplicit

theorem self_consistent_scheme_closed_from_evidence (p : SelfConsistentSchemePackage) (e : SelfConsistentSchemeEvidence p) :
    SelfConsistentSchemeClosed p := by
  exact And.intro e.polarizationTensorClosed e.effectiveStiffnessImplicitClosed

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
