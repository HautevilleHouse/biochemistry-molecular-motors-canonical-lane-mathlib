import BiochemistryMolecularMotorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MotorKineticsPackage where
  motorType : Type u
  atpConcentration : Float
  stepSize : Float
  forwardRate : Float
  backwardRate : Float
  processivity : Prop
  atpHydrolysisCoupled : Prop
  loadDependence : Prop

structure MotorKineticsEvidence (K : MotorKineticsPackage) where
  processivityClosed : K.processivity
  atpHydrolysisCoupledClosed : K.atpHydrolysisCoupled
  loadDependenceClosed : K.loadDependence

def MotorKineticsClosed (K : MotorKineticsPackage) : Prop :=
  K.processivity ∧ K.atpHydrolysisCoupled ∧ K.loadDependence

theorem motor_kinetics_closed_from_evidence (K : MotorKineticsPackage)
    (E : MotorKineticsEvidence K) : MotorKineticsClosed K := by
  exact And.intro E.processivityClosed
    (And.intro E.atpHydrolysisCoupledClosed E.loadDependenceClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse