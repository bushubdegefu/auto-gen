package autogen

import (
	"embed"
	"fmt"
	"os"
	"text/template"
)

//go:embed template/*.tmpl
var TemplateFS embed.FS

func WriteTemplateToFileModel(filePath string, tmpl *template.Template, data []map[string]any) {
	f, err := os.Create(filePath)
	if err != nil {
		panic(fmt.Errorf("failed to create file %s: %w", filePath, err))
	}
	defer f.Close()

	if err := tmpl.Execute(f, data); err != nil {
		panic(fmt.Errorf("failed to execute template on %s: %w", filePath, err))
	}
}

func LoadTemplate(name string) *template.Template {
	tmplContent, err := TemplateFS.ReadFile("template/" + name + ".tmpl")
	if err != nil {
		panic(fmt.Errorf("failed to read embedded template: %w", err))
	}
	tmpl, err := template.New(name).Funcs(FuncMap).Parse(string(tmplContent))
	if err != nil {
		panic(fmt.Errorf("failed to parse template: %w", err))
	}
	return tmpl
}
