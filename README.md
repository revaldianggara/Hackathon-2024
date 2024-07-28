## 📄 Documentation

## Tech Stack
1. Gradio
2. FastAPI
3. Qdrant
4. RunPod
5. Ollama Model
6. Flutter

## Rocky Linux prep
1. installasi c++ builder
```
$sudo dnf update
$sudo dnf install epel-release
$sudo dnf groupinstall "Development Tools"
$sudo dnf install centos-release-scl
$sudo dnf install devtoolset-11-gcc devtoolset-11-gcc-c++
$scl enable devtoolset-11 bash
```

2. installasi python dependencies
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

## Link demo
## 📄 Documentation


## Rocky Linux prep
1. installasi c++ builder
```
$sudo dnf update
$sudo dnf install epel-release
$sudo dnf groupinstall "Development Tools"
$sudo dnf install centos-release-scl
$sudo dnf install devtoolset-11-gcc devtoolset-11-gcc-c++
$scl enable devtoolset-11 bash
```

2. installasi python dependencies
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

## Mockup
![mockup](https://github.com/user-attachments/assets/6e608067-fc63-407a-9233-9ab946e726d9)


