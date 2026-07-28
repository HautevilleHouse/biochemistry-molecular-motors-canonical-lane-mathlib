import BiochemistryMolecularMotorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure ThermodynamicsChemicalEquilibriumPackage where
  GibbsFreeEnergyChange : Float
  equilibriumConstant : Float
  entropyChange : Float
  enthalpyChange : Float
  temperature : Float
  secondLawSatisfied : Prop
  detailedBalanceHolds : Prop
  reactionSpontaneity : Prop

structure ThermodynamicsChemicalEquilibriumEvidence
    (T : ThermodynamicsChemicalEquilibriumPackage) where
  secondLawSatisfiedClosed : T.secondLawSatisfied
  detailedBalanceHoldsClosed : T.detailedBalanceHolds
  reactionSpontaneityClosed : T.reactionSpontaneity

def ThermodynamicsChemicalEquilibriumClosed
    (T : ThermodynamicsChemicalEquilibriumPackage) : Prop :=
  T.secondLawSatisfied ∧ T.detailedBalanceHolds ∧ T.reactionSpontaneity

theorem thermodynamics_chemical_equilibrium_closed_from_evidence
    (T : ThermodynamicsChemicalEquilibriumPackage)
    (E : ThermodynamicsChemicalEquilibriumEvidence T) :
    ThermodynamicsChemicalEquilibriumClosed T := by
  exact And.intro E.secondLawSatisfiedClosed
    (And.intro E.detailedBalanceHoldsClosed E.reactionSpontaneityClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse