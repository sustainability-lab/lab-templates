# Sustainability Lab Presentation Templates Makefile

.PHONY: all beamer marp marp-html reveal reveal-pdf powerpoint clean help

# Default target
all: beamer marp reveal-pdf powerpoint

# Build LaTeX Beamer presentation
beamer:
	@echo "Building LaTeX Beamer presentation..."
	cd beamer && pdflatex lab_template.tex
	cd beamer && pdflatex lab_template.tex
	@echo "Beamer PDF created: beamer/lab_template.pdf"

# Build LaTeX Beamer with custom class
beamer-class:
	@echo "Building LaTeX Beamer with custom class..."
	cd beamer && pdflatex example_with_class.tex
	cd beamer && pdflatex example_with_class.tex
	@echo "Beamer class example PDF created: beamer/example_with_class.pdf"

# Build Marp presentation to PDF
marp:
	@echo "Building Marp presentation to PDF..."
	cd markdown && marp lab_template.md --pdf --allow-local-files
	@echo "Marp PDF created: markdown/lab_template.pdf"

# Build Marp presentation to HTML
marp-html:
	@echo "Building Marp presentation to HTML..."
	cd markdown && marp lab_template.md --html --allow-local-files
	@echo "Marp HTML created: markdown/lab_template.html"

# Open reveal.js presentation in browser
reveal:
	@echo "Opening Reveal.js presentation..."
	@if command -v python3 >/dev/null 2>&1; then \
		cd markdown && python3 -m http.server 8000 & \
		sleep 2 && open http://localhost:8000/reveal_template.html; \
		echo "Reveal.js presentation opened at http://localhost:8000/reveal_template.html"; \
		echo "Press Ctrl+C to stop the server"; \
	elif command -v python >/dev/null 2>&1; then \
		cd markdown && python -m SimpleHTTPServer 8000 & \
		sleep 2 && open http://localhost:8000/reveal_template.html; \
		echo "Reveal.js presentation opened at http://localhost:8000/reveal_template.html"; \
		echo "Press Ctrl+C to stop the server"; \
	else \
		echo "Python not found. Please open markdown/reveal_template.html in a web browser manually."; \
	fi

# Export reveal.js presentation to PDF using decktape
reveal-pdf:
	@echo "Exporting Reveal.js presentation to PDF..."
	@mkdir -p assets && cp ../assets/logo_light.svg assets/
	@if command -v decktape >/dev/null 2>&1; then \
		python3 -m http.server 8003 & \
		SERVER_PID=$$!; \
		sleep 3; \
		decktape reveal http://localhost:8003/markdown/reveal_template.html markdown/reveal_template.pdf; \
		kill $$SERVER_PID; \
		echo "Reveal.js PDF created: markdown/reveal_template.pdf"; \
	else \
		echo "decktape not found. Installing..."; \
		npm install -g decktape; \
		python3 -m http.server 8003 & \
		SERVER_PID=$$!; \
		sleep 3; \
		decktape reveal http://localhost:8003/markdown/reveal_template.html markdown/reveal_template.pdf; \
		kill $$SERVER_PID; \
		echo "Reveal.js PDF created: markdown/reveal_template.pdf"; \
	fi

# Generate PowerPoint template
powerpoint:
	@echo "Generating PowerPoint template..."
	cd powerpoint && python create_template.py
	@echo "PowerPoint template created: powerpoint/sustainability_lab_template.pptx"

# Clean generated files
clean:
	@echo "Cleaning generated files..."
	cd beamer && rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.pdf
	cd markdown && rm -f *.pdf *.html
	cd powerpoint && rm -f *.pptx
	@echo "Clean complete."

# Test all templates
test: beamer marp reveal-pdf powerpoint
	@echo "Testing all template formats..."
	@echo "All templates generated successfully!"

# Display help
help:
	@echo "Sustainability Lab Presentation Templates"
	@echo "========================================"
	@echo ""
	@echo "Available targets:"
	@echo "  all          - Build Beamer, Marp, Reveal.js PDF, and PowerPoint presentations"
	@echo "  beamer       - Build LaTeX Beamer presentation to PDF"
	@echo "  marp         - Build Marp presentation to PDF"
	@echo "  marp-html    - Build Marp presentation to HTML"
	@echo "  reveal       - Open Reveal.js presentation in browser"
	@echo "  reveal-pdf   - Export Reveal.js presentation to PDF"
	@echo "  powerpoint   - Generate PowerPoint template using python-pptx"
	@echo "  test         - Generate all formats for testing"
	@echo "  clean        - Remove generated files"
	@echo "  help         - Show this help message"
	@echo ""
	@echo "Requirements:"
	@echo "  LaTeX with pdflatex (for Beamer)"
	@echo "  Marp CLI: npm install -g @marp-team/marp-cli"
	@echo "  Python with python-pptx: pip install python-pptx"
	@echo "  Decktape (for Reveal.js PDF): npm install -g decktape"
	@echo "  Python (for Reveal.js local server)"
	@echo ""
	@echo "Template Features:"
	@echo "  Consistent Sustainability Lab branding"
	@echo "  16:9 widescreen format"
	@echo "  Helvetica font family"
	@echo "  Professional gray color scheme"
	@echo "  Rich content: tables, math, code, figures"