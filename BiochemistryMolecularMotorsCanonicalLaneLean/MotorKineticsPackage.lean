import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MotorKineticsPackage where
  reactionRateConstant : Type u
  michaelisConstant : Type v
  turnoverNumber : Type w
  atpHydrolysisRate : Prop
  processivityIndex : Prop
  steppingVelocity : Prop

structure MotorKineticsEvidence (P : MotorKineticsPackage) where
  atpHydrolysisRateClosed : P.atpHydrolysisRate
  processivityIndexClosed : P.processivityIndex
  steppingVelocityClosed : P.steppingVelocity

def MotorKineticsClosed (P : MotorKineticsPackage) : Prop :=
  P.atpHydrolysisRate ∧ P.processivityIndex ∧ P.steppingVelocity

theorem motor_kinetics_closed_from_evidence (P : MotorKineticsPackage)
    (E : MotorKineticsEvidence P) : MotorKineticsClosed P := by
  exact And.intro E.atpHydrolysisRateClosed
    (And.intro E.processivityIndexClosed E.steppingVelocityClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse
