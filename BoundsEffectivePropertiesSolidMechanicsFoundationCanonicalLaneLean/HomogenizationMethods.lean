import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure SelfConsistentScheme where
  inclusionShape : String
  volumeFraction : ℝ
  predictedStiffness : ℝ
  determinedFrom : Prop

def SelfConsistentSchemeClosed (S : SelfConsistentScheme) : Prop :=
  S.determinedFrom ∧ S.volumeFraction ≥ 0 ∧ S.volumeFraction ≤ 1

structure MoriTanakaMethod where
  inclusionShape : String
  volumeFraction : ℝ
  predictedCompliance : ℝ
  determinedFrom : Prop

def MoriTanakaMethodClosed (M : MoriTanakaMethod) : Prop :=
  M.determinedFrom ∧ M.volumeFraction ≥ 0 ∧ M.volumeFraction ≤ 1

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse