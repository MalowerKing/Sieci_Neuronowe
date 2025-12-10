**ML Project**

This repository contains a Python-based machine learning environment prepared for training and experimenting with datasets (such as those available on Kaggle). The project uses modern libraries for deep learning, data processing and visualisation.

**Requirements**

Make sure you have the following installed:

- Python 3.13

- PyTorch

- NumPy

- Pandas

- Matplotlib

- KaggleHub

- Scikit-learn

**Installation**

Clone the repository

git clone https://github.com/[your-username]/[your-repo].git
cd [your-repo]

Create and activate a virtual environment

python3.13 -m venv venv
source venv/bin/activate     # Linux/macOS
venv\Scripts\activate        # Windows

**Install dependencies**

pip install torch numpy pandas matplotlib kagglehub scikit-learn

If you need a specific version of PyTorch for your system (CPU/GPU), check:
https://pytorch.org/get-started/locally/

Using KaggleHub

To download datasets directly from Kaggle:

import kagglehub

path = kagglehub.dataset_download("owner/dataset-name")
print("Dataset downloaded to:", path)
