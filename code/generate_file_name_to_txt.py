import os

data_path = "/mnt/ai2021/zxg/dataset/Pancreas-CT/data"
label_path = "/mnt/ai2021/zxg/dataset/Pancreas-CT/labels"
data_name_list = os.listdir(data_path)
# label_name_list = os.listdir(label_path)
idx = 0
with open('/mnt/ai2021/zxg/dataset/Pancreas-CT/train_list.txt', 'w') as f:

    for file_name in data_name_list:
        idx = idx + 1
        if idx <= 60:
            prex = file_name.split('_')[1]
            tmp1 = data_path+'/'+file_name
            tmp2 = label_path + '/' +"label"+prex
            f.write(tmp1 + " "+ tmp2 + '\n')  # -5表示从后往前数，到小数点位置
#with open('/mnt/ai2021/zxg/dataset/Pancreas-CT/data/test_list.txt', 'w') as f2:




