# Lab Presentation Templates

Professional presentation templates for the lab with consistent branding across multiple formats.

## Features

- **Consistent Design**: Black and gray color scheme with Helvetica fonts
- **Lab Branding**: Logo positioned in top-right corner
- **Clean Layout**: Minimal design with proper spacing and typography
- **Multiple Formats**: LaTeX Beamer, Markdown (Marp/Reveal.js), and PowerPoint

## Template Formats

### 1. LaTeX Beamer (`beamer/`)
- **File**: `lab_template.tex`
- **Output**: PDF presentation
- **Best for**: Academic conferences, detailed technical presentations

### 2. Markdown - Marp (`markdown/`)
- **File**: `lab_template.md`
- **Output**: PDF or HTML presentation
- **Best for**: Quick presentations, web-based sharing

### 3. Markdown - Reveal.js (`markdown/`)
- **File**: `reveal_template.html`
- **Output**: Interactive web presentation
- **Best for**: Online presentations, interactive demos

### 4. PowerPoint (`powerpoint/`)
- **File**: `lab_template_instructions.md`
- **Output**: PowerPoint template (.potx)
- **Best for**: Business presentations, collaborative editing

## Quick Start

### Using the Makefile

```bash
# Build all presentations
make all

# Build specific format
make beamer        # LaTeX Beamer to PDF
make marp          # Marp to PDF  
make marp-html     # Marp to HTML
make reveal        # Open Reveal.js in browser

# Clean generated files
make clean

# Show help
make help
```

### Manual Compilation

#### LaTeX Beamer
```bash
cd beamer
pdflatex lab_template.tex
pdflatex lab_template.tex  # Run twice for proper references
```

#### Marp
```bash
cd markdown
marp lab_template.md --pdf --allow-local-files
```

#### Reveal.js
```bash
cd markdown
python3 -m http.server 8000
# Open http://localhost:8000/reveal_template.html in browser
```

## Requirements

### LaTeX Beamer
- LaTeX distribution (TeX Live, MiKTeX, etc.)
- `pdflatex` command available

### Marp
- [Marp CLI](https://github.com/marp-team/marp-cli)
```bash
npm install -g @marp-team/marp-cli
```

### Reveal.js
- Modern web browser
- Python (for local server) or any HTTP server

### PowerPoint
- Microsoft PowerPoint or compatible software
- Follow instructions in `powerpoint/lab_template_instructions.md`

## Customization

### Updating Content
1. Edit the template files with your content
2. Update title, author, and institution information
3. Replace sample slides with your content

### Modifying Theme
- **Colors**: Edit color definitions in each template
- **Fonts**: Change font specifications (currently set to Helvetica)
- **Logo**: Replace `../../assets/logo_light.svg` with your logo

### File Structure
```
presentations/
├── beamer/
│   └── lab_template.tex
├── markdown/
│   ├── lab_template.md        # Marp template
│   └── reveal_template.html   # Reveal.js template
├── powerpoint/
│   └── lab_template_instructions.md
├── Makefile
└── README.md
```

## Design Specifications

- **Colors**: Black text (#000000), Dark gray (#404040), Medium gray (#808080)
- **Fonts**: Helvetica Neue, Helvetica, or Arial
- **Logo**: Top-right corner, consistent sizing
- **Slide Numbers**: Bottom-right corner
- **Layout**: Clean, minimal design with proper spacing

## Troubleshooting

### LaTeX Issues
- Ensure all required packages are installed
- Check that the logo path is correct (`../../assets/logo_light.svg`)

### Marp Issues
- Use `--allow-local-files` flag for local logo access
- Install latest version of Marp CLI

### Reveal.js Issues
- Ensure logo path is accessible from the HTML file
- Use a local HTTP server for proper file loading

## Contributing

When updating templates:
1. Maintain consistent design across all formats
2. Test compilation/generation for each format
3. Update this README if adding new features