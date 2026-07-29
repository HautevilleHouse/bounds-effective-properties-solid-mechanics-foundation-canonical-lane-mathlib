import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure EffectiveMediumObject where
  compositeType : Type u
  phaseProperties : Prop
  volumeFractions : Prop
  conclusion : phaseProperties ∧ volumeFractions

structure AdmissibleClass where
  object : EffectiveMediumObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.phaseProperties ∧ A.object.volumeFractions) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
