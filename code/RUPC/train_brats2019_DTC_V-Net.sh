# & means run these methods at the same time, and && means run these methods one by one
CUDA_VISIBLE_DEVICES=2 python train_brain_3D_DTC.py --model vnet_sdf --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/DTC_V-Net_25  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=2 python test_3D_sdf.py --model vnet_sdf --root_path ../data/BraTS2019 --exp BraTS2019/DTC_V-Net_25 &&
CUDA_VISIBLE_DEVICES=2 python train_brain_3D_DTC.py --model vnet_sdf --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/DTC_V-Net_50  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=2 python test_3D_sdf.py --model vnet_sdf --root_path ../data/BraTS2019 --exp BraTS2019/DTC_V-Net_50
