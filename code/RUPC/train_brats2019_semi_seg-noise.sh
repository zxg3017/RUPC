# & means run these methods at the same time, and && means run these methods one by one
#CUDA_VISIBLE_DEVICES=1 python train_brain_PPS_ce_dice_best_no_noise.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/brain_RUPC_25_no_noise && \
CUDA_VISIBLE_DEVICES=1 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/brain_RUPC_25_no_noise_25 --model vnet
#CUDA_VISIBLE_DEVICES=5 python train_three_cross_pseudo_supervision_3D_pseudo_dice_best_noise.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/brain_PPS_50_noise && \
#CUDA_VISIBLE_DEVICES=5 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/LA_PPS_25_noise_25 --model vnet
#CUDA_VISIBLE_DEVICES=5 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/LA_PPS_50_noise_50 --model vnet
