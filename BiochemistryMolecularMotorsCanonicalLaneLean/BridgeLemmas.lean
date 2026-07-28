import BiochemistryMolecularMotorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MotorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse