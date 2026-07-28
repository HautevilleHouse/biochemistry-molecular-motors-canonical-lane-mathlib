import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MolecularMotorMechanismPackage where
  motorType : String
  powerStroke : Prop
  diffusiveSearch : Prop
  stepCoupling : ℝ

structure MolecularMotorMechanismEvidence (M : MolecularMotorMechanismPackage) where
  motorTypeClosed : M.motorType = "kinesin" ∨ M.motorType = "dynein" ∨ M.motorType = "myosin"
  powerStrokeClosed : M.powerStroke
  diffusiveSearchClosed : M.diffusiveSearch
  stepCouplingClosed : M.stepCoupling > 0

def MolecularMotorMechanismClosed (M : MolecularMotorMechanismPackage) : Prop :=
  (M.motorType = "kinesin" ∨ M.motorType = "dynein" ∨ M.motorType = "myosin") ∧ M.powerStroke ∧ M.diffusiveSearch ∧ M.stepCoupling > 0

theorem molecular_motor_mechanism_closed_from_evidence (M : MolecularMotorMechanismPackage) (E : MolecularMotorMechanismEvidence M) :
    MolecularMotorMechanismClosed M := by
  exact And.intro E.motorTypeClosed (And.intro E.powerStrokeClosed (And.intro E.diffusiveSearchClosed E.stepCouplingClosed))

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse