import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergyDelta : Type u
  entropyChange : Type v
  enthalpyChange : Type w
  chemicalPotentialDifference : Prop
  equilibriumConstant : Prop
  dissipationRate : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  chemicalPotentialDifferenceClosed : T.chemicalPotentialDifference
  equilibriumConstantClosed : T.equilibriumConstant
  dissipationRateClosed : T.dissipationRate

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.chemicalPotentialDifference ∧ T.equilibriumConstant ∧ T.dissipationRate

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.chemicalPotentialDifferenceClosed
    (And.intro E.equilibriumConstantClosed E.dissipationRateClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse
