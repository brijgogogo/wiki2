# Template Execution
Templates are executed by a custom tool
Text Templates: TextTemplateFileGenerator
Preprocessed Templates: TextTemplatingFilePreprocessor


Execute is triggered:
* save
* run custom tool  (right click on tt file)
* transform all templates (button in solution explorer)
* directly by code  (for preprocessed templates)

PreProcessedTemplates generate the class that can be used to generate code.
Example:
  PreTextTemplate3 t3 = new PreTextTemplate3();
  string result = t3.TransformText();


