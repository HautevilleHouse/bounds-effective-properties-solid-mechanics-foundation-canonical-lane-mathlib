import BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SolidMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SolidMechanicsAdmittedObject where
  space : SolidMechanicsSpace
  boundedMedium : Prop
  effectivePropertiesDefined : Prop
  boundsModel : Type
  boundsTopology : TopologicalSpace boundsModel
  boundsSatisfied : Prop
  conclusion : boundsSatisfied

structure SolidMechanicsEndgameState where
  object : SolidMechanicsAdmittedObject

def SolidMechanicsWitnessClosed (O : SolidMechanicsAdmittedObject) : Prop :=
  O.boundsSatisfied

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
