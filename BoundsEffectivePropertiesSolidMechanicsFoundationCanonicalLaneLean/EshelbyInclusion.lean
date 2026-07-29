import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EshelbyInclusionPackage where
  inclusionGeometry : Type u
  elasticConstants : Prop
  eigenstrain : Prop
  eshelbyTensor : Prop
  stressConcentration : Prop
  eshelbyTensorClosed : eshelbyTensor
  stressConcentrationClosed : stressConcentration

structure EshelbyInclusionEvidence (p : EshelbyInclusionPackage) where
  eshelbyTensorClosed : p.eshelbyTensor
  stressConcentrationClosed : p.stressConcentration

def EshelbyInclusionClosed (p : EshelbyInclusionPackage) : Prop :=
  p.eshelbyTensor ∧ p.stressConcentration

theorem eshelby_inclusion_closed_from_evidence (p : EshelbyInclusionPackage) (e : EshelbyInclusionEvidence p) :
    EshelbyInclusionClosed p := by
  exact And.intro e.eshelbyTensorClosed e.stressConcentrationClosed

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
