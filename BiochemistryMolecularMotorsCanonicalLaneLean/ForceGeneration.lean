import BiochemistryMolecularMotorsCanonicalLaneLean.ATPHydrolysis

namespace HautevilleHouse
namespace BiochemistryMolecularMotorsCanonicalLaneLean

structure ForceGenerationPackage where
  stallForce : Float
  stepSize : Float
  powerStrokeLength : Float
  forceVelocityRelation : Float -> Float
  loadDependence : Float
  mechanicalEfficiency : Float

structure ForceGenerationEvidence (F : ForceGenerationPackage) where
  stallForceClosed : F.stallForce > 0
  stepSizeClosed : F.stepSize > 0
  powerStrokeLengthClosed : F.powerStrokeLength > 0
  forceVelocityRelationClosed : ∀ v, F.forceVelocityRelation v ≥ 0
  loadDependenceClosed : F.loadDependence > 0
  mechanicalEfficiencyClosed : F.mechanicalEfficiency > 0

def ForceGenerationClosed (F : ForceGenerationPackage) : Prop :=
  F.stallForce > 0 ∧ F.stepSize > 0 ∧
  F.powerStrokeLength > 0 ∧ (∀ v, F.forceVelocityRelation v ≥ 0) ∧
  F.loadDependence > 0 ∧ F.mechanicalEfficiency > 0

theorem force_generation_closed_from_evidence (F : ForceGenerationPackage) (E : ForceGenerationEvidence F) :
    ForceGenerationClosed F := by
  exact And.intro E.stallForceClosed
    (And.intro E.stepSizeClosed
      (And.intro E.powerStrokeLengthClosed
        (And.intro E.forceVelocityRelationClosed
          (And.intro E.loadDependenceClosed E.mechanicalEfficiencyClosed))))

end BiochemistryMolecularMotorsCanonicalLaneLean
end HautevilleHouse