import BiochemistryMolecularMotorsCanonicalLaneLean.MotorStepping

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure ForceKineticsPackage {A : ATPHydrolysisPackage} {M : MotorSteppingPackage A} where
  stallForce : Float
  loadDependence : Float
  stallForcePositive : Prop
  loadDependenceFinite : Prop
  evidence : stallForcePositive ∧ loadDependenceFinite

structure ForceKineticsEvidence {A : ATPHydrolysisPackage} {M : MotorSteppingPackage A} (F : ForceKineticsPackage A M) where
  stallForcePositiveClosed : F.stallForcePositive
  loadDependenceFiniteClosed : F.loadDependenceFinite

def ForceKineticsClosed {A : ATPHydrolysisPackage} {M : MotorSteppingPackage A} (F : ForceKineticsPackage A M) : Prop :=
  F.stallForcePositive ∧ F.loadDependenceFinite

theorem force_kinetics_closed_from_evidence {A : ATPHydrolysisPackage} {M : MotorSteppingPackage A} (F : ForceKineticsPackage A M) (E : ForceKineticsEvidence F) : ForceKineticsClosed F :=
  And.intro E.stallForcePositiveClosed E.loadDependenceFiniteClosed

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse