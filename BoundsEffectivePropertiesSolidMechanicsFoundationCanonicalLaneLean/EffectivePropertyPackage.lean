import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EffectivePropertyObject where
  materialName : String
  effectiveStiffness : ℝ
  effectiveCompliance : ℝ
  stiffnessPositiveDefinite : effectiveStiffness > 0
  compliancePositiveDefinite : effectiveCompliance > 0
  boundsConsistency : Prop

def EffectivePropertyClosed (O : EffectivePropertyObject) : Prop :=
  O.stiffnessPositiveDefinite ∧ O.compliancePositiveDefinite ∧ O.boundsConsistency

structure EffectivePropertyEvidence (O : EffectivePropertyObject) where
  stiffnessPositiveDefiniteClosed : O.stiffnessPositiveDefinite
  compliancePositiveDefiniteClosed : O.compliancePositiveDefinite
  boundsConsistencyClosed : O.boundsConsistency

theorem effective_property_closed_from_evidence (O : EffectivePropertyObject)
    (E : EffectivePropertyEvidence O) : EffectivePropertyClosed O := by
  exact And.intro E.stiffnessPositiveDefiniteClosed
    (And.intro E.compliancePositiveDefiniteClosed E.boundsConsistencyClosed)

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse