import canonicalLaneMathlib.AdmissibleClass
import BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean.BridgeLemmas
import BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

def ConstrainedBoundsEffectivePropertiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bounds_effective_properties_endgame (A : AdmissibleClass) :
    ConstrainedBoundsEffectivePropertiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
