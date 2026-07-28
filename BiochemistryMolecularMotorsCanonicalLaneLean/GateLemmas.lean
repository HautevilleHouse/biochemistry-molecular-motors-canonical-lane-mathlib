import BiochemistryMolecularMotorsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse