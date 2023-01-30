# & means run these methods at the same time, and && means run these methods one by one
#CUDA_VISIBLE_DEVICES=6 python -u train_brain_PPS_noise.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/PPS_noise_V-Net  --base_lr 0.1 &&
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_noise_V-Net_25_25 &&
#CUDA_VISIBLE_DEVICES=6 python -u train_brain_PPS_noise.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/PPS_noise_V-Net  --base_lr 0.1 &&
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_noise_V-Net_50 &&

CUDA_VISIBLE_DEVICES=6 python -u train_brain_PPS.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/PPS_noise_V-Net  --base_lr 0.1 &&
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_noise_V-Net_25 &&
CUDA_VISIBLE_DEVICES=6 python -u train_brain_PPS.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/PPS_noise_V-Net --base_lr 0.1 &&
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_noise_V-Net_50 &&

CUDA_VISIBLE_DEVICES=6 python -u train_brain_PPS_noise_v1.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/PPS_noise_v1_V-Net  --base_lr 0.1 &&
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_noise_v1_V-Net_25 &&
CUDA_VISIBLE_DEVICES=6 python -u train_brain_PPS_noise_v1.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/PPS_noise_v1_V-Net  --base_lr 0.1
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_noise_v1_V-Net_50
