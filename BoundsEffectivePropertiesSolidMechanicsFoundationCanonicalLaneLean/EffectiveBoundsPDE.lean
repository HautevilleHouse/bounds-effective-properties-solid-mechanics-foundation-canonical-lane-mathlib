import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EffectiveBoundsPDE where
  domain : Type u
  elasticityTensor : Type v
  sourceTerm : Type w
  strongForm : Prop
  weakForm : Prop
  solutionExistence : Prop
  uniqueness : Prop
  energyEstimate : Prop

structure EffectiveBoundsPDEEvidence (P : EffectiveBoundsPDE) where
  strongFormClosed : P.strongForm
  weakFormClosed : P.weakForm
  solutionExistenceClosed : P.solutionExistence
  uniquenessClosed : P.uniqueness
  energyEstimateClosed : P.energyEstimate

def EffectiveBoundsPDEClosed (P : EffectiveBoundsPDE) : Prop :=
  P.strongForm ∧ P.weakForm ∧ P.solutionExistence ∧ P.uniqueness ∧ P.energyEstimate

theorem effective_bounds_pde_closed_from_evidence
    (P : EffectiveBoundsPDE) (E : EffectiveBoundsPDEEvidence P) :
    EffectiveBoundsPDEClosed P := by
  exact And.intro E.strongFormClosed
    (And.intro E.weakFormClosed
      (And.intro E.solutionExistenceClosed
        (And.intro E.uniquenessClosed E.energyEstimateClosed)))

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
