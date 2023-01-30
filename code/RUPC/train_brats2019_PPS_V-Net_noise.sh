CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise123.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise123 &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise123_25 &&
CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise123.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise123 &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise123_50 &&


CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise012.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise012 &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise123_25 &&
CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise012.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise012 &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise123_50 &&

CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_no_noise.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_no_noise &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_no_noise_25 &&
CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_no_noise.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_no_noise &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_no_noise_50 &&

CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise-one.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise_one &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise_one_25 &&
CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise-one.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise_one &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise_one_50 &&

CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise-two.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise_two &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise_one_25 &&
CUDA_VISIBLE_DEVICES=6 python train_brain_PPS_ce_dice_best_noise-two.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_noise_two &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_noise_two_50
