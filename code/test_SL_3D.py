import argparse
import os
import shutil
from glob import glob

import torch
from networks.net_factory_3d import net_factory_3d

from networks.unet_3D import unet_3D
from test_3D_util import test_all_case

parser = argparse.ArgumentParser()
parser.add_argument('--root_path', type=str,
                    default='../data/BraTS2019', help='Name of Experiment')
parser.add_argument('--exp', type=str,
                    default='BraTS2019/PPS_noise_V-Net_25_25', help='experiment_name')
parser.add_argument('--model', type=str,
                    default='vnet', help='model_name')


def Inference(FLAGS):
    # snapshot_path = '/mnt/ai2021/zxg/semi-supervised/SSL4MIS/model/BraTS2019/PPS_noise_V-Net_25_25/vnet/'
    snapshot_path = "../model/{}/{}".format(FLAGS.exp, FLAGS.model)
    num_classes = 2
    test_save_path = "../model/{}/Prediction".format(FLAGS.exp)
    # test_save_path = "../model/{}/unet_3D_dv_semi".format(FLAGS.exp)
    if os.path.exists(test_save_path):
        shutil.rmtree(test_save_path)
    os.makedirs(test_save_path)
    # net = unet_3D(n_classes=num_classes, in_channels=1).cuda()
    net = net_factory_3d(net_type=FLAGS.model, in_chns=1, class_num=num_classes)

    # net = torch.nn.DataParallel(net)
    save_mode_path = os.path.join(
        snapshot_path, '{}_best_model.pth'.format(FLAGS.model))
    net.load_state_dict(torch.load(save_mode_path))
    print("init weight from {}".format(save_mode_path))
    net.eval()
    avg_metric = test_all_case(net, base_dir=FLAGS.root_path, method=FLAGS.model, test_list="test.txt", num_classes=num_classes,
                               patch_size=(96, 96, 96), stride_xy=64, stride_z=64, test_save_path=test_save_path)
    return avg_metric


if __name__ == '__main__':
    FLAGS = parser.parse_args()
    metric = Inference(FLAGS)
    print(metric)
