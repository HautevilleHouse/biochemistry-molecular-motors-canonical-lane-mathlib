import BiochemistryMolecularMotorsCanonicalLaneLean.MolecularMotorAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure ATPHydrolysisPackage where
  energyRelease : Float
  hydrolysisRate : Float
  bindingAffinity : Float
  hydrolysisRatePositive : Prop
  bindingAffinityPositive : Prop
  energyReleasePositive : Prop
  evidence : hydrolysisRatePositive ∧ bindingAffinityPositive ∧ energyReleasePositive

structure ATPHydrolysisEvidence (P : ATPHydrolysisPackage) where
  hydrolysisRatePositiveClosed : P.hydrolysisRatePositive
  bindingAffinityPositiveClosed : P.bindingAffinityPositive
  energyReleasePositiveClosed : P.energyReleasePositive

def ATPHydrolysisClosed (P : ATPHydrolysisPackage) : Prop :=
  P.hydrolysisRatePositive ∧ P.bindingAffinityPositive ∧ P.energyReleasePositive

theorem atp_hydrolysis_closed_from_evidence (P : ATPHydrolysisPackage) (E : ATPHydrolysisEvidence P) : ATPHydrolysisClosed P :=
  And.intro E.hydrolysisRatePositiveClosed (And.intro E.bindingAffinityPositiveClosed E.energyReleasePositiveClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse