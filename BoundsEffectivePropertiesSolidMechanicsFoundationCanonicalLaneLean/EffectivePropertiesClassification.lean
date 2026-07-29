import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean.HashinShtrikmanBounds

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EffectivePropertiesClassificationPackage {E : ElasticModuliPackage}
    (H : HashinShtrikmanBoundsPackage E) where
  effectiveStiffness : Type u
  effectiveCompliance : Type v
  homogenizationMethod : Prop
  equivalenceWithBounds : Prop
  optimalityCondition : Prop

structure EffectivePropertiesClassificationEvidence {E : ElasticModuliPackage}
    {H : HashinShtrikmanBoundsPackage E} (C : EffectivePropertiesClassificationPackage H) where
  homogenizationMethodClosed : C.homogenizationMethod
  equivalenceWithBoundsClosed : C.equivalenceWithBounds
  optimalityConditionClosed : C.optimalityCondition

def EffectivePropertiesClassificationClosed {E : ElasticModuliPackage}
    {H : HashinShtrikmanBoundsPackage E} (C : EffectivePropertiesClassificationPackage H) : Prop :=
  C.homogenizationMethod ∧ C.equivalenceWithBounds ∧ C.optimalityCondition

theorem effective_properties_classification_closed_from_evidence
    {E : ElasticModuliPackage} {H : HashinShtrikmanBoundsPackage E}
    (C : EffectivePropertiesClassificationPackage H) (Ev : EffectivePropertiesClassificationEvidence C) :
    EffectivePropertiesClassificationClosed C :=
  And.intro Ev.homogenizationMethodClosed (And.intro Ev.equivalenceWithBoundsClosed Ev.optimalityConditionClosed)

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse