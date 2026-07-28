import canonicalLaneMathlib.AdmissibleClass
import BiochemistryMolecularMotorsCanonicalLaneLean.KineticModelPackage
import BiochemistryMolecularMotorsCanonicalLaneLean.MechanochemicalCoupling

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

def ConstrainedMotorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_motor_endgame (A : AdmissibleClass) : ConstrainedMotorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse