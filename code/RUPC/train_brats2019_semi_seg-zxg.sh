# & means run these methods at the same time, and && means run these methods one by one
CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_50 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_50 --model unet_3D


CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 75 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_75 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 75 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_75 --model unet_3D

CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 100 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_100 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 100 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_100 --model unet_3D


CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 125 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_125 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 125 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_125 --model unet_3D


CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 150 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_150 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 150 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_150 --model unet_3D


CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 175 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_175 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 175 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_175 --model unet_3D


CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 200 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_200 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 200 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_200 --model unet_3D

CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 225 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_225 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 225 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_225 --model unet_3D

CUDA_VISIBLE_DEVICES=3 python train_cross_pseudo_supervision_3D.py --labeled_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Cross_Pseudo_Supervision && \
CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/Cross_Pseudo_Supervision_250 --model unet_3D && \
CUDA_VISIBLE_DEVICES=3 python train_three_cross_pseudo_supervision_3D.py --labeled_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1 && \

CUDA_VISIBLE_DEVICES=3 python test_3D.py --root_path ../data/BraTS2019 --exp BraTS2019/three_Cross_Pseudo_Supervision_zxg_1_250 --model unet_3D