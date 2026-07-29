import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure ElasticityTensor where
  dimension : ℕ
  symmetries : TensorSymmetries
  positiveDefinite : Prop
  voigtReussRange : Prop

structure TensorSymmetries where
  minor : Prop
  major : Prop
  both : Prop

default

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.positiveDefinite ∧ E.voigtReussRange

theorem elasticity_tensor_closed (E : ElasticityTensor) : ElasticityTensorClosed E := by
  exact And.intro E.positiveDefinite E.voigtReussRange

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
