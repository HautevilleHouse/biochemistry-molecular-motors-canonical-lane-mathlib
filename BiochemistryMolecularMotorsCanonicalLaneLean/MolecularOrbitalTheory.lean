import BiochemistryMolecularMotorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalHybridization : Type u
  frontierOrbitalGap : Float
  electronTransferRate : Float
  donorAcceptorCoupling : Prop
  marcusTheoryApplicable : Prop
  orbitalSymmetryMatched : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  donorAcceptorCouplingClosed : M.donorAcceptorCoupling
  marcusTheoryApplicableClosed : M.marcusTheoryApplicable
  orbitalSymmetryMatchedClosed : M.orbitalSymmetryMatched

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.donorAcceptorCoupling ∧ M.marcusTheoryApplicable ∧ M.orbitalSymmetryMatched

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.donorAcceptorCouplingClosed
    (And.intro E.marcusTheoryApplicableClosed E.orbitalSymmetryMatchedClosed)

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse