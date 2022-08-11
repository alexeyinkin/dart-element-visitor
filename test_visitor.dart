import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class TestVisitor extends ElementVisitor<void> {
  final list = <String>[];
  final enumConstants = <FieldElement>[];

  @override
  String toString() {
    final buffer = StringBuffer('// TestVisitor:\n//\n');

    buffer.writeln('// All elements:');
    for (final str in list) {
      buffer.writeln('// $str');
    }

    return buffer.toString();
  }

  @override
  void visitAugmentationImportElement(AugmentationImportElement element) {
    list.add('visitAugmentationImportElement $element');
  }

  @override
  void visitClassElement(ClassElement element) {
    list.add('visitClassElement $element');
  }

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) {
    list.add('visitCompilationUnitElement $element');
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    list.add('visitConstructorElement $element');
  }

  @override
  void visitEnumElement(EnumElement element) {
    list.add('visitEnumElement $element');
  }

  @override
  void visitExportElement(ExportElement element) {
    list.add('visitExportElement $element');
  }

  @override
  void visitExtensionElement(ExtensionElement element) {
    list.add('visitExtensionElement $element');
  }

  @override
  void visitFieldElement(FieldElement element) {
    list.add('visitFieldElement $element. ' 'isEnumConstant: ${element.isEnumConstant}');

    if (element.isEnumConstant) {
      enumConstants.add(element);
    }
  }

  @override
  void visitFieldFormalParameterElement(FieldFormalParameterElement element) {
    list.add('visitFieldFormalParameterElement $element');
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    list.add('visitFunctionElement $element');
  }

  @override
  void visitGenericFunctionTypeElement(GenericFunctionTypeElement element) {
    list.add('visitGenericFunctionTypeElement $element');
  }

  @override
  void visitImportElement(ImportElement element) {
    list.add('visitImportElement $element');
  }

  @override
  void visitLabelElement(LabelElement element) {
    list.add('visitLabelElement $element');
  }

  @override
  void visitLibraryAugmentationElement(LibraryAugmentationElement element) {
    list.add('visitLibraryAugmentationElement $element');
  }

  @override
  void visitLibraryElement(LibraryElement element) {
    list.add('visitLibraryElement $element');
  }

  @override
  void visitLibraryExportElement(LibraryExportElement element) {
    list.add('visitLibraryExportElement $element');
  }

  @override
  void visitLibraryImportElement(LibraryImportElement element) {
    list.add('visitLibraryImportElement $element');
  }

  @override
  void visitLocalVariableElement(LocalVariableElement element) {
    list.add('visitLocalVariableElement $element');
  }

  @override
  void visitMethodElement(MethodElement element) {
    list.add('visitMethodElement $element');
  }

  @override
  void visitMixinElement(MixinElement element) {
    list.add('visitMixinElement $element');
  }

  @override
  void visitMultiplyDefinedElement(MultiplyDefinedElement element) {
    list.add('visitMultiplyDefinedElement $element');
  }

  @override
  void visitParameterElement(ParameterElement element) {
    list.add('visitParameterElement $element');
  }

  @override
  void visitPartElement(PartElement element) {
    list.add('visitPartElement $element');
  }

  @override
  void visitPrefixElement(PrefixElement element) {
    list.add('visitPrefixElement $element');
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    list.add('visitPropertyAccessorElement $element');
  }

  @override
  void visitSuperFormalParameterElement(SuperFormalParameterElement element) {
    list.add('visitSuperFormalParameterElement $element');
  }

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) {
    list.add('visitTopLevelVariableElement $element');
  }

  @override
  void visitTypeAliasElement(TypeAliasElement element) {
    list.add('visitTypeAliasElement $element');
  }

  @override
  void visitTypeParameterElement(TypeParameterElement element) {
    list.add('visitTypeParameterElement $element');
  }
}

