CUDA_VISIBLE_DEVICES=5,6 python train_brain_PPS_ce_dice_best_noise123.py --model vnet --labeled_num 25 --max_iterations 30000 --base_lr 0.1 --exp LA/PPS_V-Net_noise123 &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/PPS_8_V-Net_noise123_25 &&

