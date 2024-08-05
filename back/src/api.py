

from unsloth import FastLanguageModel
import torch
import os
from dotenv import load_dotenv

max_seq_length = 2048
dtype = None 
load_in_4bit = True 

model, tokenizer = FastLanguageModel.from_pretrained(
    # model_name = "unsloth/ollama-7b-bnb-4bit",
     model_name = "unsloth/llama-2-7b-bnb-4bit", 
    max_seq_length = max_seq_length,
    dtype = dtype,
    load_in_4bit = load_in_4bit,
    token = os.getenv('HF_TOKEN'), 
)

model = FastLanguageModel.get_peft_model(
    model,
    r = 16, # > 0 ! direkomendasikan 8, 16, 32, 64, 128
    target_modules = ["q_proj", "k_proj", "v_proj", "o_proj",
                      "gate_proj", "up_proj", "down_proj",],
    lora_alpha = 16,
    lora_dropout = 0, 
    bias = "none",  
    use_gradient_checkpointing = True,
    random_state = 3407,
    max_seq_length = max_seq_length,
)

alpaca_prompt = """Below is an instruction that describes a task, 
paired with an input that provides further context. Write a response that 
appropriately completes the request.

### Instruction:
{}

### Input:
{}

### Response:
{}"""

def formatting_prompts_func(examples):
    instructions = examples["instruction"]
    inputs       = examples["input"]
    outputs      = examples["output"]
    texts = []
    for instruction, input, output in zip(instructions, inputs, outputs):
        text = alpaca_prompt.format(instruction, input, output)
        texts.append(text)
    return { "text" : texts}
pass

from datasets import load_dataset
dataset = load_dataset("yahma/alpaca-cleaned", split = "train")
dataset = dataset.map(formatting_prompts_func, batched = True,)