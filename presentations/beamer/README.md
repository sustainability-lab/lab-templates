# LaTeX Beamer Template - Sustainability Lab

Enhanced LaTeX Beamer class for professional academic presentations with Sustainability Lab branding.

## Files

- **`sustainabilitylab.cls`** - Custom Beamer class with professional styling
- **`example.tex`** - Comprehensive 24-slide supervised learning presentation
- **`example.pdf`** - Generated presentation (not tracked in git)

## Features

### Enhanced Typography
- **Professional fonts**: Latin Modern + scaled Helvetica (0.9)
- **Consistent sizing**: Large frame titles, proper hierarchy
- **Clean layout**: Minimal design with optimal spacing

### Visual Elements
- **TikZ diagrams**: Neural network architectures, workflow charts
- **Enhanced code**: Professional syntax highlighting with tcolorbox
- **Tables & figures**: Publication-quality formatting
- **Mathematical typesetting**: Full LaTeX math support

### Branding
- **Sustainability Lab logo**: Automatically positioned top-right
- **IIT Gandhinagar colors**: Professional black/gray scheme
- **Consistent design**: Logo, slide numbers, proper spacing
- **White background**: Optimized for matplotlib plots

## Quick Start

```bash
# Compile the example presentation
pdflatex example.tex
pdflatex example.tex  # Run twice for proper references

# Create your own presentation
\documentclass{sustainabilitylab}
\title{Your Title}
\author{Your Name}
\institute{Sustainability Lab \\ IIT Gandhinagar}
\date{\today}

\begin{document}
\begin{frame}
  \titlepage
\end{frame}

\begin{frame}{Your First Slide}
  Content goes here...
\end{frame}
\end{document}
```

## Advanced Features

### Code Blocks
```latex
\begin{codebox}
# Your Python code here
import matplotlib.pyplot as plt
import numpy as np
\end{codebox}
```

### TikZ Diagrams
```latex
\begin{tikzpicture}
  % Neural network diagrams
  % Workflow charts
  % Custom graphics
\end{tikzpicture}
```

### Professional Tables
```latex
\begin{table}
\centering
\begin{tabular}{lcc}
\toprule
\textbf{Method} & \textbf{Accuracy} & \textbf{Time} \\
\midrule
Linear Regression & 0.73 & 0.02s \\
Neural Network & 0.83 & 45.60s \\
\bottomrule
\end{tabular}
\end{table}
```

## Customization

### Colors
Edit `sustainabilitylab.cls` lines 27-30:
```latex
\definecolor{labblack}{RGB}{0,0,0}
\definecolor{labgray}{RGB}{64,64,64}
\definecolor{lablightgray}{RGB}{200,200,200}
\definecolor{labaccent}{RGB}{35,55,59}
```

### Logo
Replace `../../assets/logo_light.pdf` with your logo file.

### Fonts
Modify font settings in lines 18-24 of the class file.

## Requirements

- LaTeX distribution (TeX Live recommended)
- Required packages: beamer, tikz, pgfplots, tcolorbox, listings, booktabs
- Logo file: `../../assets/logo_light.pdf`

## Example Content

The included `example.tex` demonstrates:
- 24 comprehensive slides on supervised learning
- Neural network diagrams with TikZ
- Code examples with enhanced highlighting
- Professional tables and mathematical content
- Real-world applications and case studies
- Proper academic presentation structure

Perfect for academic conferences, thesis defenses, and technical presentations.

## Contact

**Sustainability Lab**  
**IIT Gandhinagar**  
**Email:** nipun.batra@iitgn.ac.in  
**Lab Website:** https://sustainability-lab.github.io/