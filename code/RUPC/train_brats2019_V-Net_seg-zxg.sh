# & means run these methods at the same time, and && means run these methods one by one
#CUDA_VISIBLE_DEVICES=7 python train_fully_supervised_3D.py --model vnet --labeled_num 25 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Full_sup_v_net &&
#CUDA_VISIBLE_DEVICES=7 python test_SL_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Full_sup_v_net &&

#CUDA_VISIBLE_DEVICES=7 python train_fully_supervised_3D.py --model vnet --labeled_num 50 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Full_sup_v_net &&
CUDA_VISIBLE_DEVICES=7 python test_SL_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Full_sup_v_net_50_labeled &&

CUDA_VISIBLE_DEVICES=7 python train_fully_supervised_3D.py --model vnet --labeled_num 75 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Full_sup_v_net &&
CUDA_VISIBLE_DEVICES=7 python test_SL_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Full_sup_v_net_75 &&

CUDA_VISIBLE_DEVICES=7 python train_fully_supervised_3D.py --model vnet --labeled_num 100 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Full_sup_v_net &&
CUDA_VISIBLE_DEVICES=7 python test_SL_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Full_sup_v_net_100 &&

CUDA_VISIBLE_DEVICES=7 python train_fully_supervised_3D.py --model vnet --labeled_num 125 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Full_sup_v_net &&
CUDA_VISIBLE_DEVICES=7 python test_SL_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Full_sup_v_net_125 &&

CUDA_VISIBLE_DEVICES=7 python train_fully_supervised_3D.py --model vnet --labeled_num 250 --root_path ../data/BraTS2019 --max_iterations 30000 --base_lr 0.1 --exp BraTS2019/Full_sup_v_net &&
CUDA_VISIBLE_DEVICES=7 python test_SL_3D.py --model vnet --root_path ../data/BraTS2019 --exp BraTS2019/Full_sup_v_net_250