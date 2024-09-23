# to-gguf-bat
Convert safetensors to GGUF q4_0, q4_1, q5_0, q5_1, q8_0 on Windows

Conversion will be done on the CPU in a single thread, takes 5-20 minutes.
The model will be fully loaded in RAM, you need at least 24GB of RAM for Flux models.


How to use
1) Go to
https://github.com/leejet/stable-diffusion.cpp/releases

2) Download any of the sd-master- ... -bin-win- ... .zip

3) Unzip it to any folder.

4) Put in the folder where you unpacked the sd-master- ... .zip this "to_GGUF.bat" file

5) Drag and drop the .safetensors model you want to convert onto to_GGUF.bat.
 
All the work is done by stable-diffusion.cpp:
sd.exe -M convert -m from.safetensors -o to.q4_1.gguf --type q4_1

---
Конвертирование происходит на процессоре в один поток, занимает 5-20 минут и требует не менее 24 Гб оперативной памяти для моделей Flux

Как пользоваться
1) Перейдите по адресу
https://github.com/leejet/stable-diffusion.cpp/releases

2) Скачайте любой из файлов sd-master- ... -bin-win- ... .zip

3) Распакуйте его в любую папку

4) Положите в папку, куда вы распоковали архив sd-master- ...  данный to_GGUF.bat файл

5) Перетащите на to_GGUF.bat модель .safetensors, которую Вы хотите сконвертировать
 
Всю работу делает stable-diffusion.cpp:
sd.exe -M convert -m from.safetensors -o to.q4_1.gguf --type q4_1
