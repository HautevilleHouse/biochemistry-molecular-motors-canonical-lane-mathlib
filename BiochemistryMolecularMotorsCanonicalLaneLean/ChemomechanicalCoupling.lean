import BiochemistryMolecularMotorsCanonicalLaneLean.ForceGeneration

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure ChemomechanicalCouplingPackage where
  couplingEfficiency : Float
  mechanochemicalCoefficient : Float
  freeEnergyToWorkConversion : Float
  slipProbability : Float
  backsteppingRate : Float

structure ChemomechanicalCouplingEvidence (C : ChemomechanicalCouplingPackage) where
  couplingEfficiencyClosed : C.couplingEfficiency > 0
  mechanochemicalCoefficientClosed : C.mechanochemicalCoefficient > 0
  freeEnergyToWorkConversionClosed : C.freeEnergyToWorkConversion > 0
  slipProbabilityClosed : C.slipProbability ≥ 0
  backsteppingRateClosed : C.backsteppingRate ≥ 0

def ChemomechanicalCouplingClosed (C : ChemomechanicalCouplingPackage) : Prop :=
  C.couplingEfficiency > 0 ∧ C.mechanochemicalCoefficient > 0 ∧
  C.freeEnergyToWorkConversion > 0 ∧ C.slipProbability ≥ 0 ∧
  C.backsteppingRate ≥ 0

theorem chemomechanical_coupling_closed_from_evidence (C : ChemomechanicalCouplingPackage) (E : ChemomechanicalCouplingEvidence C) :
    ChemomechanicalCouplingClosed C := by
  exact And.intro E.couplingEfficiencyClosed
    (And.intro E.mechanochemicalCoefficientClosed
      (And.intro E.freeEnergyToWorkConversionClosed
        (And.intro E.slipProbabilityClosed E.backsteppingRateClosed)))

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse