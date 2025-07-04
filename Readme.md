# Lab Presentation Templates

Professional presentation templates for the Sustainability Lab at IIT Gandhinagar with consistent branding across multiple formats.

## Overview

This repository provides a comprehensive collection of presentation templates designed for academic and research presentations. All templates feature consistent branding with:

- **Professional Design**: Clean, minimal aesthetic with black/gray color scheme
- **Lab Branding**: Sustainability Lab logo and IIT Gandhinagar branding
- **Multiple Formats**: LaTeX Beamer, Markdown (Marp/Reveal.js), and PowerPoint
- **Responsive Layout**: Optimized for different screen sizes and presentation contexts

## Template Formats

### 1. LaTeX Beamer

**Location**: `presentations/beamer/`

- **File**: `example.tex` (enhanced supervised learning example)
- **Class**: `sustainabilitylab.cls` (custom Beamer class)
- **Output**: High-quality PDF presentations
- **Best for**: Academic conferences, thesis defenses, technical presentations
- **Features**: 
  - Professional typography with Latin Modern and Helvetica fonts
  - Enhanced code highlighting with tcolorbox
  - TikZ diagrams for neural networks and workflows
  - Mathematical typesetting
  - 24-slide comprehensive example on supervised learning

### 2. Markdown - Marp

**Location**: `presentations/markdown/`

- **File**: `lab_template.md`
- **Output**: PDF or HTML presentations via Marp
- **Best for**: Quick presentations, web-based sharing
- **Features**: Lightweight syntax, fast compilation

### 3. Markdown - Reveal.js

**Location**: `presentations/markdown/`

- **File**: `reveal_template.html`
- **Output**: Interactive web presentations
- **Best for**: Online presentations, interactive demos
- **Features**: Web-based, animations, responsive design

### 4. PowerPoint

**Location**: `presentations/powerpoint/`

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
cd presentations/beamer
pdflatex example.tex
pdflatex example.tex  # Run twice for proper references
```

#### Marp

```bash
cd presentations/markdown
marp lab_template.md --pdf --allow-local-files
```

#### Reveal.js

```bash
cd presentations/markdown
python3 -m http.server 8000
# Open http://localhost:8000/reveal_template.html in browser
```

## Requirements

### LaTeX Beamer

- LaTeX distribution (TeX Live, MiKTeX, etc.)
- Required packages: beamer, tikz, pgfplots, tcolorbox, listings, booktabs
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

## Features

### Enhanced LaTeX Beamer Class

The custom `sustainabilitylab.cls` provides:

- **Professional Typography**: Latin Modern + scaled Helvetica fonts
- **Enhanced Code Blocks**: tcolorbox with syntax highlighting
- **TikZ Graphics**: Built-in support for professional diagrams
- **Consistent Branding**: Automatic logo and color scheme
- **White Background**: Optimized for matplotlib plots

### Visual Elements

- Neural network architecture diagrams
- Machine learning workflow charts
- Professional code examples
- Mathematical typesetting
- Tables and figures

## Customization

### Updating Content

1. Edit the template files with your content
2. Update title, author, and institution information
3. Replace sample slides with your content

### Modifying Theme

- **Colors**: Edit color definitions in `sustainabilitylab.cls` or template files
- **Fonts**: Change font specifications 
- **Logo**: Replace `../../assets/logo_light.pdf` with your logo

### File Structure

```
lab-templates/
├── README.md
├── .gitignore
├── assets/
│   └── logo_light.pdf
└── presentations/
    ├── README.md
    ├── Makefile
    ├── beamer/
    │   ├── sustainabilitylab.cls
    │   ├── example.tex
    │   └── README.md
    ├── markdown/
    │   ├── lab_template.md
    │   └── reveal_template.html
    └── powerpoint/
        └── lab_template_instructions.md
```

## Design Specifications

- **Colors**: Black (#000000), Dark gray (#404040), Lab accent (#233B3B)
- **Fonts**: Helvetica (scaled 0.9) + Latin Modern
- **Logo**: Top-right corner, consistent sizing across formats
- **Slide Numbers**: Bottom-right corner
- **Layout**: 16:9 aspect ratio, minimal design, proper spacing
- **Background**: Pure white for matplotlib plot compatibility

## Contributing

When updating templates:

1. Maintain consistent design across all formats
2. Test compilation/generation for each format
3. Update documentation for new features
4. Ensure IIT Gandhinagar branding is consistent

## Contact

**Nipun Batra**  
**Sustainability Lab**  
**IIT Gandhinagar**  
**Email:** nipun.batra@iitgn.ac.in  
**Lab Website:** https://sustainability-lab.github.io/