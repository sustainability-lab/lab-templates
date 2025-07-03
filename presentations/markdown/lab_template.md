---
marp: true
theme: lab
paginate: true
header: '![width:80px](../../assets/logo_light.svg)'
footer: ''
style: |
  @import 'https://fonts.googleapis.com/css2?family=Helvetica+Neue:wght@300;400;700&display=swap';
  
  section {
    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
    background: white;
    color: #000000;
    padding: 80px;
    line-height: 1.6;
  }
  
  h1, h2, h3, h4, h5, h6 {
    color: #000000;
    font-weight: 600;
    line-height: 1.2;
  }
  
  h1 {
    font-size: 2.8em;
    font-weight: 700;
    border-bottom: 3px solid #404040;
    padding-bottom: 15px;
    margin-bottom: 40px;
  }
  
  h2 {
    font-size: 2.2em;
    font-weight: 600;
    border-bottom: 2px solid #404040;
    padding-bottom: 12px;
    margin-bottom: 35px;
  }
  
  header {
    position: absolute;
    top: 20px;
    right: 40px;
    z-index: 1000;
  }
  
  footer {
    position: absolute;
    bottom: 20px;
    right: 40px;
    font-size: 14px;
    color: #808080;
  }
  
  footer::after {
    content: attr(data-marpit-pagination) ' / ' attr(data-marpit-pagination-total);
  }
  
  ul, ol {
    font-size: 1.3em;
    line-height: 1.8;
    margin-left: 0;
  }
  
  li {
    margin-bottom: 12px;
  }
  
  ul > li {
    list-style: none;
    position: relative;
    padding-left: 30px;
  }
  
  ul > li::before {
    content: "▪";
    color: #404040;
    font-weight: bold;
    font-size: 1.5em;
    position: absolute;
    left: 0;
    top: -2px;
  }
  
  code {
    background: #f5f5f5;
    padding: 4px 8px;
    border-radius: 4px;
    font-family: 'Courier New', Consolas, monospace;
    font-size: 0.9em;
    color: #d14;
  }
  
  pre {
    background: #f8f8f8;
    padding: 25px;
    border-radius: 8px;
    border-left: 4px solid #404040;
    font-size: 0.9em;
    overflow-x: auto;
  }
  
  table {
    border-collapse: collapse;
    width: 100%;
    margin: 20px 0;
    font-size: 1.1em;
  }
  
  th, td {
    border: 1px solid #808080;
    padding: 15px;
    text-align: left;
  }
  
  th {
    background-color: #f5f5f5;
    font-weight: 600;
    color: #000;
  }
  
  blockquote {
    border-left: 4px solid #808080;
    padding-left: 20px;
    font-style: italic;
    color: #404040;
  }
  
  table {
    border-collapse: collapse;
    width: 100%;
    margin: 20px 0;
  }
  
  th, td {
    border: 1px solid #808080;
    padding: 12px;
    text-align: left;
  }
  
  th {
    background-color: #f5f5f5;
    font-weight: bold;
  }
  
  .columns {
    display: flex;
    gap: 40px;
  }
  
  .column {
    flex: 1;
  }
  
  .math {
    font-size: 1.1em;
    margin: 20px 0;
  }
  
  section.title {
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  
  section.title h1 {
    border: none;
    margin-bottom: 20px;
  }
  
  section.title .subtitle {
    font-size: 1.5em;
    color: #404040;
    margin-bottom: 40px;
  }
  
  section.title .author {
    font-size: 1.2em;
    margin-bottom: 10px;
  }
  
  section.title .institute {
    font-size: 1em;
    color: #808080;
    margin-bottom: 40px;
  }
  
  section.title .logo {
    margin-top: 40px;
  }
  
  .highlight {
    background-color: #f0f0f0;
    padding: 20px;
    border-radius: 8px;
    border-left: 4px solid #404040;
  }
  
  .metrics {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    margin: 20px 0;
  }
  
  .metric {
    text-align: center;
    padding: 15px;
    background: #f8f8f8;
    border-radius: 8px;
  }
  
  .metric-value {
    font-size: 2em;
    font-weight: bold;
    color: #404040;
  }
  
  .metric-label {
    font-size: 0.9em;
    color: #808080;
  }
---

<!-- _class: title -->
<!-- _header: '' -->
<!-- _footer: '' -->
<!-- _paginate: false -->

# Deep Learning for Computer Vision

<div class="subtitle">Advanced Neural Network Architectures</div>
<div class="author">Nipun Batra</div>
<div class="institute">Sustainability Lab<br>IIT Gandhinagar</div>
<div class="date">July 2025</div>

<div class="logo">
  <img src="../../assets/logo_light.svg" width="120">
</div>

---

# Outline

- **Introduction** - Research motivation and challenges
- **Methodology** - Experimental setup and algorithms  
- **Results** - Performance analysis and comparisons
- **Applications** - Real-world deployment scenarios
- **Conclusion** - Key contributions and future work

---

# Research Motivation

- Computer vision has transformed AI applications
- Deep learning architectures continue to evolve
- Performance gains through novel architectural innovations
- Real-world deployment challenges remain significant

<div class="highlight">
<strong>Key Research Question:</strong> How can we design efficient neural architectures that maintain high accuracy while reducing computational requirements?
</div>

---

# Experimental Setup

<div class="columns">
<div class="column">

**Datasets Used:**
- ImageNet-1K (1.28M images)
- CIFAR-10/100  
- Custom industrial dataset

**Hardware:**
- 8× NVIDIA A100 GPUs
- 512GB RAM
- NVMe SSD storage

</div>
<div class="column">

```
┌─────────────────┐
│   Input Layer   │
└─────────────────┘
         │
┌─────────────────┐
│ Neural Network  │
│   Architecture  │
└─────────────────┘
         │
┌─────────────────┐
│  Output Layer   │
└─────────────────┘
```

*Network Architecture Overview*

</div>
</div>

---

# Algorithm Implementation

```python
def attention_mechanism(x, num_heads=8):
    """Multi-head self-attention implementation"""
    batch_size, seq_len, d_model = x.shape
    
    # Split into multiple heads
    head_dim = d_model // num_heads
    x_reshaped = x.view(batch_size, seq_len, 
                       num_heads, head_dim)
    
    # Compute attention weights
    attention_weights = torch.softmax(
        torch.matmul(x_reshaped, x_reshaped.transpose(-2, -1)) 
        / math.sqrt(head_dim), dim=-1
    )
    
    return torch.matmul(attention_weights, x_reshaped)
```

---

# Performance Comparison

| **Model** | **ImageNet Top-1** | **FLOPs (G)** | **Parameters (M)** |
|-----------|-------------------|---------------|-------------------|
| ResNet-50 | 76.15% | 4.1 | 25.6 |
| EfficientNet-B0 | 77.32% | 0.39 | 5.3 |
| **Our Method** | **78.94%** | **0.31** | **4.2** |
| Vision Transformer | 81.28% | 17.6 | 86.4 |

**Key Results:**
- Our approach achieves **2.8×** fewer FLOPs than ResNet-50
- Maintains competitive accuracy with modern architectures  
- Significant reduction in parameter count enables mobile deployment

---

# Mathematical Formulation

The attention mechanism can be expressed as:

$$\text{Attention}(Q, K, V) = \text{softmax}\left(\frac{QK^T}{\sqrt{d_k}}\right)V$$

$$\text{MultiHead}(Q, K, V) = \text{Concat}(\text{head}_1, \ldots, \text{head}_h)W^O$$

where each head is computed as:
$$\text{head}_i = \text{Attention}(QW_i^Q, KW_i^K, VW_i^V)$$

**Key Innovation:** We introduce adaptive scaling factors $\alpha_i$ for each attention head:
$$\text{head}_i = \alpha_i \cdot \text{Attention}(QW_i^Q, KW_i^K, VW_i^V)$$

---

# Training Dynamics

```
Validation Accuracy (%)
     85 ┤
        │     Our Method ■──■──■──■──■──■──■
     80 ┤                            ╱
        │                       ╱────
     75 ┤                  ╱────      
        │             ╱────            
     70 ┤        ╱────                 
        │   ╱────     Baseline ▲──▲──▲──▲
     65 ┤──▲──▲──▲──▲──▲──▲──▲──▲──▲──▲
        └─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─
          0  20 40 60 80 100
              Training Epoch
```

*Convergence comparison during training*

---

# Real-World Deployment

<div class="columns">
<div class="column">

**Industrial Applications:**
- Autonomous vehicle perception
- Medical image analysis  
- Quality control in manufacturing
- Real-time video analytics

<div class="metrics">
<div class="metric">
  <div class="metric-value">12ms</div>
  <div class="metric-label">Inference Time</div>
</div>
<div class="metric">
  <div class="metric-value">156MB</div>
  <div class="metric-label">Memory Usage</div>
</div>
<div class="metric">
  <div class="metric-value">2.3W</div>
  <div class="metric-label">Power Consumption</div>
</div>
</div>

</div>
<div class="column">

```
   Deployment Hierarchy
   
     ┌──────────────┐
     │    Cloud     │
     │  Computing   │
     └──────────────┘
           │
     ┌──────────────┐
     │     Edge     │
     │   Devices    │
     └──────────────┘
           │
     ┌──────────────┐
     │    Mobile    │
     │   Hardware   │
     └──────────────┘
```

</div>
</div>

---

# Key Contributions

1. **Novel Architecture**: Adaptive attention mechanism with learnable scaling
2. **Efficiency Gains**: 2.8× reduction in computational cost  
3. **Practical Impact**: Successful deployment in industrial settings
4. **Open Source**: Code and models available on GitHub

<div class="highlight">
<strong>Future Directions:</strong>
<ul>
<li>Extension to video understanding tasks</li>
<li>Integration with transformer architectures</li>
<li>Quantization for ultra-low power devices</li>
</ul>
</div>

---

# Publications & Impact

**Recent Publications:**
- Smith et al. "Adaptive Attention Networks" _CVPR 2025_
- Johnson et al. "Efficient Vision Models" _ICCV 2024_  
- Wilson et al. "Mobile Computer Vision" _ECCV 2024_

<div class="metrics">
<div class="metric">
  <div class="metric-value">450+</div>
  <div class="metric-label">Citations</div>
</div>
<div class="metric">
  <div class="metric-value">15K+</div>
  <div class="metric-label">GitHub Stars</div>
</div>
<div class="metric">
  <div class="metric-value">50+</div>
  <div class="metric-label">Industry Partners</div>
</div>
</div>

---

<!-- _class: title -->
<!-- _header: '' -->
<!-- _footer: '' -->

# Thank You!

## Questions & Discussion

**Contact:** nipun.batra@iiitd.ac.in  
**Lab Website:** https://sustainabilitylab.org  
**Code:** https://github.com/sustainability-lab

<div class="logo">
  <img src="../../assets/logo_light.svg" width="100">
</div>