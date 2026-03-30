# 🎙️ Voice Recognition System  
### Speaker Identification using MFCC + SVM (MATLAB)

<img width="1408" height="768" alt="Gemini_Generated_Image_zc51w4zc51w4zc51" src="https://github.com/user-attachments/assets/126ac2b8-ebb4-42ef-afde-8adb5f2d3760" />

---

## 📌 Overview
This project implements a **voice recognition (speaker identification) system** using Digital Signal Processing (DSP) and Machine Learning techniques in MATLAB.

The system identifies and distinguishes between **two speakers** based on their unique voice characteristics (voiceprints), using **MFCC (Mel-Frequency Cepstral Coefficients)** and a **Support Vector Machine (SVM)** classifier.

---

## 🚨 Problem Statement
Manual speaker verification is inefficient and prone to error. Voice biometrics offer a scalable and secure solution for authentication in modern systems such as:
- Smartphones  
- Smart home devices  
- Secure access systems  

**Goal:**  
Given audio recordings from two different speakers uttering the same word, can a system accurately identify the speaker using only acoustic features?

---

## 🎯 Objectives
- Collect voice data from two speakers (20 samples each)  
- Preprocess raw audio using manual segmentation  
- Extract MFCC features from each recording  
- Train an SVM classifier for speaker identification  
- Evaluate performance on unseen test data  

---

## 📊 Dataset
- **Type:** Custom recorded dataset  
- **Total Samples:** 40 (20 per speaker)  
- **Content:** Each speaker records the word **"otomotif"**  
- **Format:** `.wav` audio files  
- **Collection:** Recorded manually in lab environment  

---

## 🧠 Methodology

### 🔹 Preprocessing
- Manual segmentation using waveform and frequency spectrum analysis  
- Silence-based splitting between utterances  

---

### 🔹 Feature Extraction (MFCC Pipeline)
- Frame Blocking  
- Hamming Windowing  
- Fast Fourier Transform (FFT)  
- Mel-Frequency Wrapping  
- Cepstral Analysis  

**Output:** 13 MFCC coefficients per frame  

---

### 🔹 Model
- Algorithm: **Support Vector Machine (SVM)**  
- Training Split: 75%  
- Testing Split: 25%  
- Classification: Binary (Speaker A vs Speaker B)  

---

## 🏆 Results

| Metric        | Value        |
|--------------|-------------|
| Training Accuracy | 100% |
| Testing Accuracy  | 90–100% |

---

### 🔍 Key Findings
- SVM achieved perfect separation on training data  
- High testing accuracy indicates strong generalization  
- MFCC effectively captures speaker-specific features  
- System performs well despite small dataset size  

---

## ⚙️ Tech Stack
- MATLAB (R2020a or later recommended)  
- Signal Processing Toolbox  
- Statistics & Machine Learning Toolbox  
- VoiceBox (MFCC extraction)  

---

## 📁 Project Structure
main.m → Main pipeline execution
svm_model.mat → Saved trained SVM model
data/ → Raw audio samples (.wav)
voicebox/ → MFCC extraction library
figures/ → Waveform & MFCC visualizations


---

## 🚀 Installation & Usage

### 1. Requirements
- MATLAB R2020a or newer  
- Signal Processing Toolbox  
- Statistics and Machine Learning Toolbox  

---

### 2. Install VoiceBox
Download and add to MATLAB path:
http://www.ee.ic.ac.uk/hp/staff/dmb/voicebox/voicebox.html

---

### 3. Run the Project
Open MATLAB, navigate to project folder, and run:
matlab

4. Output
Classification results displayed in MATLAB console
Accuracy report
Confusion matrix
MFCC and waveform plots
📈 Insights
Small datasets can still achieve high accuracy with strong feature engineering
MFCC compresses speech information into compact and discriminative features
Manual segmentation is accurate but not scalable
SVM performs well for binary classification problems
🔮 Future Improvements
Extend to multi-speaker recognition (multi-class SVM)
Automate segmentation using Voice Activity Detection (VAD)
Support multiple spoken words (not just "otomotif")
Implement real-time voice recognition
Explore deep learning models (CNN / LSTM)
Improve robustness with noise augmentation
👨‍💻 Author

Raphael Nazareth
Computer Engineer | AI / Data Science

GitHub: https://github.com/RaphaelNazareth
LinkedIn: https://www.linkedin.com/in/raphael-nazareth
Email: Raph00707@gmail.com
