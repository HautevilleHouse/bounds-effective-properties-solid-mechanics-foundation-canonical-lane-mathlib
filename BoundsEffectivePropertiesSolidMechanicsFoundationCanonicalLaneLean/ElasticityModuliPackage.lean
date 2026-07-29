import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure ElasticityModuliPackage where
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ
  isotropyAssumed : Prop
  positiveDefiniteness : Prop

structure ElasticityModuliEvidence (E : ElasticityModuliPackage) where
  isotropyAssumedClosed : E.isotropyAssumed
  positiveDefinitenessClosed : E.positiveDefiniteness

def ElasticityModuliClosed (E : ElasticityModuliPackage) : Prop :=
  E.isotropyAssumed ∧ E.positiveDefiniteness

theorem elasticity_moduli_closed_from_evidence (E : ElasticityModuliPackage)
    (Ev : ElasticityModuliEvidence E) : ElasticityModuliClosed E := by
  exact And.intro Ev.isotropyAssumedClosed Ev.positiveDefinitenessClosed

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse