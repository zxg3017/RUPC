# & means run these methods at the same time, and && means run these methods one by one
CUDA_VISIBLE_DEVICES=5,6 python -u train_fully_supervised_3D.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Fully_supervised_V-Net_25  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Fully_supervised_V-Net_25 &&
CUDA_VISIBLE_DEVICES=5,6 python -u train_fully_supervised_3D.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Fully_supervised_V-Net_50  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Fully_supervised_V-Net_50 &&

CUDA_VISIBLE_DEVICES=5,6 python -u train_adversarial_network_3D.py --model vnet --labeled_num 25 --total_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Adversarial_Network_V-Net  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Adversarial_Network_V-Net_25 &&
CUDA_VISIBLE_DEVICES=5,6 python -u train_adversarial_network_3D.py --model vnet --labeled_num 50 --total_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Adversarial_Network_V-Net  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Adversarial_Network_V-Net_50 &&

CUDA_VISIBLE_DEVICES=5,6 python -u train_entropy_minimization_3D.py --model vnet --labeled_num 25 --total_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Entropy_Minimization_V-Net  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Entropy_Minimization_V-Net_25 &&
CUDA_VISIBLE_DEVICES=5,6 python -u train_entropy_minimization_3D.py --model vnet --labeled_num 50 --total_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Entropy_Minimization_V-Net  --base_lr 0.1 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Entropy_Minimization_V-Net_50 &&

CUDA_VISIBLE_DEVICES=5,6 python -u train_interpolation_consistency_training_3D.py --model vnet --labeled_num 25 --total_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Interpolation_Consistency_Training_V-Net  &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Entropy_Minimization_V-Net_25 &&
CUDA_VISIBLE_DEVICES=5,6 python -u train_interpolation_consistency_training_3D.py --model vnet --labeled_num 50 --total_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Interpolation_Consistency_Training_V-Net  &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Entropy_Minimization_V-Net_50