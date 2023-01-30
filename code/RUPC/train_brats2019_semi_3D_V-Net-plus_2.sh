# & means run these methods at the same time, and && means run these methods one by one
#CUDA_VISIBLE_DEVICES=6 python -u train_mean_teacher_3D.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --exp BraTS2019/Mean_Teacher_V-Net --base_lr 0.1 &&
#CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Mean_Teacher_V-Net_50 &&

CUDA_VISIBLE_DEVICES=6 python -u train_uncertainty_aware_mean_teacher_3D.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Uncertainty_Aware_Mean_Teacher_V-Net &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Uncertainty_Aware_Mean_Teacher_V-Net_25 &&
CUDA_VISIBLE_DEVICES=6 python -u train_uncertainty_aware_mean_teacher_3D.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Uncertainty_Aware_Mean_Teacher_V-Net &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Uncertainty_Aware_Mean_Teacher_V-Net_50 &&

CUDA_VISIBLE_DEVICES=6 python -u train_cross_pseudo_supervision_3D.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision_V-Net  &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_V-Net_25 &&
CUDA_VISIBLE_DEVICES=6 python -u train_cross_pseudo_supervision_3D.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision_V-Net  &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_V-Net_50 &&

CUDA_VISIBLE_DEVICES=6 python -u train_uncertainty_rectified_pyramid_consistency_3D.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Uncertainty_Rectified_Pyramid_Consistency_V-Net  &&
CUDA_VISIBLE_DEVICES=6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Uncertainty_Rectified_Pyramid_Consistency_V-Net_25 &&
CUDA_VISIBLE_DEVICES=6 python -u train_uncertainty_rectified_pyramid_consistency_3D.py --model vnet --labeled_num 50  --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Uncertainty_Rectified_Pyramid_Consistency_V-Net  &&
CUDA_VISIBLE_DEVICES=5,6 python test_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Uncertainty_Rectified_Pyramid_Consistency_V-Net_50
