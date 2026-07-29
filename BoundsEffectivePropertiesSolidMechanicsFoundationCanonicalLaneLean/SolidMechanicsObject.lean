import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean

structure SolidMechanicsObject where
  representativeVolumeElement : Type u
  materialSymmetry : MaterialSymmetryGroup
  effectiveModulus : ModulusTensor
  boundsConverged : Prop
  conclusion : boundsConverged

inductive MaterialSymmetryGroup
| isotropic | cubic | transverseIsotropic | orthotropic

default

structure ModulusTensor where
  rank : ℕ
  symmetryGroup : MaterialSymmetryGroup
  positiveDefinite : Prop
  boundsSatisfied : Prop

def EffectivePropertyClosed (obj : SolidMechanicsObject) : Prop :=
  obj.boundsConverged

end BoundsEffectivePropertiesSolidMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
