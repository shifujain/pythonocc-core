/*
Copyright 2008-2017 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{
#include<RWStepFEA_RWAlignedCurve3dElementCoordinateSystem.hxx>
#include<RWStepFEA_RWAlignedSurface3dElementCoordinateSystem.hxx>
#include<RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem.hxx>
#include<RWStepFEA_RWConstantSurface3dElementCoordinateSystem.hxx>
#include<RWStepFEA_RWCurve3dElementProperty.hxx>
#include<RWStepFEA_RWCurve3dElementRepresentation.hxx>
#include<RWStepFEA_RWCurveElementEndOffset.hxx>
#include<RWStepFEA_RWCurveElementEndRelease.hxx>
#include<RWStepFEA_RWCurveElementInterval.hxx>
#include<RWStepFEA_RWCurveElementIntervalConstant.hxx>
#include<RWStepFEA_RWCurveElementIntervalLinearlyVarying.hxx>
#include<RWStepFEA_RWCurveElementLocation.hxx>
#include<RWStepFEA_RWDummyNode.hxx>
#include<RWStepFEA_RWElementGeometricRelationship.hxx>
#include<RWStepFEA_RWElementGroup.hxx>
#include<RWStepFEA_RWElementRepresentation.hxx>
#include<RWStepFEA_RWFeaAreaDensity.hxx>
#include<RWStepFEA_RWFeaAxis2Placement3d.hxx>
#include<RWStepFEA_RWFeaCurveSectionGeometricRelationship.hxx>
#include<RWStepFEA_RWFeaGroup.hxx>
#include<RWStepFEA_RWFeaLinearElasticity.hxx>
#include<RWStepFEA_RWFeaMassDensity.hxx>
#include<RWStepFEA_RWFeaMaterialPropertyRepresentation.hxx>
#include<RWStepFEA_RWFeaMaterialPropertyRepresentationItem.hxx>
#include<RWStepFEA_RWFeaModel.hxx>
#include<RWStepFEA_RWFeaModel3d.hxx>
#include<RWStepFEA_RWFeaModelDefinition.hxx>
#include<RWStepFEA_RWFeaMoistureAbsorption.hxx>
#include<RWStepFEA_RWFeaParametricPoint.hxx>
#include<RWStepFEA_RWFeaRepresentationItem.hxx>
#include<RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion.hxx>
#include<RWStepFEA_RWFeaShellBendingStiffness.hxx>
#include<RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness.hxx>
#include<RWStepFEA_RWFeaShellMembraneStiffness.hxx>
#include<RWStepFEA_RWFeaShellShearStiffness.hxx>
#include<RWStepFEA_RWFeaSurfaceSectionGeometricRelationship.hxx>
#include<RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion.hxx>
#include<RWStepFEA_RWFreedomAndCoefficient.hxx>
#include<RWStepFEA_RWFreedomsList.hxx>
#include<RWStepFEA_RWGeometricNode.hxx>
#include<RWStepFEA_RWNode.hxx>
#include<RWStepFEA_RWNodeDefinition.hxx>
#include<RWStepFEA_RWNodeGroup.hxx>
#include<RWStepFEA_RWNodeRepresentation.hxx>
#include<RWStepFEA_RWNodeSet.hxx>
#include<RWStepFEA_RWNodeWithSolutionCoordinateSystem.hxx>
#include<RWStepFEA_RWNodeWithVector.hxx>
#include<RWStepFEA_RWParametricCurve3dElementCoordinateDirection.hxx>
#include<RWStepFEA_RWParametricCurve3dElementCoordinateSystem.hxx>
#include<RWStepFEA_RWParametricSurface3dElementCoordinateSystem.hxx>
#include<RWStepFEA_RWSurface3dElementRepresentation.hxx>
#include<RWStepFEA_RWVolume3dElementRepresentation.hxx>
#include<Standard.hxx>
#include<Standard_AbortiveTransaction.hxx>
#include<Standard_Address.hxx>
#include<Standard_AncestorIterator.hxx>
#include<Standard_Assert.hxx>
#include<Standard_Atomic.hxx>
#include<Standard_Boolean.hxx>
#include<Standard_Byte.hxx>
#include<Standard_Character.hxx>
#include<Standard_ConstructionError.hxx>
#include<Standard_CString.hxx>
#include<Standard_DefineAlloc.hxx>
#include<Standard_DefineException.hxx>
#include<Standard_DefineHandle.hxx>
#include<Standard_DimensionError.hxx>
#include<Standard_DimensionMismatch.hxx>
#include<Standard_DivideByZero.hxx>
#include<Standard_DomainError.hxx>
#include<Standard_ErrorHandler.hxx>
#include<Standard_ErrorHandlerCallback.hxx>
#include<Standard_ExtCharacter.hxx>
#include<Standard_ExtString.hxx>
#include<Standard_Failure.hxx>
#include<Standard_GUID.hxx>
#include<Standard_HandlerStatus.hxx>
#include<Standard_ImmutableObject.hxx>
#include<Standard_Integer.hxx>
#include<Standard_InternalType.hxx>
#include<Standard_IStream.hxx>
#include<Standard_JmpBuf.hxx>
#include<Standard_KindOfType.hxx>
#include<Standard_LicenseError.hxx>
#include<Standard_LicenseNotFound.hxx>
#include<Standard_Macro.hxx>
#include<Standard_math.hxx>
#include<Standard_MMgrOpt.hxx>
#include<Standard_MMgrRaw.hxx>
#include<Standard_MMgrRoot.hxx>
#include<Standard_MMgrTBBalloc.hxx>
#include<Standard_MultiplyDefined.hxx>
#include<Standard_Mutex.hxx>
#include<Standard_NegativeValue.hxx>
#include<Standard_NoMoreObject.hxx>
#include<Standard_NoSuchObject.hxx>
#include<Standard_NotImplemented.hxx>
#include<Standard_NullObject.hxx>
#include<Standard_NullValue.hxx>
#include<Standard_NumericError.hxx>
#include<Standard_OStream.hxx>
#include<Standard_OutOfMemory.hxx>
#include<Standard_OutOfRange.hxx>
#include<Standard_Overflow.hxx>
#include<Standard_PByte.hxx>
#include<Standard_PCharacter.hxx>
#include<Standard_PErrorHandler.hxx>
#include<Standard_Persistent.hxx>
#include<Standard_Persistent_proto.hxx>
#include<Standard_PExtCharacter.hxx>
#include<Standard_PrimitiveTypes.hxx>
#include<Standard_ProgramError.hxx>
#include<Standard_RangeError.hxx>
#include<Standard_Real.hxx>
#include<Standard_ShortReal.hxx>
#include<Standard_Size.hxx>
#include<Standard_SStream.hxx>
#include<Standard_Storable.hxx>
#include<Standard_Stream.hxx>
#include<Standard_ThreadId.hxx>
#include<Standard_Time.hxx>
#include<Standard_TooManyUsers.hxx>
#include<Standard_Transient.hxx>
#include<Standard_Transient_proto.hxx>
#include<Standard_Type.hxx>
#include<Standard_TypeDef.hxx>
#include<Standard_TypeMismatch.hxx>
#include<Standard_Underflow.hxx>
#include<Standard_UUID.hxx>
#include<Standard_Version.hxx>
#include<Standard_WayOfLife.hxx>
#include<Standard_values.h>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_Category.hxx>
#include<Interface_Check.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_Graph.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_GTool.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_IntList.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_Macros.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_MSG.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_SignType.hxx>
#include<Interface_Static.hxx>
#include<Interface_Statics.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_Translates.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_Version.hxx>
#include<StepFEA_AlignedCurve3dElementCoordinateSystem.hxx>
#include<StepFEA_AlignedSurface3dElementCoordinateSystem.hxx>
#include<StepFEA_ArbitraryVolume3dElementCoordinateSystem.hxx>
#include<StepFEA_Array1OfCurveElementEndOffset.hxx>
#include<StepFEA_Array1OfCurveElementEndRelease.hxx>
#include<StepFEA_Array1OfCurveElementInterval.hxx>
#include<StepFEA_Array1OfDegreeOfFreedom.hxx>
#include<StepFEA_Array1OfElementRepresentation.hxx>
#include<StepFEA_Array1OfNodeRepresentation.hxx>
#include<StepFEA_ConstantSurface3dElementCoordinateSystem.hxx>
#include<StepFEA_CoordinateSystemType.hxx>
#include<StepFEA_Curve3dElementProperty.hxx>
#include<StepFEA_Curve3dElementRepresentation.hxx>
#include<StepFEA_CurveEdge.hxx>
#include<StepFEA_CurveElementEndCoordinateSystem.hxx>
#include<StepFEA_CurveElementEndOffset.hxx>
#include<StepFEA_CurveElementEndRelease.hxx>
#include<StepFEA_CurveElementInterval.hxx>
#include<StepFEA_CurveElementIntervalConstant.hxx>
#include<StepFEA_CurveElementIntervalLinearlyVarying.hxx>
#include<StepFEA_CurveElementLocation.hxx>
#include<StepFEA_DegreeOfFreedom.hxx>
#include<StepFEA_DegreeOfFreedomMember.hxx>
#include<StepFEA_DummyNode.hxx>
#include<StepFEA_ElementGeometricRelationship.hxx>
#include<StepFEA_ElementGroup.hxx>
#include<StepFEA_ElementOrElementGroup.hxx>
#include<StepFEA_ElementRepresentation.hxx>
#include<StepFEA_ElementVolume.hxx>
#include<StepFEA_EnumeratedDegreeOfFreedom.hxx>
#include<StepFEA_FeaAreaDensity.hxx>
#include<StepFEA_FeaAxis2Placement3d.hxx>
#include<StepFEA_FeaCurveSectionGeometricRelationship.hxx>
#include<StepFEA_FeaGroup.hxx>
#include<StepFEA_FeaLinearElasticity.hxx>
#include<StepFEA_FeaMassDensity.hxx>
#include<StepFEA_FeaMaterialPropertyRepresentation.hxx>
#include<StepFEA_FeaMaterialPropertyRepresentationItem.hxx>
#include<StepFEA_FeaModel.hxx>
#include<StepFEA_FeaModel3d.hxx>
#include<StepFEA_FeaModelDefinition.hxx>
#include<StepFEA_FeaMoistureAbsorption.hxx>
#include<StepFEA_FeaParametricPoint.hxx>
#include<StepFEA_FeaRepresentationItem.hxx>
#include<StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx>
#include<StepFEA_FeaShellBendingStiffness.hxx>
#include<StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx>
#include<StepFEA_FeaShellMembraneStiffness.hxx>
#include<StepFEA_FeaShellShearStiffness.hxx>
#include<StepFEA_FeaSurfaceSectionGeometricRelationship.hxx>
#include<StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx>
#include<StepFEA_FreedomAndCoefficient.hxx>
#include<StepFEA_FreedomsList.hxx>
#include<StepFEA_GeometricNode.hxx>
#include<StepFEA_HArray1OfCurveElementEndOffset.hxx>
#include<StepFEA_HArray1OfCurveElementEndRelease.hxx>
#include<StepFEA_HArray1OfCurveElementInterval.hxx>
#include<StepFEA_HArray1OfDegreeOfFreedom.hxx>
#include<StepFEA_HArray1OfElementRepresentation.hxx>
#include<StepFEA_HArray1OfNodeRepresentation.hxx>
#include<StepFEA_HSequenceOfCurve3dElementProperty.hxx>
#include<StepFEA_HSequenceOfElementGeometricRelationship.hxx>
#include<StepFEA_HSequenceOfElementRepresentation.hxx>
#include<StepFEA_HSequenceOfNodeRepresentation.hxx>
#include<StepFEA_Node.hxx>
#include<StepFEA_NodeDefinition.hxx>
#include<StepFEA_NodeGroup.hxx>
#include<StepFEA_NodeRepresentation.hxx>
#include<StepFEA_NodeSet.hxx>
#include<StepFEA_NodeWithSolutionCoordinateSystem.hxx>
#include<StepFEA_NodeWithVector.hxx>
#include<StepFEA_ParametricCurve3dElementCoordinateDirection.hxx>
#include<StepFEA_ParametricCurve3dElementCoordinateSystem.hxx>
#include<StepFEA_ParametricSurface3dElementCoordinateSystem.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfElementRepresentation.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfNodeRepresentation.hxx>
#include<StepFEA_SequenceOfCurve3dElementProperty.hxx>
#include<StepFEA_SequenceOfElementGeometricRelationship.hxx>
#include<StepFEA_SequenceOfElementRepresentation.hxx>
#include<StepFEA_SequenceOfNodeRepresentation.hxx>
#include<StepFEA_Surface3dElementRepresentation.hxx>
#include<StepFEA_SymmetricTensor22d.hxx>
#include<StepFEA_SymmetricTensor23d.hxx>
#include<StepFEA_SymmetricTensor23dMember.hxx>
#include<StepFEA_SymmetricTensor42d.hxx>
#include<StepFEA_SymmetricTensor43d.hxx>
#include<StepFEA_SymmetricTensor43dMember.hxx>
#include<StepFEA_UnspecifiedValue.hxx>
#include<StepFEA_Volume3dElementRepresentation.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfAx1.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXY.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXYZ.hxx>
#include<TColgp_SequenceOfArray1OfPnt2d.hxx>
#include<TColgp_SequenceOfAx1.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_Array1OfByte.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include<TColStd_DataMapNodeOfDataMapOfAsciiStringInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerReal.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<TColStd_DataMapNodeOfDataMapOfStringInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfTransientTransient.hxx>
#include<TColStd_DataMapOfAsciiStringInteger.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerTransient.hxx>
#include<TColStd_DataMapOfStringInteger.hxx>
#include<TColStd_DataMapOfTransientTransient.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_HArray1OfByte.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfInteger.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfReal.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfTransient.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_ListIteratorOfListOfAsciiString.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_ListNodeOfListOfAsciiString.hxx>
#include<TColStd_ListNodeOfListOfInteger.hxx>
#include<TColStd_ListNodeOfListOfReal.hxx>
#include<TColStd_ListNodeOfListOfTransient.hxx>
#include<TColStd_ListOfAsciiString.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_MapIteratorOfMapOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfAsciiString.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_SequenceNodeOfSequenceOfAddress.hxx>
#include<TColStd_SequenceNodeOfSequenceOfAsciiString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfBoolean.hxx>
#include<TColStd_SequenceNodeOfSequenceOfExtendedString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfHAsciiString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfHExtendedString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfInteger.hxx>
#include<TColStd_SequenceNodeOfSequenceOfReal.hxx>
#include<TColStd_SequenceNodeOfSequenceOfTransient.hxx>
#include<TColStd_SequenceOfAddress.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_SequenceOfBoolean.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_StdMapNodeOfMapOfAsciiString.hxx>
#include<TColStd_StdMapNodeOfMapOfInteger.hxx>
#include<TColStd_StdMapNodeOfMapOfReal.hxx>
#include<TColStd_StdMapNodeOfMapOfTransient.hxx>
#include<TCollection.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>
#include<Storage.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_Container.hxx>
#include<Storage_Data.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Storage_DataMapNodeOfMapOfPers.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_Error.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_IndexedDataMapNodeOfPType.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_Macros.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_PArray.hxx>
#include<Storage_Position.hxx>
#include<Storage_PType.hxx>
#include<Storage_Root.hxx>
#include<Storage_RootData.hxx>
#include<Storage_Schema.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_TypedCallBack.hxx>
%};
%import Standard.i
%import Interface.i
%import StepFEA.i