import BiochemistryMolecularMotorsCanonicalLaneLean.ATPHydrolysis

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MotorSteppingPackage {A : ATPHydrolysisPackage} where
  stepSize : Float
  stepRate : Float
  directionalBias : Float
  stepSizePositive : Prop
  stepRatePositive : Prop
  directionalBiasFinite : Prop
  evidence : stepSizePositive ∧ stepRatePositive ∧ directionalBiasFinite

structure MotorSteppingEvidence {A : ATPHydrolysisPackage} (P : MotorSteppingPackage A) where
  stepSizePositiveClosed : P.stepSizePositive
  stepRatePositiveClosed : P.stepRatePositive
  directionalBiasFiniteClosed : P.directionalBiasFinite

def MotorSteppingClosed {A : ATPHydrolysisPackage} (P : MotorSteppingPackage A) : Prop :=
  P.stepSizePositive ∧ P.stepRatePositive ∧ P.directionalBiasFinite

theorem motor_stepping_closed_from_evidence {A : ATPHydrolysisPackage} (P : MotorSteppingPackage A) (E : MotorSteppingEvidence P) : MotorSteppingClosed P :=
  And.intro E.stepSizePositiveClosed (And.intro E.stepRatePositiveClosed E.directionalBiasFiniteClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse