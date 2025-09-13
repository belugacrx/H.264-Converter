# 🎥 Convert to H.264 (GPU) – Right-Click Context Menu Tool

This tool adds a **Shift + Right-click context menu option** in Windows Explorer to instantly convert videos (`.mp4`, `.mkv`, `.webm`) into **H.264 (GPU accelerated)** using **FFmpeg with NVIDIA NVENC**.  

Made for **video editors, YouTubers, and creators** who want **fast, portable, and hassle-free video conversion** without typing FFmpeg commands.

---

## ✨ Features
- 🚀 **GPU Accelerated** (NVIDIA NVENC) – super fast encoding.  
- 🖱️ **Shift + Right-Click Integration** – clean Explorer menu, hidden by default.  
- 🎬 **Format Support** – works with `.mp4`, `.mkv`, `.webm`.  
- 📦 **Automatic Naming** – saves as `<filename>_h264_gpu.mp4`.  
- 🔧 **Portable Setup** – no hard-coded paths, works from any location.  
- 🧹 **Easy Uninstall** – removes cleanly with one script.  

---

## 📌 Why H.264 (GPU)?
- 🎬 **Compatibility** – H.264 works everywhere (Premiere Pro, Resolve, YouTube, Instagram, TikTok, VLC, etc.).  
- 🚀 **Speed** – NVENC hardware encoder is much faster than CPU.  
- 📦 **Compression** – good balance of size & quality.  
- 🎨 **Workflow Friendly** – perfect for editors who need quick turnaround.  

---

## 📂 Project Structure


---

## ⚡ Setup Instructions

### 1. Install FFmpeg
Download **FFmpeg with NVIDIA NVENC support**:  
👉 [FFmpeg builds with NVENC (gyan.dev)](https://www.gyan.dev/ffmpeg/builds/)  

Place `ffmpeg.exe` in the same folder as this project.  

---

### 2. Install the Context Menu
1. Clone or download this repo.  
2. Right-click `install.bat` → **Run as Administrator**.  
3. Done ✅ Now when you **Shift + Right-click** on `.mp4`, `.mkv`, or `.webm`, you’ll see:  


---

### 3. Uninstall
To remove the option:  
- Run `uninstall.bat` (as Administrator).  

---

## ▶️ Usage
1. Find your video file.  
2. **Shift + Right-click** → Select **Convert to H.264 (GPU)**.  
3. The script will:  
- Convert using FFmpeg GPU acceleration.  
- Save as `<filename>_h264_gpu.mp4` in the same folder.  
4. Done! 🎉  

---

## 🛠️ How It Works
- The batch file runs this FFmpeg command:  
```bash
ffmpeg -i input.mp4 -c:v h264_nvenc -preset fast -cq 23 -c:a aac -b:a 128k output_h264_gpu.mp4

