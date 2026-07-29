import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure ElasticInclusionProblem where
  hostElasticModuli : Type u
  inclusionElasticModuli : Type v
  eigenstrainField : Type w
  EshelbyTensor : Type x
  stressConcentration : Prop
  strainConcentration : Prop

structure InclusionEvidence (I : ElasticInclusionProblem) where
  stressConcentrationClosed : I.stressConcentration
  strainConcentrationClosed : I.strainConcentration

def InclusionProblemClosed (I : ElasticInclusionProblem) : Prop :=
  I.stressConcentration ∧ I.strainConcentration

theorem inclusion_problem_closed_from_evidence (I : ElasticInclusionProblem) (E : InclusionEvidence I) :
    InclusionProblemClosed I := by
  exact And.intro E.stressConcentrationClosed E.strainConcentrationClosed

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
