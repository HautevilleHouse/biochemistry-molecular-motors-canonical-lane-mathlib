import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

def bridgeClosed (A : MotorAdmissibleClass) : Prop :=
  A.object.kineticsCaptured ∧ A.object.thermodynamicsCaptured ∧ A.object.couplingCaptured

theorem bridge_from_admissible_class (A : MotorAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : MotorAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MotorAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse
