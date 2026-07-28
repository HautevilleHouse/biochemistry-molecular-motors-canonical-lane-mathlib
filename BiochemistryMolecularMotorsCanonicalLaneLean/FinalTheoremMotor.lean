import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

def ConstrainedMotorClosure (A : MotorAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_motor_endgame (A : MotorAdmissibleClass) :
    ConstrainedMotorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse
