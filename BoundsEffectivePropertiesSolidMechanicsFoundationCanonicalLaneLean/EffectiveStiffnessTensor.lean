import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EffectiveStiffnessTensor where
  fourthRankTensor : Type u
  symmetryMinor : Prop
  symmetryMajor : Prop
  positiveDefiniteness : Prop
  voigtReussBounds : Prop
  hashinShtrikmanBounds : (V : VariationalHashinShtrikmanBounds) → Prop
  selfConsistentEstimate : Prop

structure StiffnessEvidence (C : EffectiveStiffnessTensor) where
  symmetryMinorClosed : C.symmetryMinor
  symmetryMajorClosed : C.symmetryMajor
  positiveDefinitenessClosed : C.positiveDefiniteness
  voigtReussBoundsClosed : C.voigtReussBounds
  hashinShtrikmanBoundsClosed : ∀ (V : VariationalHashinShtrikmanBounds), C.hashinShtrikmanBounds V
  selfConsistentEstimateClosed : C.selfConsistentEstimate

def EffectiveStiffnessClosed (C : EffectiveStiffnessTensor) : Prop :=
  C.symmetryMinor ∧ C.symmetryMajor ∧ C.positiveDefiniteness ∧
  C.voigtReussBounds ∧ (∀ V : VariationalHashinShtrikmanBounds, C.hashinShtrikmanBounds V) ∧
  C.selfConsistentEstimate

theorem effective_stiffness_closed_from_evidence (C : EffectiveStiffnessTensor) (E : StiffnessEvidence C) :
    EffectiveStiffnessClosed C := by
  refine And.intro E.symmetryMinorClosed
    (And.intro E.symmetryMajorClosed
      (And.intro E.positiveDefinitenessClosed
        (And.intro E.voigtReussBoundsClosed
          (And.intro (fun V => E.hashinShtrikmanBoundsClosed V) E.selfConsistentEstimateClosed))))

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
