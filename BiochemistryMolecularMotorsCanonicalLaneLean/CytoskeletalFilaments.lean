import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure CytoskeletalFilamentsPackage where
  filamentType : String
  polarity : Prop
  persistenceLength : ℝ
  subunitBinding : ℝ

structure CytoskeletalFilamentsEvidence (F : CytoskeletalFilamentsPackage) where
  filamentTypeClosed : F.filamentType = "microtubule" ∨ F.filamentType = "actin"
  polarityClosed : F.polarity
  persistenceLengthClosed : F.persistenceLength > 0
  subunitBindingClosed : F.subunitBinding > 0

def CytoskeletalFilamentsClosed (F : CytoskeletalFilamentsPackage) : Prop :=
  (F.filamentType = "microtubule" ∨ F.filamentType = "actin") ∧ F.polarity ∧ F.persistenceLength > 0 ∧ F.subunitBinding > 0

theorem cytoskeletal_filaments_closed_from_evidence (F : CytoskeletalFilamentsPackage) (E : CytoskeletalFilamentsEvidence F) :
    CytoskeletalFilamentsClosed F := by
  exact And.intro E.filamentTypeClosed (And.intro E.polarityClosed (And.intro E.persistenceLengthClosed E.subunitBindingClosed))

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse