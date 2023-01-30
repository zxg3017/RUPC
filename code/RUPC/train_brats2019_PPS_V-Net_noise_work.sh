#CUDA_VISIBLE_DEVICES=0 python train_brain_PPS_ce_dice_best_noise152.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V_Net_noise152 &&
#CUDA_VISIBLE_DEVICES=5 python test_3D_para.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V_Net_noise152_25 &&
#CUDA_VISIBLE_DEVICES=4,5 python train_brain_PPS_ce_dice_best_noise152.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V_Net_noise152 &&
#CUDA_VISIBLE_DEVICES=4,5 python test_3D_para.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V_Net_noise152_50 &&

#CUDA_VISIBLE_DEVICES=4,5 python train_brain_PPS_ce_dice_best_no_noise_two_model.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_no_noise_two_model &&
#CUDA_VISIBLE_DEVICES=4,5 python test_3D_para.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_no_noise_two_model_25 &&
#CUDA_VISIBLE_DEVICES=4,5 python train_brain_PPS_ce_dice_best_no_noise_two_model.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_no_noise_two_model &&
#CUDA_VISIBLE_DEVICES=4,5 python test_3D_para.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_no_noise_two_model_50 &&

#CUDA_VISIBLE_DEVICES=4,5 python train_brain_PPS_ce_dice_best_with_noise_two_model.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_with_noise_two_model &&
#CUDA_VISIBLE_DEVICES=4,5 python test_3D_para.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_with_noise_two_model_25 &&
CUDA_VISIBLE_DEVICES=4,5 python train_brain_PPS_ce_dice_best_with_noise_two_model.py --model vnet --labeled_num 50 --max_iterations 30000 --base_lr 0.1 --exp brain/PPS_V-Net_with_noise_two_model
#CUDA_VISIBLE_DEVICES=4,5 python test_3D_para.py --model vnet --root_path ../data/BraTS2019 --exp brain/PPS_V-Net_with_noise_two_model_50