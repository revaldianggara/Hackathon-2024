## 📄 Documentation

## Tech Stack
1. Gradio
2. FastAPI
3. Qdrant
4. RunPod
5. Ollama 7B Model
6. Flutter

## Linux prep
1. setup c++ builder
```
$sudo dnf update
$sudo dnf install epel-release
$sudo dnf groupinstall "Development Tools"
$sudo dnf install centos-release-scl
$sudo dnf install devtoolset-11-gcc devtoolset-11-gcc-c++
$scl enable devtoolset-11 bash
```

2. setup python dependencies
```
$python -m pip install --upgrade pip
$pip install pipx
$pipx install poetry
$pipx ensurepath
$conda create -n privategpt python=3.11
$conda activate privategpt
```

3. build
```
$poetry install --extras "ui vector-stores-qdrant llms-ollama embeddings-huggingface"
$poetry run python scripts/setup
```

4. running CPU mode
```
$poetry run python -m private_gpt
```

5. running GPU mode
```
$env:CMAKE_ARGS='-DLLAMA_CUBLAS=on'; poetry run pip install --force-reinstall --no-cache-dir llama-cpp-python
$poetry run python -m private_gpt
```

## Flutter
```
flutter doctor
flutter run 
```

## Link Demo
https://drive.google.com/file/d/1Y1xKJ3zqDpDj-a9CerfTo8ahfnjOPyWM/view?usp=drive_link
![mockup2](https://github.com/user-attachments/assets/8ca4749d-ca9c-4dd1-a999-cb9cb5d747da)


## Mockup
![mockup](https://github.com/user-attachments/assets/6e608067-fc63-407a-9233-9ab946e726d9)


