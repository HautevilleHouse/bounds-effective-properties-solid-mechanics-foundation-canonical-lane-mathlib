import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure ElasticityBoundsPackage where
  medium : Type u
  shearModulus : Prop
  bulkModulus : Prop
  voigtUpperBound : Prop
  reussLowerBound : Prop
  hashinShtrikmanBounds : Prop

structure ElasticityBoundsEvidence (E : ElasticityBoundsPackage) where
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  voigtUpperBoundClosed : E.voigtUpperBound
  reussLowerBoundClosed : E.reussLowerBound
  hashinShtrikmanBoundsClosed : E.hashinShtrikmanBounds

def ElasticityBoundsClosed (E : ElasticityBoundsPackage) : Prop :=
  E.shearModulus ∧ E.bulkModulus ∧ E.voigtUpperBound ∧ E.reussLowerBound ∧ E.hashinShtrikmanBounds

theorem elasticity_bounds_closed_from_evidence (E : ElasticityBoundsPackage) (Ev : ElasticityBoundsEvidence E) : ElasticityBoundsClosed E := by
  exact And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed (And.intro Ev.voigtUpperBoundClosed (And.intro Ev.reussLowerBoundClosed Ev.hashinShtrikmanBoundsClosed)))

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse