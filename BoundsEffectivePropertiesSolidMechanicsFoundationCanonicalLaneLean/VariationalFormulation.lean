import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure VariationalFormulationPackage where
  strainEnergyFunctional : Prop
  stressPotential : Prop
  minEnergyPrinciple : Prop
  maxComplementaryEnergy : Prop
  saddlePointCondition : Prop

structure VariationalFormulationEvidence (V : VariationalFormulationPackage) where
  strainEnergyFunctionalClosed : V.strainEnergyFunctional
  stressPotentialClosed : V.stressPotential
  minEnergyPrincipleClosed : V.minEnergyPrinciple
  maxComplementaryEnergyClosed : V.maxComplementaryEnergy
  saddlePointConditionClosed : V.saddlePointCondition

def VariationalFormulationClosed (V : VariationalFormulationPackage) : Prop :=
  V.strainEnergyFunctional ∧ V.stressPotential ∧ V.minEnergyPrinciple ∧ V.maxComplementaryEnergy ∧ V.saddlePointCondition

theorem variational_formulation_closed_from_evidence (V : VariationalFormulationPackage) (Ev : VariationalFormulationEvidence V) : VariationalFormulationClosed V := by
  exact And.intro Ev.strainEnergyFunctionalClosed (And.intro Ev.stressPotentialClosed (And.intro Ev.minEnergyPrincipleClosed (And.intro Ev.maxComplementaryEnergyClosed Ev.saddlePointConditionClosed)))

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse