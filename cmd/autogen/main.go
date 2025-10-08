package main

import (
	autogen "auto-gen"
	"auto-gen/reader"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/spf13/cobra"
)

var (
	goFrame = &cobra.Command{
		Use:     "generate test for ussd",
		Short:   "generate the ussd .robot outputs",
		Long:    "Manager File Framed by go frame",
		Version: "0.0.0",
		// SilenceErrors: true,
		// SilenceUsage:  true,
	}
)

var autoCommand = &cobra.Command{
	Use:   "gen-tests",
	Short: "Generate the tests based on flags provided",
	Long:  `Generate the tests based on flags provided, output-path, -o, -input -i excel/or csv`,
	Run: func(cmd *cobra.Command, args []string) {
		outputPath, _ := cmd.Flags().GetString("output")
		inputPath, _ := cmd.Flags().GetString("input")
		sheetName, _ := cmd.Flags().GetString("sheet")

		// Determine file type
		ext := strings.ToLower(filepath.Ext(inputPath))

		var data []map[string]string
		var err error

		switch ext {
		case ".csv":
			data, err = reader.ReadCSVToMap(inputPath)
		case ".xlsx":
			if sheetName == "" {
				log.Fatal("sheet name must be provided for XLSX input")
			}
			data, err = reader.ReadXLSXToMap(inputPath, sheetName)
		default:
			log.Fatalf("unsupported input file type: %s", ext)
		}

		if err != nil {
			log.Fatalf("failed to read input file: %v", err)
		}

		// Load the template
		tmpl := autogen.LoadTemplate("test")
		if err != nil {
			log.Fatalf("failed to parse templates: %v", err)
		}

		// Output file
		outputFile := filepath.Join(outputPath, "generated.robot")

		// Convert []map[string]string to []map[string]any for templates
		var templData []map[string]any
		for _, row := range data {
			converted := make(map[string]any)
			for k, v := range row {
				converted[k] = v
			}
			templData = append(templData, converted)
		}

		autogen.WriteTemplateToFileModel(outputFile, tmpl, templData)

		fmt.Printf("✔️ Successfully generated test file: %s\n", outputFile)

	},
}

func Execute() {
	if err := goFrame.Execute(); err != nil {

		fmt.Println(err)
		os.Exit(1)
	}
}

func init() {
	autoCommand.Flags().StringP("output", "o", "exported", "Output directory for exported files")
	autoCommand.Flags().StringP("input", "i", "", "Specify json file  name to load (xlsx,csv) ,(e.g., ussd_test_data.xlsx)")
	autoCommand.Flags().StringP("sheet", "s", "", "Specify sheet name if excel file is provided (e.g., ussd_test_data.xlsx)")

	// Add the export command to your root command or application
	goFrame.AddCommand(autoCommand)
}

func main() {
	Execute()
}
