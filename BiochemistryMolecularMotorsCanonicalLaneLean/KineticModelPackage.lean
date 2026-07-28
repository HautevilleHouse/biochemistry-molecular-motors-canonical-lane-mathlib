import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure KineticModelPackage (M : Type) (N : Type) where
  atpHydrolysisRate : Prop
  michaelisConstant : Prop
  stepSize : Prop
  atpAffinity : Prop
  productReleaseRate : Prop

structure KineticModelEvidence {M N : Type} (P : KineticModelPackage M N) where
  atpHydrolysisRateClosed : P.atpHydrolysisRate
  michaelisConstantClosed : P.michaelisConstant
  stepSizeClosed : P.stepSize
  atpAffinityClosed : P.atpAffinity
  productReleaseRateClosed : P.productReleaseRate

def KineticModelClosed {M N : Type} (P : KineticModelPackage M N) : Prop :=
  P.atpHydrolysisRate ∧ P.michaelisConstant ∧ P.stepSize ∧ P.atpAffinity ∧ P.productReleaseRate

theorem kinetic_model_closed_from_evidence {M N : Type} (P : KineticModelPackage M N) (E : KineticModelEvidence P) : KineticModelClosed P := by
  exact And.intro E.atpHydrolysisRateClosed
    (And.intro E.michaelisConstantClosed
      (And.intro E.stepSizeClosed
        (And.intro E.atpAffinityClosed E.productReleaseRateClosed)))

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse