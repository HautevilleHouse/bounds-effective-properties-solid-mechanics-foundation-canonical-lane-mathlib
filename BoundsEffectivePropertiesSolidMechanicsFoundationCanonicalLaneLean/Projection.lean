import canonicalLaneMathlib.AdmissibleClass
import BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EffectiveMediumState where
  object : EffectiveMediumObject

def effectiveMediumProjection : Projection EffectiveMediumState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem effective_medium_projection_idempotent (x : EffectiveMediumState) :
    effectiveMediumProjection.toFun (effectiveMediumProjection.toFun x) = effectiveMediumProjection.toFun x := by
  exact effectiveMediumProjection.idempotent x

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
