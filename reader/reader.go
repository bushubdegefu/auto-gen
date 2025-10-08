package reader

import (
	"encoding/csv"
	"fmt"
	"io"
	"os"

	"github.com/xuri/excelize/v2"
)

// ReadCSVToMap reads a CSV file and returns a slice of maps using headers as keys.
func ReadCSVToMap(filePath string) ([]map[string]string, error) {
	file, err := os.Open(filePath)
	if err != nil {
		return nil, fmt.Errorf("failed to open file: %w", err)
	}
	defer file.Close()

	reader := csv.NewReader(file)

	// Read the first row as headers
	headers, err := reader.Read()
	if err != nil {
		return nil, fmt.Errorf("failed to read headers: %w", err)
	}

	var result []map[string]string

	for {
		record, err := reader.Read()
		if err == io.EOF {
			break // end of file
		}
		if err != nil {
			return nil, fmt.Errorf("error reading record: %w", err)
		}

		// Map headers to values
		row := make(map[string]string)
		for i, header := range headers {
			if i < len(record) {
				row[header] = record[i]
			} else {
				row[header] = ""
			}
		}

		result = append(result, row)
	}

	return result, nil
}

// ReadXLSXToMap reads an XLSX file and returns a slice of maps using headers as keys.
// You must specify the file path and the sheet name.
func ReadXLSXToMap(filePath string, sheetName string) ([]map[string]string, error) {
	f, err := excelize.OpenFile(filePath)
	if err != nil {
		return nil, fmt.Errorf("failed to open Excel file: %w", err)
	}
	defer func() {
		_ = f.Close()
	}()

	rows, err := f.GetRows(sheetName)
	if err != nil {
		return nil, fmt.Errorf("failed to get rows from sheet %q: %w", sheetName, err)
	}

	if len(rows) < 1 {
		return nil, fmt.Errorf("sheet %q is empty", sheetName)
	}

	headers := rows[0]
	var result []map[string]string

	for _, row := range rows[1:] {
		record := make(map[string]string)
		for i, header := range headers {
			if i < len(row) {
				record[header] = row[i]
			} else {
				record[header] = ""
			}
		}
		result = append(result, record)
	}

	return result, nil
}
