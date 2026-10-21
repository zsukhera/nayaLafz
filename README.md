# nayaLafz

A deep dive into sequential language modeling using RNNs and LSTMs, trained on classic literary text and evaluated across writing styles. The project covers everything from raw text preprocessing to an interactive next-word prediction chatbot.

## What's in here

- **Data engineering** — sliding window tokenization, vocabulary building, sentence-boundary tokens, and out-of-domain generalization testing (literary → news)
- **Vanishing gradient analysis** — empirical comparison of Simple RNNs vs LSTMs across increasing context window sizes
- **Architecture search** — systematic experiments varying depth, hidden size, and dropout; model selection by validation perplexity
- **Interactive chatbot** — seed a phrase, pick a length, choose greedy or temperature sampling
- **Confidence analysis** — per-sentence perplexity breakdown by length and rare-word density, with a linear regression predictor

## Datasets

| Corpus | Use |
|---|---|
| Jane Austen & Charles Dickens (Kaggle) | Primary training |
| Tiny Shakespeare (Kaggle) | Primary training |
| BBC News full-text (Kaggle) | Out-of-domain evaluation |

## Setup

**Requirements:** Python 3.8+

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

**Kaggle credentials** (needed for automatic dataset download):
- Go to kaggle.com → Account → Create New Token → download `kaggle.json`
- Place it at `~/.kaggle/kaggle.json`
- Or set environment variables: `KAGGLE_USERNAME` and `KAGGLE_KEY`

## Running

The notebook is a single `.py` file structured as a Jupytext-compatible notebook (run top to bottom). It auto-detects the environment and device:

- Runs on **local GPU**, **CPU**, or **Google Colab** without any code changes
- On Colab, mount your Drive and store Kaggle credentials in Colab Secrets
- Checkpoints are saved under `dl_a2/checkpoints/` and reused on reruns

```bash
jupyter notebook main.ipynb
# or on Colab: upload and run all cells
```

## Project structure

```
dl_a2/
├── data/          # downloaded datasets (auto-populated)
├── checkpoints/   # saved model weights per experiment
notebooks/
└── main.ipynb     # all phases in one notebook
report.pdf
README.txt
```
