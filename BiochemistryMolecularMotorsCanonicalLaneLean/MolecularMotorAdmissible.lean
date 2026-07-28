import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MotorAdmittedObject where
  motorType : String
  kineticsCaptured : Prop
  thermodynamicsCaptured : Prop
  couplingCaptured : Prop
  conclusion : kineticsCaptured ∧ thermodynamicsCaptured ∧ couplingCaptured

structure MotorAdmissibleClass where
  object : MotorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedMotorClosure (A : MotorAdmissibleClass) : Prop :=
  (A.object.kineticsCaptured ∧ A.object.thermodynamicsCaptured ∧ A.object.couplingCaptured) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse
