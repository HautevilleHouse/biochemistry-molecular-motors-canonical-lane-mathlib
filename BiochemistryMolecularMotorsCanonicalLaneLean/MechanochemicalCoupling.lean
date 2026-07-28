import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MechanochemicalCouplingPackage (M : Type) (E : Type) where
  freeEnergyTransduction : Prop
  mechanicalWorkOutput : Prop
  couplingStoichiometry : Prop
  efficiency : Prop
  forceVelocityRelation : Prop

structure MechanochemicalCouplingEvidence {M E : Type} (C : MechanochemicalCouplingPackage M E) where
  freeEnergyTransductionClosed : C.freeEnergyTransduction
  mechanicalWorkOutputClosed : C.mechanicalWorkOutput
  couplingStoichiometryClosed : C.couplingStoichiometry
  efficiencyClosed : C.efficiency
  forceVelocityRelationClosed : C.forceVelocityRelation

def MechanochemicalCouplingClosed {M E : Type} (C : MechanochemicalCouplingPackage M E) : Prop :=
  C.freeEnergyTransduction ∧ C.mechanicalWorkOutput ∧ C.couplingStoichiometry ∧ C.efficiency ∧ C.forceVelocityRelation

theorem mechanochemical_coupling_closed_from_evidence {M E : Type} (C : MechanochemicalCouplingPackage M E) (E : MechanochemicalCouplingEvidence C) : MechanochemicalCouplingClosed C := by
  exact And.intro E.freeEnergyTransductionClosed
    (And.intro E.mechanicalWorkOutputClosed
      (And.intro E.couplingStoichiometryClosed
        (And.intro E.efficiencyClosed E.forceVelocityRelationClosed)))

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse