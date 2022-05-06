; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_device_pci_device = type { i16, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_pci_vendor = type { i16, i16, ptr, %struct.nvkm_device_quirk }
%struct.nvkm_device_quirk = type { i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.nvkm_device_pci = type { %struct.nvkm_device, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.159, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.159 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.78, %struct.anon.79, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.78 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.79 = type { i32, i8 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.109], i32, [16 x %struct.anon.110], ptr, %struct.anon.111, %struct.anon.111, %struct.mutex, %struct.nvkm_device_oclass }
%struct.anon.109 = type { i8, i64 }
%struct.anon.110 = type { i8, i8 }
%struct.anon.111 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_device_pci_10de = internal constant [753 x %struct.nvkm_device_pci_device] [%struct.nvkm_device_pci_device { i16 32, ptr @.str, ptr null }, %struct.nvkm_device_pci_device { i16 40, ptr @.str.1, ptr null }, %struct.nvkm_device_pci_device { i16 41, ptr @.str.2, ptr null }, %struct.nvkm_device_pci_device { i16 44, ptr @.str.3, ptr null }, %struct.nvkm_device_pci_device { i16 45, ptr @.str.4, ptr null }, %struct.nvkm_device_pci_device { i16 64, ptr @.str.5, ptr null }, %struct.nvkm_device_pci_device { i16 65, ptr @.str.6, ptr null }, %struct.nvkm_device_pci_device { i16 66, ptr @.str.7, ptr null }, %struct.nvkm_device_pci_device { i16 67, ptr @.str.8, ptr null }, %struct.nvkm_device_pci_device { i16 68, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 69, ptr @.str.10, ptr null }, %struct.nvkm_device_pci_device { i16 70, ptr @.str.10, ptr null }, %struct.nvkm_device_pci_device { i16 71, ptr @.str.11, ptr null }, %struct.nvkm_device_pci_device { i16 72, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 78, ptr @.str.12, ptr null }, %struct.nvkm_device_pci_device { i16 144, ptr @.str.13, ptr null }, %struct.nvkm_device_pci_device { i16 145, ptr @.str.13, ptr null }, %struct.nvkm_device_pci_device { i16 146, ptr @.str.14, ptr null }, %struct.nvkm_device_pci_device { i16 147, ptr @.str.15, ptr null }, %struct.nvkm_device_pci_device { i16 149, ptr @.str.16, ptr null }, %struct.nvkm_device_pci_device { i16 152, ptr @.str.17, ptr null }, %struct.nvkm_device_pci_device { i16 153, ptr @.str.18, ptr null }, %struct.nvkm_device_pci_device { i16 157, ptr @.str.19, ptr null }, %struct.nvkm_device_pci_device { i16 160, ptr @.str.20, ptr null }, %struct.nvkm_device_pci_device { i16 192, ptr @.str.11, ptr null }, %struct.nvkm_device_pci_device { i16 193, ptr @.str.6, ptr null }, %struct.nvkm_device_pci_device { i16 194, ptr @.str.7, ptr null }, %struct.nvkm_device_pci_device { i16 195, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 200, ptr @.str.21, ptr null }, %struct.nvkm_device_pci_device { i16 201, ptr @.str.22, ptr null }, %struct.nvkm_device_pci_device { i16 204, ptr @.str.23, ptr null }, %struct.nvkm_device_pci_device { i16 205, ptr @.str.24, ptr null }, %struct.nvkm_device_pci_device { i16 206, ptr @.str.25, ptr null }, %struct.nvkm_device_pci_device { i16 241, ptr @.str.26, ptr null }, %struct.nvkm_device_pci_device { i16 242, ptr @.str.27, ptr null }, %struct.nvkm_device_pci_device { i16 243, ptr @.str.28, ptr null }, %struct.nvkm_device_pci_device { i16 244, ptr @.str.29, ptr null }, %struct.nvkm_device_pci_device { i16 245, ptr @.str.15, ptr null }, %struct.nvkm_device_pci_device { i16 246, ptr @.str.11, ptr null }, %struct.nvkm_device_pci_device { i16 248, ptr @.str.30, ptr null }, %struct.nvkm_device_pci_device { i16 249, ptr @.str.5, ptr null }, %struct.nvkm_device_pci_device { i16 250, ptr @.str.31, ptr null }, %struct.nvkm_device_pci_device { i16 251, ptr @.str.32, ptr null }, %struct.nvkm_device_pci_device { i16 252, ptr @.str.33, ptr null }, %struct.nvkm_device_pci_device { i16 253, ptr @.str.34, ptr null }, %struct.nvkm_device_pci_device { i16 254, ptr @.str.35, ptr null }, %struct.nvkm_device_pci_device { i16 256, ptr @.str.36, ptr null }, %struct.nvkm_device_pci_device { i16 257, ptr @.str.37, ptr null }, %struct.nvkm_device_pci_device { i16 259, ptr @.str.38, ptr null }, %struct.nvkm_device_pci_device { i16 272, ptr @.str.39, ptr null }, %struct.nvkm_device_pci_device { i16 273, ptr @.str.40, ptr null }, %struct.nvkm_device_pci_device { i16 274, ptr @.str.41, ptr null }, %struct.nvkm_device_pci_device { i16 275, ptr @.str.42, ptr null }, %struct.nvkm_device_pci_device { i16 320, ptr @.str.26, ptr null }, %struct.nvkm_device_pci_device { i16 321, ptr @.str.27, ptr null }, %struct.nvkm_device_pci_device { i16 322, ptr @.str.29, ptr null }, %struct.nvkm_device_pci_device { i16 323, ptr @.str.43, ptr null }, %struct.nvkm_device_pci_device { i16 324, ptr @.str.44, ptr null }, %struct.nvkm_device_pci_device { i16 325, ptr @.str.45, ptr null }, %struct.nvkm_device_pci_device { i16 326, ptr @.str.46, ptr null }, %struct.nvkm_device_pci_device { i16 327, ptr @.str.47, ptr null }, %struct.nvkm_device_pci_device { i16 328, ptr @.str.44, ptr null }, %struct.nvkm_device_pci_device { i16 329, ptr @.str.48, ptr null }, %struct.nvkm_device_pci_device { i16 330, ptr @.str.49, ptr null }, %struct.nvkm_device_pci_device { i16 332, ptr @.str.50, ptr null }, %struct.nvkm_device_pci_device { i16 333, ptr @.str.51, ptr null }, %struct.nvkm_device_pci_device { i16 334, ptr @.str.52, ptr null }, %struct.nvkm_device_pci_device { i16 335, ptr @.str.28, ptr null }, %struct.nvkm_device_pci_device { i16 336, ptr @.str.53, ptr null }, %struct.nvkm_device_pci_device { i16 337, ptr @.str.54, ptr null }, %struct.nvkm_device_pci_device { i16 338, ptr @.str.55, ptr null }, %struct.nvkm_device_pci_device { i16 339, ptr @.str.56, ptr null }, %struct.nvkm_device_pci_device { i16 352, ptr @.str.57, ptr null }, %struct.nvkm_device_pci_device { i16 353, ptr @.str.58, ptr null }, %struct.nvkm_device_pci_device { i16 354, ptr @.str.59, ptr null }, %struct.nvkm_device_pci_device { i16 355, ptr @.str.60, ptr null }, %struct.nvkm_device_pci_device { i16 356, ptr @.str.61, ptr null }, %struct.nvkm_device_pci_device { i16 357, ptr @.str.62, ptr null }, %struct.nvkm_device_pci_device { i16 358, ptr @.str.63, ptr null }, %struct.nvkm_device_pci_device { i16 359, ptr @.str.61, ptr null }, %struct.nvkm_device_pci_device { i16 360, ptr @.str.63, ptr null }, %struct.nvkm_device_pci_device { i16 361, ptr @.str.64, ptr null }, %struct.nvkm_device_pci_device { i16 362, ptr @.str.65, ptr null }, %struct.nvkm_device_pci_device { i16 368, ptr @.str.66, ptr null }, %struct.nvkm_device_pci_device { i16 369, ptr @.str.67, ptr null }, %struct.nvkm_device_pci_device { i16 370, ptr @.str.68, ptr null }, %struct.nvkm_device_pci_device { i16 371, ptr @.str.69, ptr null }, %struct.nvkm_device_pci_device { i16 372, ptr @.str.70, ptr null }, %struct.nvkm_device_pci_device { i16 373, ptr @.str.71, ptr null }, %struct.nvkm_device_pci_device { i16 374, ptr @.str.72, ptr null }, %struct.nvkm_device_pci_device { i16 375, ptr @.str.73, ptr null }, %struct.nvkm_device_pci_device { i16 376, ptr @.str.74, ptr null }, %struct.nvkm_device_pci_device { i16 377, ptr @.str.75, ptr null }, %struct.nvkm_device_pci_device { i16 378, ptr @.str.76, ptr null }, %struct.nvkm_device_pci_device { i16 380, ptr @.str.77, ptr null }, %struct.nvkm_device_pci_device { i16 381, ptr @.str.78, ptr null }, %struct.nvkm_device_pci_device { i16 385, ptr @.str.79, ptr null }, %struct.nvkm_device_pci_device { i16 386, ptr @.str.80, ptr null }, %struct.nvkm_device_pci_device { i16 387, ptr @.str.81, ptr null }, %struct.nvkm_device_pci_device { i16 389, ptr @.str.82, ptr null }, %struct.nvkm_device_pci_device { i16 392, ptr @.str.83, ptr null }, %struct.nvkm_device_pci_device { i16 393, ptr @.str.84, ptr @nvkm_device_pci_10de_0189 }, %struct.nvkm_device_pci_device { i16 394, ptr @.str.85, ptr null }, %struct.nvkm_device_pci_device { i16 395, ptr @.str.86, ptr null }, %struct.nvkm_device_pci_device { i16 396, ptr @.str.87, ptr null }, %struct.nvkm_device_pci_device { i16 401, ptr @.str.88, ptr null }, %struct.nvkm_device_pci_device { i16 403, ptr @.str.89, ptr null }, %struct.nvkm_device_pci_device { i16 404, ptr @.str.90, ptr null }, %struct.nvkm_device_pci_device { i16 407, ptr @.str.91, ptr null }, %struct.nvkm_device_pci_device { i16 413, ptr @.str.92, ptr null }, %struct.nvkm_device_pci_device { i16 414, ptr @.str.93, ptr null }, %struct.nvkm_device_pci_device { i16 416, ptr @.str.94, ptr null }, %struct.nvkm_device_pci_device { i16 464, ptr @.str.95, ptr null }, %struct.nvkm_device_pci_device { i16 465, ptr @.str.96, ptr null }, %struct.nvkm_device_pci_device { i16 466, ptr @.str.97, ptr null }, %struct.nvkm_device_pci_device { i16 467, ptr @.str.98, ptr null }, %struct.nvkm_device_pci_device { i16 470, ptr @.str.99, ptr null }, %struct.nvkm_device_pci_device { i16 471, ptr @.str.100, ptr null }, %struct.nvkm_device_pci_device { i16 472, ptr @.str.101, ptr null }, %struct.nvkm_device_pci_device { i16 474, ptr @.str.102, ptr null }, %struct.nvkm_device_pci_device { i16 475, ptr @.str.103, ptr null }, %struct.nvkm_device_pci_device { i16 476, ptr @.str.104, ptr null }, %struct.nvkm_device_pci_device { i16 477, ptr @.str.105, ptr null }, %struct.nvkm_device_pci_device { i16 478, ptr @.str.106, ptr null }, %struct.nvkm_device_pci_device { i16 479, ptr @.str.107, ptr null }, %struct.nvkm_device_pci_device { i16 496, ptr @.str.108, ptr @nvkm_device_pci_10de_01f0 }, %struct.nvkm_device_pci_device { i16 512, ptr @.str.109, ptr null }, %struct.nvkm_device_pci_device { i16 513, ptr @.str.110, ptr null }, %struct.nvkm_device_pci_device { i16 514, ptr @.str.111, ptr null }, %struct.nvkm_device_pci_device { i16 515, ptr @.str.112, ptr null }, %struct.nvkm_device_pci_device { i16 529, ptr @.str.6, ptr null }, %struct.nvkm_device_pci_device { i16 530, ptr @.str.7, ptr null }, %struct.nvkm_device_pci_device { i16 533, ptr @.str.10, ptr null }, %struct.nvkm_device_pci_device { i16 536, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 545, ptr @.str.28, ptr null }, %struct.nvkm_device_pci_device { i16 546, ptr @.str.113, ptr null }, %struct.nvkm_device_pci_device { i16 576, ptr @.str.114, ptr null }, %struct.nvkm_device_pci_device { i16 577, ptr @.str.115, ptr null }, %struct.nvkm_device_pci_device { i16 578, ptr @.str.116, ptr null }, %struct.nvkm_device_pci_device { i16 580, ptr @.str.117, ptr null }, %struct.nvkm_device_pci_device { i16 581, ptr @.str.118, ptr null }, %struct.nvkm_device_pci_device { i16 583, ptr @.str.119, ptr null }, %struct.nvkm_device_pci_device { i16 592, ptr @.str.120, ptr null }, %struct.nvkm_device_pci_device { i16 593, ptr @.str.121, ptr null }, %struct.nvkm_device_pci_device { i16 595, ptr @.str.122, ptr null }, %struct.nvkm_device_pci_device { i16 600, ptr @.str.123, ptr null }, %struct.nvkm_device_pci_device { i16 601, ptr @.str.124, ptr null }, %struct.nvkm_device_pci_device { i16 603, ptr @.str.125, ptr null }, %struct.nvkm_device_pci_device { i16 640, ptr @.str.126, ptr null }, %struct.nvkm_device_pci_device { i16 641, ptr @.str.127, ptr null }, %struct.nvkm_device_pci_device { i16 642, ptr @.str.128, ptr null }, %struct.nvkm_device_pci_device { i16 646, ptr @.str.129, ptr null }, %struct.nvkm_device_pci_device { i16 648, ptr @.str.130, ptr null }, %struct.nvkm_device_pci_device { i16 649, ptr @.str.131, ptr null }, %struct.nvkm_device_pci_device { i16 652, ptr @.str.132, ptr null }, %struct.nvkm_device_pci_device { i16 656, ptr @.str.133, ptr null }, %struct.nvkm_device_pci_device { i16 657, ptr @.str.134, ptr null }, %struct.nvkm_device_pci_device { i16 658, ptr @.str.135, ptr null }, %struct.nvkm_device_pci_device { i16 659, ptr @.str.136, ptr null }, %struct.nvkm_device_pci_device { i16 660, ptr @.str.136, ptr null }, %struct.nvkm_device_pci_device { i16 661, ptr @.str.137, ptr null }, %struct.nvkm_device_pci_device { i16 663, ptr @.str.138, ptr null }, %struct.nvkm_device_pci_device { i16 664, ptr @.str.139, ptr null }, %struct.nvkm_device_pci_device { i16 665, ptr @.str.140, ptr null }, %struct.nvkm_device_pci_device { i16 666, ptr @.str.141, ptr null }, %struct.nvkm_device_pci_device { i16 667, ptr @.str.142, ptr null }, %struct.nvkm_device_pci_device { i16 668, ptr @.str.143, ptr null }, %struct.nvkm_device_pci_device { i16 669, ptr @.str.144, ptr null }, %struct.nvkm_device_pci_device { i16 670, ptr @.str.145, ptr null }, %struct.nvkm_device_pci_device { i16 671, ptr @.str.146, ptr null }, %struct.nvkm_device_pci_device { i16 736, ptr @.str.147, ptr null }, %struct.nvkm_device_pci_device { i16 737, ptr @.str.148, ptr null }, %struct.nvkm_device_pci_device { i16 738, ptr @.str.149, ptr null }, %struct.nvkm_device_pci_device { i16 739, ptr @.str.135, ptr null }, %struct.nvkm_device_pci_device { i16 740, ptr @.str.137, ptr null }, %struct.nvkm_device_pci_device { i16 769, ptr @.str.150, ptr null }, %struct.nvkm_device_pci_device { i16 770, ptr @.str.151, ptr null }, %struct.nvkm_device_pci_device { i16 776, ptr @.str.152, ptr null }, %struct.nvkm_device_pci_device { i16 777, ptr @.str.153, ptr null }, %struct.nvkm_device_pci_device { i16 785, ptr @.str.154, ptr null }, %struct.nvkm_device_pci_device { i16 786, ptr @.str.155, ptr null }, %struct.nvkm_device_pci_device { i16 788, ptr @.str.156, ptr null }, %struct.nvkm_device_pci_device { i16 794, ptr @.str.157, ptr null }, %struct.nvkm_device_pci_device { i16 795, ptr @.str.158, ptr null }, %struct.nvkm_device_pci_device { i16 796, ptr @.str.159, ptr null }, %struct.nvkm_device_pci_device { i16 800, ptr @.str.160, ptr null }, %struct.nvkm_device_pci_device { i16 801, ptr @.str.161, ptr null }, %struct.nvkm_device_pci_device { i16 802, ptr @.str.160, ptr @nvkm_device_pci_10de_0322 }, %struct.nvkm_device_pci_device { i16 803, ptr @.str.162, ptr null }, %struct.nvkm_device_pci_device { i16 804, ptr @.str.163, ptr null }, %struct.nvkm_device_pci_device { i16 805, ptr @.str.164, ptr null }, %struct.nvkm_device_pci_device { i16 806, ptr @.str.165, ptr null }, %struct.nvkm_device_pci_device { i16 807, ptr @.str.166, ptr null }, %struct.nvkm_device_pci_device { i16 808, ptr @.str.167, ptr null }, %struct.nvkm_device_pci_device { i16 810, ptr @.str.168, ptr null }, %struct.nvkm_device_pci_device { i16 811, ptr @.str.169, ptr null }, %struct.nvkm_device_pci_device { i16 812, ptr @.str.170, ptr null }, %struct.nvkm_device_pci_device { i16 813, ptr @.str.171, ptr null }, %struct.nvkm_device_pci_device { i16 816, ptr @.str.172, ptr null }, %struct.nvkm_device_pci_device { i16 817, ptr @.str.173, ptr null }, %struct.nvkm_device_pci_device { i16 818, ptr @.str.174, ptr null }, %struct.nvkm_device_pci_device { i16 819, ptr @.str.175, ptr null }, %struct.nvkm_device_pci_device { i16 820, ptr @.str.176, ptr null }, %struct.nvkm_device_pci_device { i16 824, ptr @.str.177, ptr null }, %struct.nvkm_device_pci_device { i16 831, ptr @.str.178, ptr null }, %struct.nvkm_device_pci_device { i16 833, ptr @.str.179, ptr null }, %struct.nvkm_device_pci_device { i16 834, ptr @.str.180, ptr null }, %struct.nvkm_device_pci_device { i16 835, ptr @.str.181, ptr null }, %struct.nvkm_device_pci_device { i16 836, ptr @.str.182, ptr null }, %struct.nvkm_device_pci_device { i16 839, ptr @.str.183, ptr null }, %struct.nvkm_device_pci_device { i16 840, ptr @.str.183, ptr null }, %struct.nvkm_device_pci_device { i16 844, ptr @.str.184, ptr null }, %struct.nvkm_device_pci_device { i16 846, ptr @.str.185, ptr null }, %struct.nvkm_device_pci_device { i16 907, ptr @.str.186, ptr null }, %struct.nvkm_device_pci_device { i16 912, ptr @.str.186, ptr null }, %struct.nvkm_device_pci_device { i16 913, ptr @.str.147, ptr null }, %struct.nvkm_device_pci_device { i16 914, ptr @.str.148, ptr null }, %struct.nvkm_device_pci_device { i16 915, ptr @.str.149, ptr null }, %struct.nvkm_device_pci_device { i16 916, ptr @.str.187, ptr null }, %struct.nvkm_device_pci_device { i16 917, ptr @.str.149, ptr null }, %struct.nvkm_device_pci_device { i16 919, ptr @.str.188, ptr null }, %struct.nvkm_device_pci_device { i16 920, ptr @.str.189, ptr null }, %struct.nvkm_device_pci_device { i16 921, ptr @.str.190, ptr null }, %struct.nvkm_device_pci_device { i16 924, ptr @.str.191, ptr null }, %struct.nvkm_device_pci_device { i16 926, ptr @.str.192, ptr null }, %struct.nvkm_device_pci_device { i16 976, ptr @.str.193, ptr null }, %struct.nvkm_device_pci_device { i16 977, ptr @.str.194, ptr null }, %struct.nvkm_device_pci_device { i16 978, ptr @.str.195, ptr null }, %struct.nvkm_device_pci_device { i16 981, ptr @.str.196, ptr null }, %struct.nvkm_device_pci_device { i16 982, ptr @.str.197, ptr null }, %struct.nvkm_device_pci_device { i16 1024, ptr @.str.198, ptr null }, %struct.nvkm_device_pci_device { i16 1025, ptr @.str.199, ptr null }, %struct.nvkm_device_pci_device { i16 1026, ptr @.str.199, ptr null }, %struct.nvkm_device_pci_device { i16 1027, ptr @.str.200, ptr null }, %struct.nvkm_device_pci_device { i16 1028, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1029, ptr @.str.202, ptr null }, %struct.nvkm_device_pci_device { i16 1030, ptr @.str.203, ptr null }, %struct.nvkm_device_pci_device { i16 1031, ptr @.str.204, ptr null }, %struct.nvkm_device_pci_device { i16 1032, ptr @.str.205, ptr null }, %struct.nvkm_device_pci_device { i16 1033, ptr @.str.206, ptr null }, %struct.nvkm_device_pci_device { i16 1034, ptr @.str.207, ptr null }, %struct.nvkm_device_pci_device { i16 1035, ptr @.str.208, ptr null }, %struct.nvkm_device_pci_device { i16 1036, ptr @.str.209, ptr null }, %struct.nvkm_device_pci_device { i16 1037, ptr @.str.210, ptr null }, %struct.nvkm_device_pci_device { i16 1038, ptr @.str.211, ptr null }, %struct.nvkm_device_pci_device { i16 1039, ptr @.str.212, ptr null }, %struct.nvkm_device_pci_device { i16 1040, ptr @.str.213, ptr null }, %struct.nvkm_device_pci_device { i16 1056, ptr @.str.214, ptr null }, %struct.nvkm_device_pci_device { i16 1057, ptr @.str.215, ptr null }, %struct.nvkm_device_pci_device { i16 1058, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1059, ptr @.str.203, ptr null }, %struct.nvkm_device_pci_device { i16 1060, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1061, ptr @.str.216, ptr null }, %struct.nvkm_device_pci_device { i16 1062, ptr @.str.217, ptr null }, %struct.nvkm_device_pci_device { i16 1063, ptr @.str.218, ptr null }, %struct.nvkm_device_pci_device { i16 1064, ptr @.str.219, ptr null }, %struct.nvkm_device_pci_device { i16 1065, ptr @.str.220, ptr null }, %struct.nvkm_device_pci_device { i16 1066, ptr @.str.221, ptr null }, %struct.nvkm_device_pci_device { i16 1067, ptr @.str.222, ptr null }, %struct.nvkm_device_pci_device { i16 1068, ptr @.str.223, ptr null }, %struct.nvkm_device_pci_device { i16 1069, ptr @.str.224, ptr null }, %struct.nvkm_device_pci_device { i16 1070, ptr @.str.225, ptr null }, %struct.nvkm_device_pci_device { i16 1071, ptr @.str.226, ptr null }, %struct.nvkm_device_pci_device { i16 1329, ptr @.str.227, ptr null }, %struct.nvkm_device_pci_device { i16 1331, ptr @.str.228, ptr null }, %struct.nvkm_device_pci_device { i16 1338, ptr @.str.229, ptr null }, %struct.nvkm_device_pci_device { i16 1339, ptr @.str.229, ptr null }, %struct.nvkm_device_pci_device { i16 1342, ptr @.str.197, ptr null }, %struct.nvkm_device_pci_device { i16 1504, ptr @.str.230, ptr null }, %struct.nvkm_device_pci_device { i16 1505, ptr @.str.231, ptr null }, %struct.nvkm_device_pci_device { i16 1506, ptr @.str.232, ptr null }, %struct.nvkm_device_pci_device { i16 1507, ptr @.str.233, ptr null }, %struct.nvkm_device_pci_device { i16 1510, ptr @.str.234, ptr null }, %struct.nvkm_device_pci_device { i16 1511, ptr @.str.235, ptr @nvkm_device_pci_10de_05e7 }, %struct.nvkm_device_pci_device { i16 1514, ptr @.str.232, ptr null }, %struct.nvkm_device_pci_device { i16 1515, ptr @.str.230, ptr null }, %struct.nvkm_device_pci_device { i16 1517, ptr @.str.236, ptr null }, %struct.nvkm_device_pci_device { i16 1528, ptr @.str.237, ptr null }, %struct.nvkm_device_pci_device { i16 1529, ptr @.str.238, ptr null }, %struct.nvkm_device_pci_device { i16 1533, ptr @.str.239, ptr null }, %struct.nvkm_device_pci_device { i16 1534, ptr @.str.240, ptr null }, %struct.nvkm_device_pci_device { i16 1535, ptr @.str.241, ptr null }, %struct.nvkm_device_pci_device { i16 1536, ptr @.str.242, ptr null }, %struct.nvkm_device_pci_device { i16 1537, ptr @.str.243, ptr null }, %struct.nvkm_device_pci_device { i16 1538, ptr @.str.244, ptr null }, %struct.nvkm_device_pci_device { i16 1539, ptr @.str.245, ptr null }, %struct.nvkm_device_pci_device { i16 1540, ptr @.str.246, ptr null }, %struct.nvkm_device_pci_device { i16 1541, ptr @.str.243, ptr null }, %struct.nvkm_device_pci_device { i16 1542, ptr @.str.247, ptr null }, %struct.nvkm_device_pci_device { i16 1543, ptr @.str.248, ptr null }, %struct.nvkm_device_pci_device { i16 1544, ptr @.str.249, ptr null }, %struct.nvkm_device_pci_device { i16 1545, ptr @.str.250, ptr @nvkm_device_pci_10de_0609 }, %struct.nvkm_device_pci_device { i16 1546, ptr @.str.251, ptr null }, %struct.nvkm_device_pci_device { i16 1547, ptr @.str.252, ptr null }, %struct.nvkm_device_pci_device { i16 1548, ptr @.str.253, ptr null }, %struct.nvkm_device_pci_device { i16 1549, ptr @.str.247, ptr null }, %struct.nvkm_device_pci_device { i16 1551, ptr @.str.254, ptr null }, %struct.nvkm_device_pci_device { i16 1552, ptr @.str.255, ptr null }, %struct.nvkm_device_pci_device { i16 1553, ptr @.str.244, ptr null }, %struct.nvkm_device_pci_device { i16 1554, ptr @.str.256, ptr null }, %struct.nvkm_device_pci_device { i16 1555, ptr @.str.257, ptr null }, %struct.nvkm_device_pci_device { i16 1556, ptr @.str.243, ptr null }, %struct.nvkm_device_pci_device { i16 1557, ptr @.str.258, ptr null }, %struct.nvkm_device_pci_device { i16 1559, ptr @.str.249, ptr null }, %struct.nvkm_device_pci_device { i16 1560, ptr @.str.259, ptr null }, %struct.nvkm_device_pci_device { i16 1561, ptr @.str.260, ptr null }, %struct.nvkm_device_pci_device { i16 1562, ptr @.str.261, ptr null }, %struct.nvkm_device_pci_device { i16 1563, ptr @.str.262, ptr null }, %struct.nvkm_device_pci_device { i16 1564, ptr @.str.263, ptr null }, %struct.nvkm_device_pci_device { i16 1565, ptr @.str.264, ptr null }, %struct.nvkm_device_pci_device { i16 1566, ptr @.str.265, ptr null }, %struct.nvkm_device_pci_device { i16 1567, ptr @.str.266, ptr null }, %struct.nvkm_device_pci_device { i16 1569, ptr @.str.245, ptr null }, %struct.nvkm_device_pci_device { i16 1570, ptr @.str.267, ptr null }, %struct.nvkm_device_pci_device { i16 1571, ptr @.str.268, ptr null }, %struct.nvkm_device_pci_device { i16 1573, ptr @.str.269, ptr null }, %struct.nvkm_device_pci_device { i16 1574, ptr @.str.270, ptr null }, %struct.nvkm_device_pci_device { i16 1575, ptr @.str.271, ptr null }, %struct.nvkm_device_pci_device { i16 1576, ptr @.str.272, ptr null }, %struct.nvkm_device_pci_device { i16 1578, ptr @.str.273, ptr null }, %struct.nvkm_device_pci_device { i16 1579, ptr @.str.274, ptr null }, %struct.nvkm_device_pci_device { i16 1580, ptr @.str.272, ptr null }, %struct.nvkm_device_pci_device { i16 1581, ptr @.str.267, ptr null }, %struct.nvkm_device_pci_device { i16 1582, ptr @.str.267, ptr @nvkm_device_pci_10de_062e }, %struct.nvkm_device_pci_device { i16 1584, ptr @.str.275, ptr null }, %struct.nvkm_device_pci_device { i16 1585, ptr @.str.276, ptr null }, %struct.nvkm_device_pci_device { i16 1586, ptr @.str.277, ptr null }, %struct.nvkm_device_pci_device { i16 1589, ptr @.str.255, ptr null }, %struct.nvkm_device_pci_device { i16 1591, ptr @.str.267, ptr null }, %struct.nvkm_device_pci_device { i16 1592, ptr @.str.278, ptr null }, %struct.nvkm_device_pci_device { i16 1594, ptr @.str.279, ptr null }, %struct.nvkm_device_pci_device { i16 1600, ptr @.str.280, ptr null }, %struct.nvkm_device_pci_device { i16 1601, ptr @.str.223, ptr null }, %struct.nvkm_device_pci_device { i16 1603, ptr @.str.280, ptr null }, %struct.nvkm_device_pci_device { i16 1604, ptr @.str.281, ptr null }, %struct.nvkm_device_pci_device { i16 1605, ptr @.str.281, ptr null }, %struct.nvkm_device_pci_device { i16 1606, ptr @.str.282, ptr null }, %struct.nvkm_device_pci_device { i16 1607, ptr @.str.283, ptr null }, %struct.nvkm_device_pci_device { i16 1608, ptr @.str.284, ptr null }, %struct.nvkm_device_pci_device { i16 1609, ptr @.str.283, ptr @nvkm_device_pci_10de_0649 }, %struct.nvkm_device_pci_device { i16 1610, ptr @.str.285, ptr null }, %struct.nvkm_device_pci_device { i16 1611, ptr @.str.286, ptr null }, %struct.nvkm_device_pci_device { i16 1612, ptr @.str.287, ptr null }, %struct.nvkm_device_pci_device { i16 1617, ptr @.str.288, ptr null }, %struct.nvkm_device_pci_device { i16 1618, ptr @.str.289, ptr @nvkm_device_pci_10de_0652 }, %struct.nvkm_device_pci_device { i16 1619, ptr @.str.290, ptr null }, %struct.nvkm_device_pci_device { i16 1620, ptr @.str.291, ptr @nvkm_device_pci_10de_0654 }, %struct.nvkm_device_pci_device { i16 1621, ptr null, ptr @nvkm_device_pci_10de_0655 }, %struct.nvkm_device_pci_device { i16 1622, ptr null, ptr @nvkm_device_pci_10de_0656 }, %struct.nvkm_device_pci_device { i16 1624, ptr @.str.292, ptr null }, %struct.nvkm_device_pci_device { i16 1625, ptr @.str.293, ptr null }, %struct.nvkm_device_pci_device { i16 1626, ptr @.str.294, ptr null }, %struct.nvkm_device_pci_device { i16 1627, ptr @.str.223, ptr null }, %struct.nvkm_device_pci_device { i16 1628, ptr @.str.295, ptr null }, %struct.nvkm_device_pci_device { i16 1728, ptr @.str.296, ptr null }, %struct.nvkm_device_pci_device { i16 1732, ptr @.str.297, ptr null }, %struct.nvkm_device_pci_device { i16 1738, ptr @.str.298, ptr null }, %struct.nvkm_device_pci_device { i16 1741, ptr @.str.299, ptr null }, %struct.nvkm_device_pci_device { i16 1745, ptr @.str.300, ptr @nvkm_device_pci_10de_06d1 }, %struct.nvkm_device_pci_device { i16 1746, ptr @.str.301, ptr @nvkm_device_pci_10de_06d2 }, %struct.nvkm_device_pci_device { i16 1752, ptr @.str.302, ptr null }, %struct.nvkm_device_pci_device { i16 1753, ptr @.str.303, ptr null }, %struct.nvkm_device_pci_device { i16 1754, ptr @.str.304, ptr null }, %struct.nvkm_device_pci_device { i16 1756, ptr @.str.302, ptr null }, %struct.nvkm_device_pci_device { i16 1757, ptr @.str.305, ptr null }, %struct.nvkm_device_pci_device { i16 1758, ptr @.str.306, ptr @nvkm_device_pci_10de_06de }, %struct.nvkm_device_pci_device { i16 1759, ptr @.str.307, ptr null }, %struct.nvkm_device_pci_device { i16 1760, ptr @.str.308, ptr null }, %struct.nvkm_device_pci_device { i16 1761, ptr @.str.309, ptr null }, %struct.nvkm_device_pci_device { i16 1762, ptr @.str.310, ptr null }, %struct.nvkm_device_pci_device { i16 1763, ptr @.str.214, ptr null }, %struct.nvkm_device_pci_device { i16 1764, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1765, ptr @.str.311, ptr null }, %struct.nvkm_device_pci_device { i16 1766, ptr @.str.312, ptr null }, %struct.nvkm_device_pci_device { i16 1767, ptr @.str.313, ptr null }, %struct.nvkm_device_pci_device { i16 1768, ptr @.str.314, ptr @nvkm_device_pci_10de_06e8 }, %struct.nvkm_device_pci_device { i16 1769, ptr @.str.311, ptr null }, %struct.nvkm_device_pci_device { i16 1770, ptr @.str.315, ptr null }, %struct.nvkm_device_pci_device { i16 1771, ptr @.str.316, ptr null }, %struct.nvkm_device_pci_device { i16 1772, ptr @.str.317, ptr null }, %struct.nvkm_device_pci_device { i16 1775, ptr @.str.318, ptr null }, %struct.nvkm_device_pci_device { i16 1777, ptr @.str.319, ptr null }, %struct.nvkm_device_pci_device { i16 1784, ptr @.str.320, ptr null }, %struct.nvkm_device_pci_device { i16 1785, ptr @.str.321, ptr @nvkm_device_pci_10de_06f9 }, %struct.nvkm_device_pci_device { i16 1786, ptr @.str.322, ptr null }, %struct.nvkm_device_pci_device { i16 1787, ptr @.str.323, ptr null }, %struct.nvkm_device_pci_device { i16 1789, ptr @.str.324, ptr null }, %struct.nvkm_device_pci_device { i16 1791, ptr @.str.325, ptr @nvkm_device_pci_10de_06ff }, %struct.nvkm_device_pci_device { i16 2016, ptr @.str.326, ptr null }, %struct.nvkm_device_pci_device { i16 2017, ptr @.str.327, ptr null }, %struct.nvkm_device_pci_device { i16 2018, ptr @.str.328, ptr null }, %struct.nvkm_device_pci_device { i16 2019, ptr @.str.329, ptr null }, %struct.nvkm_device_pci_device { i16 2021, ptr @.str.330, ptr null }, %struct.nvkm_device_pci_device { i16 2112, ptr @.str.331, ptr null }, %struct.nvkm_device_pci_device { i16 2116, ptr @.str.332, ptr null }, %struct.nvkm_device_pci_device { i16 2117, ptr @.str.333, ptr null }, %struct.nvkm_device_pci_device { i16 2118, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2119, ptr @.str.335, ptr null }, %struct.nvkm_device_pci_device { i16 2120, ptr @.str.336, ptr null }, %struct.nvkm_device_pci_device { i16 2121, ptr @.str.337, ptr null }, %struct.nvkm_device_pci_device { i16 2122, ptr @.str.338, ptr null }, %struct.nvkm_device_pci_device { i16 2123, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2124, ptr @.str.339, ptr null }, %struct.nvkm_device_pci_device { i16 2125, ptr @.str.340, ptr null }, %struct.nvkm_device_pci_device { i16 2127, ptr @.str.341, ptr null }, %struct.nvkm_device_pci_device { i16 2144, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2145, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2146, ptr @.str.343, ptr null }, %struct.nvkm_device_pci_device { i16 2147, ptr @.str.344, ptr null }, %struct.nvkm_device_pci_device { i16 2148, ptr @.str.345, ptr null }, %struct.nvkm_device_pci_device { i16 2149, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2150, ptr @.str.343, ptr @nvkm_device_pci_10de_0866 }, %struct.nvkm_device_pci_device { i16 2151, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2152, ptr @.str.347, ptr null }, %struct.nvkm_device_pci_device { i16 2153, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2154, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2156, ptr @.str.348, ptr null }, %struct.nvkm_device_pci_device { i16 2157, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2158, ptr @.str.332, ptr null }, %struct.nvkm_device_pci_device { i16 2159, ptr @.str.333, ptr null }, %struct.nvkm_device_pci_device { i16 2160, ptr @.str.344, ptr null }, %struct.nvkm_device_pci_device { i16 2161, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2162, ptr @.str.349, ptr @nvkm_device_pci_10de_0872 }, %struct.nvkm_device_pci_device { i16 2163, ptr @.str.349, ptr @nvkm_device_pci_10de_0873 }, %struct.nvkm_device_pci_device { i16 2164, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2166, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2170, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2173, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2174, ptr @.str.350, ptr null }, %struct.nvkm_device_pci_device { i16 2175, ptr @.str.350, ptr null }, %struct.nvkm_device_pci_device { i16 2208, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2210, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2211, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2212, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2213, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2592, ptr @.str.352, ptr null }, %struct.nvkm_device_pci_device { i16 2594, ptr @.str.353, ptr null }, %struct.nvkm_device_pci_device { i16 2595, ptr @.str.354, ptr null }, %struct.nvkm_device_pci_device { i16 2598, ptr @.str.355, ptr null }, %struct.nvkm_device_pci_device { i16 2599, ptr @.str.355, ptr null }, %struct.nvkm_device_pci_device { i16 2600, ptr @.str.356, ptr null }, %struct.nvkm_device_pci_device { i16 2601, ptr @.str.357, ptr null }, %struct.nvkm_device_pci_device { i16 2602, ptr @.str.356, ptr null }, %struct.nvkm_device_pci_device { i16 2603, ptr @.str.357, ptr null }, %struct.nvkm_device_pci_device { i16 2604, ptr @.str.358, ptr null }, %struct.nvkm_device_pci_device { i16 2605, ptr @.str.359, ptr null }, %struct.nvkm_device_pci_device { i16 2610, ptr @.str.360, ptr null }, %struct.nvkm_device_pci_device { i16 2612, ptr @.str.361, ptr null }, %struct.nvkm_device_pci_device { i16 2613, ptr @.str.362, ptr null }, %struct.nvkm_device_pci_device { i16 2616, ptr @.str.363, ptr null }, %struct.nvkm_device_pci_device { i16 2620, ptr @.str.364, ptr null }, %struct.nvkm_device_pci_device { i16 2656, ptr @.str.365, ptr null }, %struct.nvkm_device_pci_device { i16 2658, ptr @.str.366, ptr null }, %struct.nvkm_device_pci_device { i16 2659, ptr @.str.367, ptr null }, %struct.nvkm_device_pci_device { i16 2660, ptr @.str.368, ptr null }, %struct.nvkm_device_pci_device { i16 2661, ptr @.str.354, ptr null }, %struct.nvkm_device_pci_device { i16 2662, ptr @.str.367, ptr null }, %struct.nvkm_device_pci_device { i16 2663, ptr @.str.353, ptr null }, %struct.nvkm_device_pci_device { i16 2664, ptr @.str.319, ptr null }, %struct.nvkm_device_pci_device { i16 2665, ptr @.str.319, ptr null }, %struct.nvkm_device_pci_device { i16 2666, ptr @.str.369, ptr null }, %struct.nvkm_device_pci_device { i16 2668, ptr @.str.370, ptr null }, %struct.nvkm_device_pci_device { i16 2670, ptr @.str.371, ptr @nvkm_device_pci_10de_0a6e }, %struct.nvkm_device_pci_device { i16 2671, ptr @.str.368, ptr null }, %struct.nvkm_device_pci_device { i16 2672, ptr @.str.372, ptr @nvkm_device_pci_10de_0a70 }, %struct.nvkm_device_pci_device { i16 2673, ptr @.str.371, ptr null }, %struct.nvkm_device_pci_device { i16 2674, ptr @.str.372, ptr null }, %struct.nvkm_device_pci_device { i16 2675, ptr @.str.371, ptr @nvkm_device_pci_10de_0a73 }, %struct.nvkm_device_pci_device { i16 2676, ptr @.str.373, ptr @nvkm_device_pci_10de_0a74 }, %struct.nvkm_device_pci_device { i16 2677, ptr @.str.372, ptr @nvkm_device_pci_10de_0a75 }, %struct.nvkm_device_pci_device { i16 2678, ptr @.str.368, ptr null }, %struct.nvkm_device_pci_device { i16 2680, ptr @.str.374, ptr null }, %struct.nvkm_device_pci_device { i16 2682, ptr @.str.375, ptr @nvkm_device_pci_10de_0a7a }, %struct.nvkm_device_pci_device { i16 2684, ptr @.str.376, ptr null }, %struct.nvkm_device_pci_device { i16 3232, ptr @.str.213, ptr null }, %struct.nvkm_device_pci_device { i16 3234, ptr @.str.377, ptr null }, %struct.nvkm_device_pci_device { i16 3235, ptr @.str.378, ptr null }, %struct.nvkm_device_pci_device { i16 3236, ptr @.str.379, ptr null }, %struct.nvkm_device_pci_device { i16 3237, ptr @.str.352, ptr null }, %struct.nvkm_device_pci_device { i16 3239, ptr @.str.213, ptr null }, %struct.nvkm_device_pci_device { i16 3240, ptr @.str.380, ptr null }, %struct.nvkm_device_pci_device { i16 3241, ptr @.str.381, ptr null }, %struct.nvkm_device_pci_device { i16 3244, ptr @.str.352, ptr null }, %struct.nvkm_device_pci_device { i16 3247, ptr @.str.382, ptr null }, %struct.nvkm_device_pci_device { i16 3248, ptr @.str.383, ptr null }, %struct.nvkm_device_pci_device { i16 3249, ptr @.str.384, ptr null }, %struct.nvkm_device_pci_device { i16 3260, ptr @.str.385, ptr null }, %struct.nvkm_device_pci_device { i16 3520, ptr @.str.386, ptr null }, %struct.nvkm_device_pci_device { i16 3524, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 3525, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 3526, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 3533, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 3534, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 3537, ptr @.str.389, ptr null }, %struct.nvkm_device_pci_device { i16 3538, ptr @.str.390, ptr null }, %struct.nvkm_device_pci_device { i16 3539, ptr @.str.391, ptr null }, %struct.nvkm_device_pci_device { i16 3542, ptr @.str.392, ptr null }, %struct.nvkm_device_pci_device { i16 3544, ptr @.str.393, ptr @nvkm_device_pci_10de_0dd8 }, %struct.nvkm_device_pci_device { i16 3546, ptr @.str.394, ptr null }, %struct.nvkm_device_pci_device { i16 3552, ptr @.str.386, ptr null }, %struct.nvkm_device_pci_device { i16 3553, ptr @.str.395, ptr null }, %struct.nvkm_device_pci_device { i16 3554, ptr @.str.396, ptr null }, %struct.nvkm_device_pci_device { i16 3555, ptr @.str.397, ptr null }, %struct.nvkm_device_pci_device { i16 3556, ptr @.str.398, ptr null }, %struct.nvkm_device_pci_device { i16 3557, ptr @.str.399, ptr null }, %struct.nvkm_device_pci_device { i16 3559, ptr @.str.400, ptr null }, %struct.nvkm_device_pci_device { i16 3560, ptr @.str.401, ptr null }, %struct.nvkm_device_pci_device { i16 3561, ptr @.str.402, ptr @nvkm_device_pci_10de_0de9 }, %struct.nvkm_device_pci_device { i16 3562, ptr @.str.403, ptr @nvkm_device_pci_10de_0dea }, %struct.nvkm_device_pci_device { i16 3563, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 3564, ptr @.str.404, ptr null }, %struct.nvkm_device_pci_device { i16 3565, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 3566, ptr @.str.406, ptr null }, %struct.nvkm_device_pci_device { i16 3567, ptr @.str.407, ptr null }, %struct.nvkm_device_pci_device { i16 3568, ptr @.str.408, ptr null }, %struct.nvkm_device_pci_device { i16 3569, ptr @.str.409, ptr null }, %struct.nvkm_device_pci_device { i16 3570, ptr @.str.391, ptr null }, %struct.nvkm_device_pci_device { i16 3571, ptr @.str.409, ptr null }, %struct.nvkm_device_pci_device { i16 3572, ptr @.str.410, ptr @nvkm_device_pci_10de_0df4 }, %struct.nvkm_device_pci_device { i16 3573, ptr @.str.404, ptr null }, %struct.nvkm_device_pci_device { i16 3574, ptr @.str.392, ptr null }, %struct.nvkm_device_pci_device { i16 3575, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 3576, ptr @.str.411, ptr null }, %struct.nvkm_device_pci_device { i16 3577, ptr @.str.412, ptr null }, %struct.nvkm_device_pci_device { i16 3578, ptr @.str.413, ptr null }, %struct.nvkm_device_pci_device { i16 3580, ptr @.str.414, ptr null }, %struct.nvkm_device_pci_device { i16 3618, ptr @.str.415, ptr null }, %struct.nvkm_device_pci_device { i16 3619, ptr @.str.416, ptr null }, %struct.nvkm_device_pci_device { i16 3620, ptr @.str.415, ptr null }, %struct.nvkm_device_pci_device { i16 3632, ptr @.str.417, ptr null }, %struct.nvkm_device_pci_device { i16 3633, ptr @.str.418, ptr null }, %struct.nvkm_device_pci_device { i16 3642, ptr @.str.419, ptr null }, %struct.nvkm_device_pci_device { i16 3643, ptr @.str.420, ptr null }, %struct.nvkm_device_pci_device { i16 3840, ptr @.str.421, ptr null }, %struct.nvkm_device_pci_device { i16 3841, ptr @.str.422, ptr null }, %struct.nvkm_device_pci_device { i16 3842, ptr @.str.423, ptr null }, %struct.nvkm_device_pci_device { i16 4032, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4033, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4034, ptr @.str.421, ptr null }, %struct.nvkm_device_pci_device { i16 4038, ptr @.str.425, ptr null }, %struct.nvkm_device_pci_device { i16 4040, ptr @.str.426, ptr null }, %struct.nvkm_device_pci_device { i16 4041, ptr @.str.423, ptr null }, %struct.nvkm_device_pci_device { i16 4045, ptr @.str.427, ptr null }, %struct.nvkm_device_pci_device { i16 4046, ptr @.str.428, ptr null }, %struct.nvkm_device_pci_device { i16 4049, ptr @.str.429, ptr null }, %struct.nvkm_device_pci_device { i16 4050, ptr @.str.430, ptr @nvkm_device_pci_10de_0fd2 }, %struct.nvkm_device_pci_device { i16 4051, ptr @.str.428, ptr null }, %struct.nvkm_device_pci_device { i16 4052, ptr @.str.431, ptr null }, %struct.nvkm_device_pci_device { i16 4053, ptr @.str.429, ptr null }, %struct.nvkm_device_pci_device { i16 4056, ptr @.str.430, ptr null }, %struct.nvkm_device_pci_device { i16 4057, ptr @.str.432, ptr null }, %struct.nvkm_device_pci_device { i16 4063, ptr @.str.433, ptr null }, %struct.nvkm_device_pci_device { i16 4064, ptr @.str.431, ptr null }, %struct.nvkm_device_pci_device { i16 4065, ptr @.str.434, ptr null }, %struct.nvkm_device_pci_device { i16 4066, ptr @.str.435, ptr null }, %struct.nvkm_device_pci_device { i16 4067, ptr @.str.435, ptr @nvkm_device_pci_10de_0fe3 }, %struct.nvkm_device_pci_device { i16 4068, ptr @.str.436, ptr null }, %struct.nvkm_device_pci_device { i16 4073, ptr @.str.436, ptr null }, %struct.nvkm_device_pci_device { i16 4074, ptr @.str.427, ptr null }, %struct.nvkm_device_pci_device { i16 4076, ptr @.str.437, ptr null }, %struct.nvkm_device_pci_device { i16 4079, ptr @.str.438, ptr null }, %struct.nvkm_device_pci_device { i16 4082, ptr @.str.439, ptr null }, %struct.nvkm_device_pci_device { i16 4083, ptr @.str.440, ptr null }, %struct.nvkm_device_pci_device { i16 4086, ptr @.str.441, ptr null }, %struct.nvkm_device_pci_device { i16 4088, ptr @.str.442, ptr null }, %struct.nvkm_device_pci_device { i16 4089, ptr @.str.443, ptr null }, %struct.nvkm_device_pci_device { i16 4090, ptr @.str.444, ptr null }, %struct.nvkm_device_pci_device { i16 4091, ptr @.str.445, ptr null }, %struct.nvkm_device_pci_device { i16 4092, ptr @.str.446, ptr null }, %struct.nvkm_device_pci_device { i16 4093, ptr @.str.447, ptr null }, %struct.nvkm_device_pci_device { i16 4094, ptr @.str.448, ptr null }, %struct.nvkm_device_pci_device { i16 4095, ptr @.str.449, ptr null }, %struct.nvkm_device_pci_device { i16 4097, ptr @.str.450, ptr null }, %struct.nvkm_device_pci_device { i16 4100, ptr @.str.451, ptr null }, %struct.nvkm_device_pci_device { i16 4101, ptr @.str.452, ptr null }, %struct.nvkm_device_pci_device { i16 4103, ptr @.str.451, ptr null }, %struct.nvkm_device_pci_device { i16 4104, ptr @.str.453, ptr null }, %struct.nvkm_device_pci_device { i16 4106, ptr @.str.453, ptr null }, %struct.nvkm_device_pci_device { i16 4108, ptr @.str.454, ptr null }, %struct.nvkm_device_pci_device { i16 4129, ptr @.str.455, ptr null }, %struct.nvkm_device_pci_device { i16 4130, ptr @.str.456, ptr null }, %struct.nvkm_device_pci_device { i16 4131, ptr @.str.457, ptr null }, %struct.nvkm_device_pci_device { i16 4132, ptr @.str.458, ptr null }, %struct.nvkm_device_pci_device { i16 4134, ptr @.str.459, ptr null }, %struct.nvkm_device_pci_device { i16 4135, ptr @.str.460, ptr null }, %struct.nvkm_device_pci_device { i16 4136, ptr @.str.461, ptr null }, %struct.nvkm_device_pci_device { i16 4137, ptr @.str.462, ptr null }, %struct.nvkm_device_pci_device { i16 4138, ptr @.str.463, ptr null }, %struct.nvkm_device_pci_device { i16 4141, ptr @.str.464, ptr null }, %struct.nvkm_device_pci_device { i16 4154, ptr @.str.465, ptr null }, %struct.nvkm_device_pci_device { i16 4156, ptr @.str.466, ptr null }, %struct.nvkm_device_pci_device { i16 4160, ptr @.str.398, ptr null }, %struct.nvkm_device_pci_device { i16 4162, ptr @.str.467, ptr null }, %struct.nvkm_device_pci_device { i16 4168, ptr @.str.468, ptr null }, %struct.nvkm_device_pci_device { i16 4169, ptr @.str.422, ptr null }, %struct.nvkm_device_pci_device { i16 4170, ptr @.str.400, ptr null }, %struct.nvkm_device_pci_device { i16 4171, ptr @.str.469, ptr @nvkm_device_pci_10de_104b }, %struct.nvkm_device_pci_device { i16 4172, ptr @.str.470, ptr null }, %struct.nvkm_device_pci_device { i16 4176, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 4177, ptr @.str.471, ptr null }, %struct.nvkm_device_pci_device { i16 4178, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 4180, ptr @.str.472, ptr null }, %struct.nvkm_device_pci_device { i16 4181, ptr @.str.472, ptr null }, %struct.nvkm_device_pci_device { i16 4182, ptr @.str.473, ptr null }, %struct.nvkm_device_pci_device { i16 4183, ptr @.str.473, ptr null }, %struct.nvkm_device_pci_device { i16 4184, ptr @.str.403, ptr @nvkm_device_pci_10de_1058 }, %struct.nvkm_device_pci_device { i16 4185, ptr @.str.403, ptr null }, %struct.nvkm_device_pci_device { i16 4186, ptr @.str.403, ptr null }, %struct.nvkm_device_pci_device { i16 4187, ptr @.str.474, ptr @nvkm_device_pci_10de_105b }, %struct.nvkm_device_pci_device { i16 4220, ptr @.str.475, ptr null }, %struct.nvkm_device_pci_device { i16 4221, ptr @.str.476, ptr null }, %struct.nvkm_device_pci_device { i16 4224, ptr @.str.477, ptr null }, %struct.nvkm_device_pci_device { i16 4225, ptr @.str.478, ptr null }, %struct.nvkm_device_pci_device { i16 4226, ptr @.str.479, ptr null }, %struct.nvkm_device_pci_device { i16 4228, ptr @.str.480, ptr null }, %struct.nvkm_device_pci_device { i16 4230, ptr @.str.478, ptr null }, %struct.nvkm_device_pci_device { i16 4231, ptr @.str.479, ptr null }, %struct.nvkm_device_pci_device { i16 4232, ptr @.str.481, ptr null }, %struct.nvkm_device_pci_device { i16 4233, ptr @.str.477, ptr null }, %struct.nvkm_device_pci_device { i16 4235, ptr @.str.477, ptr null }, %struct.nvkm_device_pci_device { i16 4241, ptr @.str.482, ptr @nvkm_device_pci_10de_1091 }, %struct.nvkm_device_pci_device { i16 4244, ptr @.str.483, ptr null }, %struct.nvkm_device_pci_device { i16 4246, ptr @.str.484, ptr @nvkm_device_pci_10de_1096 }, %struct.nvkm_device_pci_device { i16 4250, ptr @.str.485, ptr null }, %struct.nvkm_device_pci_device { i16 4251, ptr @.str.486, ptr null }, %struct.nvkm_device_pci_device { i16 4288, ptr @.str.309, ptr null }, %struct.nvkm_device_pci_device { i16 4291, ptr @.str.487, ptr null }, %struct.nvkm_device_pci_device { i16 4293, ptr @.str.355, ptr null }, %struct.nvkm_device_pci_device { i16 4312, ptr @.str.488, ptr null }, %struct.nvkm_device_pci_device { i16 4416, ptr null, ptr @nvkm_device_pci_10de_1140 }, %struct.nvkm_device_pci_device { i16 4480, ptr @.str.489, ptr null }, %struct.nvkm_device_pci_device { i16 4483, ptr @.str.490, ptr null }, %struct.nvkm_device_pci_device { i16 4484, ptr @.str.491, ptr null }, %struct.nvkm_device_pci_device { i16 4485, ptr @.str.492, ptr @nvkm_device_pci_10de_1185 }, %struct.nvkm_device_pci_device { i16 4487, ptr @.str.493, ptr null }, %struct.nvkm_device_pci_device { i16 4488, ptr @.str.494, ptr null }, %struct.nvkm_device_pci_device { i16 4489, ptr @.str.495, ptr @nvkm_device_pci_10de_1189 }, %struct.nvkm_device_pci_device { i16 4490, ptr @.str.496, ptr null }, %struct.nvkm_device_pci_device { i16 4494, ptr @.str.497, ptr null }, %struct.nvkm_device_pci_device { i16 4495, ptr @.str.498, ptr null }, %struct.nvkm_device_pci_device { i16 4499, ptr @.str.499, ptr null }, %struct.nvkm_device_pci_device { i16 4500, ptr @.str.500, ptr null }, %struct.nvkm_device_pci_device { i16 4501, ptr @.str.492, ptr null }, %struct.nvkm_device_pci_device { i16 4504, ptr @.str.501, ptr null }, %struct.nvkm_device_pci_device { i16 4505, ptr @.str.502, ptr @nvkm_device_pci_10de_1199 }, %struct.nvkm_device_pci_device { i16 4506, ptr @.str.503, ptr null }, %struct.nvkm_device_pci_device { i16 4509, ptr @.str.504, ptr null }, %struct.nvkm_device_pci_device { i16 4510, ptr @.str.505, ptr null }, %struct.nvkm_device_pci_device { i16 4511, ptr @.str.505, ptr null }, %struct.nvkm_device_pci_device { i16 4512, ptr @.str.506, ptr null }, %struct.nvkm_device_pci_device { i16 4513, ptr @.str.507, ptr null }, %struct.nvkm_device_pci_device { i16 4514, ptr @.str.508, ptr null }, %struct.nvkm_device_pci_device { i16 4515, ptr @.str.509, ptr null }, %struct.nvkm_device_pci_device { i16 4519, ptr @.str.508, ptr null }, %struct.nvkm_device_pci_device { i16 4532, ptr @.str.510, ptr null }, %struct.nvkm_device_pci_device { i16 4534, ptr @.str.511, ptr null }, %struct.nvkm_device_pci_device { i16 4535, ptr @.str.512, ptr null }, %struct.nvkm_device_pci_device { i16 4536, ptr @.str.513, ptr null }, %struct.nvkm_device_pci_device { i16 4538, ptr @.str.514, ptr null }, %struct.nvkm_device_pci_device { i16 4540, ptr @.str.515, ptr null }, %struct.nvkm_device_pci_device { i16 4541, ptr @.str.516, ptr null }, %struct.nvkm_device_pci_device { i16 4542, ptr @.str.517, ptr null }, %struct.nvkm_device_pci_device { i16 4543, ptr @.str.518, ptr null }, %struct.nvkm_device_pci_device { i16 4544, ptr @.str.492, ptr null }, %struct.nvkm_device_pci_device { i16 4546, ptr @.str.519, ptr null }, %struct.nvkm_device_pci_device { i16 4547, ptr @.str.520, ptr null }, %struct.nvkm_device_pci_device { i16 4548, ptr @.str.521, ptr null }, %struct.nvkm_device_pci_device { i16 4549, ptr @.str.426, ptr null }, %struct.nvkm_device_pci_device { i16 4550, ptr @.str.520, ptr null }, %struct.nvkm_device_pci_device { i16 4552, ptr @.str.425, ptr null }, %struct.nvkm_device_pci_device { i16 4555, ptr @.str.426, ptr null }, %struct.nvkm_device_pci_device { i16 4576, ptr @.str.522, ptr null }, %struct.nvkm_device_pci_device { i16 4577, ptr @.str.523, ptr null }, %struct.nvkm_device_pci_device { i16 4578, ptr @.str.523, ptr null }, %struct.nvkm_device_pci_device { i16 4579, ptr @.str.524, ptr @nvkm_device_pci_10de_11e3 }, %struct.nvkm_device_pci_device { i16 4602, ptr @.str.525, ptr null }, %struct.nvkm_device_pci_device { i16 4604, ptr @.str.526, ptr null }, %struct.nvkm_device_pci_device { i16 4608, ptr @.str.479, ptr null }, %struct.nvkm_device_pci_device { i16 4609, ptr @.str.480, ptr null }, %struct.nvkm_device_pci_device { i16 4611, ptr @.str.527, ptr null }, %struct.nvkm_device_pci_device { i16 4613, ptr @.str.528, ptr null }, %struct.nvkm_device_pci_device { i16 4614, ptr @.str.529, ptr null }, %struct.nvkm_device_pci_device { i16 4615, ptr @.str.530, ptr null }, %struct.nvkm_device_pci_device { i16 4616, ptr @.str.531, ptr null }, %struct.nvkm_device_pci_device { i16 4624, ptr @.str.532, ptr null }, %struct.nvkm_device_pci_device { i16 4625, ptr @.str.533, ptr null }, %struct.nvkm_device_pci_device { i16 4626, ptr @.str.534, ptr null }, %struct.nvkm_device_pci_device { i16 4627, ptr @.str.535, ptr null }, %struct.nvkm_device_pci_device { i16 4673, ptr @.str.536, ptr null }, %struct.nvkm_device_pci_device { i16 4675, ptr @.str.536, ptr null }, %struct.nvkm_device_pci_device { i16 4676, ptr @.str.537, ptr null }, %struct.nvkm_device_pci_device { i16 4677, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 4678, ptr @.str.392, ptr null }, %struct.nvkm_device_pci_device { i16 4679, ptr @.str.388, ptr @nvkm_device_pci_10de_1247 }, %struct.nvkm_device_pci_device { i16 4680, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 4681, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 4683, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4685, ptr @.str.388, ptr @nvkm_device_pci_10de_124d }, %struct.nvkm_device_pci_device { i16 4689, ptr @.str.538, ptr null }, %struct.nvkm_device_pci_device { i16 4736, ptr @.str.539, ptr null }, %struct.nvkm_device_pci_device { i16 4737, ptr @.str.540, ptr null }, %struct.nvkm_device_pci_device { i16 4738, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4740, ptr @.str.421, ptr null }, %struct.nvkm_device_pci_device { i16 4742, ptr @.str.541, ptr null }, %struct.nvkm_device_pci_device { i16 4743, ptr @.str.423, ptr null }, %struct.nvkm_device_pci_device { i16 4744, ptr @.str.541, ptr null }, %struct.nvkm_device_pci_device { i16 4745, ptr @.str.540, ptr null }, %struct.nvkm_device_pci_device { i16 4752, ptr @.str.434, ptr @nvkm_device_pci_10de_1290 }, %struct.nvkm_device_pci_device { i16 4753, ptr @.str.542, ptr null }, %struct.nvkm_device_pci_device { i16 4754, ptr @.str.433, ptr @nvkm_device_pci_10de_1292 }, %struct.nvkm_device_pci_device { i16 4755, ptr @.str.434, ptr null }, %struct.nvkm_device_pci_device { i16 4757, ptr @.str.543, ptr @nvkm_device_pci_10de_1295 }, %struct.nvkm_device_pci_device { i16 4758, ptr @.str.544, ptr null }, %struct.nvkm_device_pci_device { i16 4760, ptr @.str.545, ptr null }, %struct.nvkm_device_pci_device { i16 4761, ptr @.str.546, ptr @nvkm_device_pci_10de_1299 }, %struct.nvkm_device_pci_device { i16 4762, ptr @.str.547, ptr null }, %struct.nvkm_device_pci_device { i16 4793, ptr @.str.548, ptr null }, %struct.nvkm_device_pci_device { i16 4794, ptr @.str.549, ptr null }, %struct.nvkm_device_pci_device { i16 4928, ptr @.str.550, ptr @nvkm_device_pci_10de_1340 }, %struct.nvkm_device_pci_device { i16 4929, ptr @.str.551, ptr @nvkm_device_pci_10de_1341 }, %struct.nvkm_device_pci_device { i16 4932, ptr @.str.552, ptr null }, %struct.nvkm_device_pci_device { i16 4934, ptr @.str.553, ptr @nvkm_device_pci_10de_1346 }, %struct.nvkm_device_pci_device { i16 4935, ptr @.str.554, ptr @nvkm_device_pci_10de_1347 }, %struct.nvkm_device_pci_device { i16 4986, ptr null, ptr @nvkm_device_pci_10de_137a }, %struct.nvkm_device_pci_device { i16 4989, ptr null, ptr @nvkm_device_pci_10de_137d }, %struct.nvkm_device_pci_device { i16 4992, ptr @.str.555, ptr null }, %struct.nvkm_device_pci_device { i16 4993, ptr @.str.556, ptr null }, %struct.nvkm_device_pci_device { i16 4994, ptr @.str.557, ptr null }, %struct.nvkm_device_pci_device { i16 5008, ptr @.str.552, ptr null }, %struct.nvkm_device_pci_device { i16 5009, ptr @.str.558, ptr @nvkm_device_pci_10de_1391 }, %struct.nvkm_device_pci_device { i16 5010, ptr @.str.503, ptr @nvkm_device_pci_10de_1392 }, %struct.nvkm_device_pci_device { i16 5011, ptr @.str.551, ptr null }, %struct.nvkm_device_pci_device { i16 5016, ptr @.str.552, ptr null }, %struct.nvkm_device_pci_device { i16 5018, ptr @.str.559, ptr @nvkm_device_pci_10de_139a }, %struct.nvkm_device_pci_device { i16 5019, ptr @.str.560, ptr @nvkm_device_pci_10de_139b }, %struct.nvkm_device_pci_device { i16 5020, ptr @.str.554, ptr null }, %struct.nvkm_device_pci_device { i16 5043, ptr @.str.561, ptr null }, %struct.nvkm_device_pci_device { i16 5050, ptr @.str.562, ptr null }, %struct.nvkm_device_pci_device { i16 5051, ptr @.str.563, ptr null }, %struct.nvkm_device_pci_device { i16 5052, ptr @.str.564, ptr null }, %struct.nvkm_device_pci_device { i16 5056, ptr @.str.565, ptr null }, %struct.nvkm_device_pci_device { i16 5058, ptr @.str.566, ptr null }, %struct.nvkm_device_pci_device { i16 5079, ptr @.str.567, ptr null }, %struct.nvkm_device_pci_device { i16 5080, ptr @.str.568, ptr null }, %struct.nvkm_device_pci_device { i16 5081, ptr @.str.569, ptr null }, %struct.nvkm_device_pci_device { i16 5121, ptr @.str.570, ptr null }, %struct.nvkm_device_pci_device { i16 5655, ptr @.str.567, ptr null }, %struct.nvkm_device_pci_device { i16 5656, ptr @.str.568, ptr null }, %struct.nvkm_device_pci_device { i16 5657, ptr @.str.569, ptr null }, %struct.nvkm_device_pci_device { i16 6082, ptr @.str.571, ptr null }, %struct.nvkm_device_pci_device { i16 6088, ptr @.str.572, ptr null }, %struct.nvkm_device_pci_device { i16 6128, ptr @.str.573, ptr null }, %struct.nvkm_device_pci_device zeroinitializer], align 4
@nvkm_device_pci_func = internal constant %struct.nvkm_device_func { ptr @nvkm_device_pci, ptr null, ptr @nvkm_device_pci_dtor, ptr @nvkm_device_pci_preinit, ptr null, ptr @nvkm_device_pci_fini, ptr @nvkm_device_pci_resource_addr, ptr @nvkm_device_pci_resource_size, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"RIVA TNT\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"RIVA TNT2/TNT2 Pro\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"RIVA TNT2 Ultra\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Vanta/Vanta LT\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"RIVA TNT2 Model 64/Model 64 Pro\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"GeForce 6800 Ultra\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"GeForce 6800\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"GeForce 6800 LE\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"GeForce 6800 XE\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"GeForce 6800 XT\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"GeForce 6800 GT\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"GeForce 6800 GS\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Quadro FX 4000\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"GeForce 7800 GTX\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"GeForce 7800 GT\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"GeForce 7800 GS\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"GeForce 7800 SLI\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"GeForce Go 7800\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"GeForce Go 7800 GTX\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Quadro FX 4500\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Aladdin TNT2\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"GeForce Go 6800\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"GeForce Go 6800 Ultra\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Quadro FX Go1400\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Quadro FX 3450/4000 SDI\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Quadro FX 1400\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"GeForce 6600 GT\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"GeForce 6600\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"GeForce 6200\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"GeForce 6600 LE\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Quadro FX 3400/Quadro FX 4000\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"GeForce PCX 5750\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"GeForce PCX 5900\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Quadro FX 330/GeForce PCX 5300\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"Quadro FX 330/Quadro NVS 280 PCI-E\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Quadro FX 1300\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"GeForce 256\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"GeForce DDR\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Quadro\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"GeForce2 MX/MX 400\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"GeForce2 MX 100/200\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"GeForce2 Go\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Quadro2 MXR/EX/Go\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"GeForce 6600 VE\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"GeForce Go 6600\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"GeForce 6610 XL\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"GeForce Go 6600 TE/6200 TE\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"GeForce 6700 XL\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"GeForce Go 6600 GT\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Quadro NVS 440\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Quadro FX 540M\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Quadro FX 550\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Quadro FX 540\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"GeForce2 GTS/GeForce2 Pro\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"GeForce2 Ti\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"GeForce2 Ultra\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Quadro2 Pro\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"GeForce 6500\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"GeForce 6200 TurboCache(TM)\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"GeForce 6200SE TurboCache(TM)\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"GeForce 6200 LE\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"GeForce Go 6200\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Quadro NVS 285\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"GeForce Go 6400\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"GeForce 6250\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"GeForce 7100 GS\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"GeForce4 MX 460\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"GeForce4 MX 440\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"GeForce4 MX 420\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"GeForce4 MX 440-SE\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"GeForce4 440 Go\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"GeForce4 420 Go\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"GeForce4 420 Go 32M\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"GeForce4 460 Go\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"Quadro4 550 XGL\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"GeForce4 440 Go 64M\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Quadro NVS 400\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"Quadro4 500 GoGL\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"GeForce4 410 Go 16M\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"GeForce4 MX 440 with AGP8X\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"GeForce4 MX 440SE with AGP8X\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"GeForce4 MX 420 with AGP8X\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"GeForce4 MX 4000\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"Quadro4 580 XGL\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"GeForce4 MX with AGP8X (Mac)\00", align 1
@nvkm_device_pci_10de_0189 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 16, ptr null, %struct.nvkm_device_quirk { i8 0, i8 4 } }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.85 = private unnamed_addr constant [18 x i8] c"Quadro NVS 280 SD\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Quadro4 380 XGL\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"Quadro NVS 50 PCI\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"GeForce 8800 GTX\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"GeForce 8800 GTS\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"GeForce 8800 Ultra\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"Tesla C870\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"Quadro FX 5600\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"Quadro FX 4600\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"GeForce2 Integrated GPU\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"GeForce 7350 LE\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"GeForce 7300 LE\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"GeForce 7550 LE\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"GeForce 7300 SE/7200 GS\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"GeForce Go 7200\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"GeForce Go 7300\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"GeForce Go 7400\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"Quadro NVS 110M\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"Quadro NVS 120M\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"Quadro FX 350M\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"GeForce 7500 LE\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Quadro FX 350\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"GeForce 7300 GS\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"GeForce4 MX Integrated GPU\00", align 1
@nvkm_device_pci_10de_01f0 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5218, i16 22288, ptr null, %struct.nvkm_device_quirk { i8 12, i8 0 } }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"GeForce3\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"GeForce3 Ti 200\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"GeForce3 Ti 500\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"Quadro DCC\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"GeForce 6200 A-LE\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"GeForce 6150\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"GeForce 6150 LE\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"GeForce 6100\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"GeForce Go 6150\00", align 1
@.str.118 = private unnamed_addr constant [33 x i8] c"Quadro NVS 210S / GeForce 6150LE\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"GeForce Go 6100\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"GeForce4 Ti 4600\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"GeForce4 Ti 4400\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"GeForce4 Ti 4200\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"Quadro4 900 XGL\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"Quadro4 750 XGL\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"Quadro4 700 XGL\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"GeForce4 Ti 4800\00", align 1
@.str.127 = private unnamed_addr constant [28 x i8] c"GeForce4 Ti 4200 with AGP8X\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"GeForce4 Ti 4800 SE\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"GeForce4 4200 Go\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"Quadro4 980 XGL\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"Quadro4 780 XGL\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"Quadro4 700 GoGL\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"GeForce 7900 GTX\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"GeForce 7900 GT/GTO\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"GeForce 7900 GS\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"GeForce 7950 GX2\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"GeForce 7950 GT\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"GeForce Go 7950 GTX\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"GeForce Go 7900 GS\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"Quadro NVS 510M\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"Quadro FX 2500M\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"Quadro FX 1500M\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Quadro FX 5500\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Quadro FX 3500\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"Quadro FX 1500\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"Quadro FX 4500 X2\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"GeForce 7600 GT\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"GeForce 7600 GS\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"GeForce 7300 GT\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"GeForce FX 5800 Ultra\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"GeForce FX 5800\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"Quadro FX 2000\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"Quadro FX 1000\00", align 1
@.str.154 = private unnamed_addr constant [22 x i8] c"GeForce FX 5600 Ultra\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"GeForce FX 5600\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"GeForce FX 5600XT\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"GeForce FX Go5600\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"GeForce FX Go5650\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"Quadro FX Go700\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"GeForce FX 5200\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"GeForce FX 5200 Ultra\00", align 1
@nvkm_device_pci_10de_0322 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6618, i16 4149, ptr null, %struct.nvkm_device_quirk { i8 12, i8 0 } }, %struct.nvkm_device_pci_vendor { i16 6618, i16 8245, ptr null, %struct.nvkm_device_quirk { i8 12, i8 0 } }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.162 = private unnamed_addr constant [18 x i8] c"GeForce FX 5200LE\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c"GeForce FX Go5200\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"GeForce FX Go5250\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"GeForce FX 5500\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"GeForce FX 5100\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"GeForce FX Go5200 32M/64M\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"Quadro NVS 55/280 PCI\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"Quadro FX 500/FX 600\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"GeForce FX Go53xx\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"GeForce FX Go5100\00", align 1
@.str.172 = private unnamed_addr constant [22 x i8] c"GeForce FX 5900 Ultra\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"GeForce FX 5900\00", align 1
@.str.174 = private unnamed_addr constant [18 x i8] c"GeForce FX 5900XT\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"GeForce FX 5950 Ultra\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"GeForce FX 5900ZT\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"Quadro FX 3000\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"Quadro FX 700\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"GeForce FX 5700 Ultra\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"GeForce FX 5700\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"GeForce FX 5700LE\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"GeForce FX 5700VE\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"GeForce FX Go5700\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"Quadro FX Go1000\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"Quadro FX 1100\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"GeForce 7650 GS\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"GeForce 7600 LE\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"GeForce Go 7700\00", align 1
@.str.189 = private unnamed_addr constant [16 x i8] c"GeForce Go 7600\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"GeForce Go 7600 GT\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"Quadro FX 560M\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"Quadro FX 560\00", align 1
@.str.193 = private unnamed_addr constant [26 x i8] c"GeForce 6150SE nForce 430\00", align 1
@.str.194 = private unnamed_addr constant [24 x i8] c"GeForce 6100 nForce 405\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"GeForce 6100 nForce 400\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"GeForce 6100 nForce 420\00", align 1
@.str.197 = private unnamed_addr constant [27 x i8] c"GeForce 7025 / nForce 630a\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"GeForce 8600 GTS\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"GeForce 8600 GT\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"GeForce 8600 GS\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"GeForce 8400 GS\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"GeForce 9500M GS\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"GeForce 8300 GS\00", align 1
@.str.204 = private unnamed_addr constant [17 x i8] c"GeForce 8600M GT\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"GeForce 9650M GS\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"GeForce 8700M GT\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"Quadro FX 370\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"Quadro NVS 320M\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"Quadro FX 570M\00", align 1
@.str.210 = private unnamed_addr constant [16 x i8] c"Quadro FX 1600M\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"Quadro FX 570\00", align 1
@.str.212 = private unnamed_addr constant [15 x i8] c"Quadro FX 1700\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"GeForce GT 330\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"GeForce 8400 SE\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"GeForce 8500 GT\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"GeForce 8600M GS\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"GeForce 8400M GT\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"GeForce 8400M GS\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"GeForce 8400M G\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"Quadro NVS 140M\00", align 1
@.str.221 = private unnamed_addr constant [16 x i8] c"Quadro NVS 130M\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"Quadro NVS 135M\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"GeForce 9400 GT\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"Quadro FX 360M\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c"GeForce 9300M G\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"Quadro NVS 290\00", align 1
@.str.227 = private unnamed_addr constant [28 x i8] c"GeForce 7150M / nForce 630M\00", align 1
@.str.228 = private unnamed_addr constant [28 x i8] c"GeForce 7000M / nForce 610M\00", align 1
@.str.229 = private unnamed_addr constant [30 x i8] c"GeForce 7050 PV / nForce 630a\00", align 1
@.str.230 = private unnamed_addr constant [16 x i8] c"GeForce GTX 295\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"GeForce GTX 280\00", align 1
@.str.232 = private unnamed_addr constant [16 x i8] c"GeForce GTX 260\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"GeForce GTX 285\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"GeForce GTX 275\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"Tesla C1060\00", align 1
@nvkm_device_pci_10de_05e7 = internal constant [6 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1429, ptr @.str.574, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1679, ptr @.str.574, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1687, ptr @.str.575, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1812, ptr @.str.575, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1859, ptr @.str.575, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.236 = private unnamed_addr constant [19 x i8] c"Quadroplex 2200 D2\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c"Quadroplex 2200 S4\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"Quadro CX\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"Quadro FX 5800\00", align 1
@.str.240 = private unnamed_addr constant [15 x i8] c"Quadro FX 4800\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"Quadro FX 3800\00", align 1
@.str.242 = private unnamed_addr constant [21 x i8] c"GeForce 8800 GTS 512\00", align 1
@.str.243 = private unnamed_addr constant [16 x i8] c"GeForce 9800 GT\00", align 1
@.str.244 = private unnamed_addr constant [16 x i8] c"GeForce 8800 GT\00", align 1
@.str.245 = private unnamed_addr constant [15 x i8] c"GeForce GT 230\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"GeForce 9800 GX2\00", align 1
@.str.247 = private unnamed_addr constant [16 x i8] c"GeForce 8800 GS\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"GeForce GTS 240\00", align 1
@.str.249 = private unnamed_addr constant [18 x i8] c"GeForce 9800M GTX\00", align 1
@.str.250 = private unnamed_addr constant [18 x i8] c"GeForce 8800M GTS\00", align 1
@nvkm_device_pci_10de_0609 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 167, ptr @.str.247, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.251 = private unnamed_addr constant [17 x i8] c"GeForce GTX 280M\00", align 1
@.str.252 = private unnamed_addr constant [17 x i8] c"GeForce 9800M GT\00", align 1
@.str.253 = private unnamed_addr constant [18 x i8] c"GeForce 8800M GTX\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"GeForce GTX 285M\00", align 1
@.str.255 = private unnamed_addr constant [17 x i8] c"GeForce 9600 GSO\00", align 1
@.str.256 = private unnamed_addr constant [27 x i8] c"GeForce 9800 GTX/9800 GTX+\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"GeForce 9800 GTX+\00", align 1
@.str.258 = private unnamed_addr constant [16 x i8] c"GeForce GTS 250\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"GeForce GTX 260M\00", align 1
@.str.260 = private unnamed_addr constant [18 x i8] c"Quadro FX 4700 X2\00", align 1
@.str.261 = private unnamed_addr constant [15 x i8] c"Quadro FX 3700\00", align 1
@.str.262 = private unnamed_addr constant [14 x i8] c"Quadro VX 200\00", align 1
@.str.263 = private unnamed_addr constant [16 x i8] c"Quadro FX 3600M\00", align 1
@.str.264 = private unnamed_addr constant [16 x i8] c"Quadro FX 2800M\00", align 1
@.str.265 = private unnamed_addr constant [16 x i8] c"Quadro FX 3700M\00", align 1
@.str.266 = private unnamed_addr constant [16 x i8] c"Quadro FX 3800M\00", align 1
@.str.267 = private unnamed_addr constant [16 x i8] c"GeForce 9600 GT\00", align 1
@.str.268 = private unnamed_addr constant [16 x i8] c"GeForce 9600 GS\00", align 1
@.str.269 = private unnamed_addr constant [21 x i8] c"GeForce 9600 GSO 512\00", align 1
@.str.270 = private unnamed_addr constant [15 x i8] c"GeForce GT 130\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"GeForce GT 140\00", align 1
@.str.272 = private unnamed_addr constant [18 x i8] c"GeForce 9800M GTS\00", align 1
@.str.273 = private unnamed_addr constant [18 x i8] c"GeForce 9700M GTS\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"GeForce 9800M GS\00", align 1
@nvkm_device_pci_10de_062e = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 1541, ptr @.str.270, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.275 = private unnamed_addr constant [15 x i8] c"GeForce 9700 S\00", align 1
@.str.276 = private unnamed_addr constant [17 x i8] c"GeForce GTS 160M\00", align 1
@.str.277 = private unnamed_addr constant [17 x i8] c"GeForce GTS 150M\00", align 1
@.str.278 = private unnamed_addr constant [15 x i8] c"Quadro FX 1800\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"Quadro FX 2700M\00", align 1
@.str.280 = private unnamed_addr constant [16 x i8] c"GeForce 9500 GT\00", align 1
@.str.281 = private unnamed_addr constant [16 x i8] c"GeForce 9500 GS\00", align 1
@.str.282 = private unnamed_addr constant [15 x i8] c"GeForce GT 120\00", align 1
@.str.283 = private unnamed_addr constant [17 x i8] c"GeForce 9600M GT\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"GeForce 9600M GS\00", align 1
@nvkm_device_pci_10de_0649 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 8237, ptr @.str.291, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.285 = private unnamed_addr constant [17 x i8] c"GeForce 9700M GT\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"GeForce 9500M G\00", align 1
@.str.287 = private unnamed_addr constant [17 x i8] c"GeForce 9650M GT\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"GeForce G 110M\00", align 1
@.str.289 = private unnamed_addr constant [16 x i8] c"GeForce GT 130M\00", align 1
@nvkm_device_pci_10de_0652 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5421, i16 2128, ptr @.str.576, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.290 = private unnamed_addr constant [16 x i8] c"GeForce GT 120M\00", align 1
@.str.291 = private unnamed_addr constant [16 x i8] c"GeForce GT 220M\00", align 1
@nvkm_device_pci_10de_0654 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 5282, ptr @.str.359, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5330, ptr @.str.359, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_0655 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 1587, ptr @.str.282, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_0656 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 1683, ptr @.str.282, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.292 = private unnamed_addr constant [14 x i8] c"Quadro FX 380\00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"Quadro FX 580\00", align 1
@.str.294 = private unnamed_addr constant [16 x i8] c"Quadro FX 1700M\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"Quadro FX 770M\00", align 1
@.str.296 = private unnamed_addr constant [16 x i8] c"GeForce GTX 480\00", align 1
@.str.297 = private unnamed_addr constant [16 x i8] c"GeForce GTX 465\00", align 1
@.str.298 = private unnamed_addr constant [17 x i8] c"GeForce GTX 480M\00", align 1
@.str.299 = private unnamed_addr constant [16 x i8] c"GeForce GTX 470\00", align 1
@.str.300 = private unnamed_addr constant [20 x i8] c"Tesla C2050 / C2070\00", align 1
@nvkm_device_pci_10de_06d1 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1905, ptr @.str.577, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1906, ptr @.str.578, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.301 = private unnamed_addr constant [12 x i8] c"Tesla M2070\00", align 1
@nvkm_device_pci_10de_06d2 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2191, ptr @.str.579, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.302 = private unnamed_addr constant [12 x i8] c"Quadro 6000\00", align 1
@.str.303 = private unnamed_addr constant [12 x i8] c"Quadro 5000\00", align 1
@.str.304 = private unnamed_addr constant [13 x i8] c"Quadro 5000M\00", align 1
@.str.305 = private unnamed_addr constant [12 x i8] c"Quadro 4000\00", align 1
@.str.306 = private unnamed_addr constant [20 x i8] c"Tesla T20 Processor\00", align 1
@nvkm_device_pci_10de_06de = internal constant [9 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1907, ptr @.str.580, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2095, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2112, ptr @.str.579, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2114, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2118, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2150, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2311, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2334, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.307 = private unnamed_addr constant [14 x i8] c"Tesla M2070-Q\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"GeForce 9300 GE\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"GeForce 9300 GS\00", align 1
@.str.310 = private unnamed_addr constant [13 x i8] c"GeForce 8400\00", align 1
@.str.311 = private unnamed_addr constant [17 x i8] c"GeForce 9300M GS\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"GeForce G100\00", align 1
@.str.313 = private unnamed_addr constant [16 x i8] c"GeForce 9300 SE\00", align 1
@.str.314 = private unnamed_addr constant [17 x i8] c"GeForce 9200M GS\00", align 1
@nvkm_device_pci_10de_06e8 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 13835, ptr @.str.582, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.315 = private unnamed_addr constant [16 x i8] c"Quadro NVS 150M\00", align 1
@.str.316 = private unnamed_addr constant [16 x i8] c"Quadro NVS 160M\00", align 1
@.str.317 = private unnamed_addr constant [15 x i8] c"GeForce G 105M\00", align 1
@.str.318 = private unnamed_addr constant [15 x i8] c"GeForce G 103M\00", align 1
@.str.319 = private unnamed_addr constant [14 x i8] c"GeForce G105M\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"Quadro NVS 420\00", align 1
@.str.321 = private unnamed_addr constant [17 x i8] c"Quadro FX 370 LP\00", align 1
@nvkm_device_pci_10de_06f9 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1549, ptr @.str.583, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.322 = private unnamed_addr constant [15 x i8] c"Quadro NVS 450\00", align 1
@.str.323 = private unnamed_addr constant [15 x i8] c"Quadro FX 370M\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"Quadro NVS 295\00", align 1
@.str.325 = private unnamed_addr constant [18 x i8] c"HICx16 + Graphics\00", align 1
@nvkm_device_pci_10de_06ff = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1809, ptr @.str.584, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.326 = private unnamed_addr constant [27 x i8] c"GeForce 7150 / nForce 630i\00", align 1
@.str.327 = private unnamed_addr constant [27 x i8] c"GeForce 7100 / nForce 630i\00", align 1
@.str.328 = private unnamed_addr constant [27 x i8] c"GeForce 7050 / nForce 630i\00", align 1
@.str.329 = private unnamed_addr constant [27 x i8] c"GeForce 7050 / nForce 610i\00", align 1
@.str.330 = private unnamed_addr constant [27 x i8] c"GeForce 7050 / nForce 620i\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"GeForce 8200M\00", align 1
@.str.332 = private unnamed_addr constant [16 x i8] c"GeForce 9100M G\00", align 1
@.str.333 = private unnamed_addr constant [16 x i8] c"GeForce 8200M G\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"GeForce 9200\00", align 1
@.str.335 = private unnamed_addr constant [13 x i8] c"GeForce 9100\00", align 1
@.str.336 = private unnamed_addr constant [13 x i8] c"GeForce 8300\00", align 1
@.str.337 = private unnamed_addr constant [13 x i8] c"GeForce 8200\00", align 1
@.str.338 = private unnamed_addr constant [12 x i8] c"nForce 730a\00", align 1
@.str.339 = private unnamed_addr constant [21 x i8] c"nForce 980a/780a SLI\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"nForce 750a SLI\00", align 1
@.str.341 = private unnamed_addr constant [27 x i8] c"GeForce 8100 / nForce 720a\00", align 1
@.str.342 = private unnamed_addr constant [13 x i8] c"GeForce 9400\00", align 1
@.str.343 = private unnamed_addr constant [16 x i8] c"GeForce 9400M G\00", align 1
@.str.344 = private unnamed_addr constant [14 x i8] c"GeForce 9400M\00", align 1
@.str.345 = private unnamed_addr constant [13 x i8] c"GeForce 9300\00", align 1
@.str.346 = private unnamed_addr constant [4 x i8] c"ION\00", align 1
@nvkm_device_pci_10de_0866 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 177, ptr @.str.344, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.347 = private unnamed_addr constant [16 x i8] c"nForce 760i SLI\00", align 1
@.str.348 = private unnamed_addr constant [27 x i8] c"GeForce 9300 / nForce 730i\00", align 1
@.str.349 = private unnamed_addr constant [14 x i8] c"GeForce G102M\00", align 1
@nvkm_device_pci_10de_0872 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 7234, ptr @.str.585, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_0873 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 7250, ptr @.str.585, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.350 = private unnamed_addr constant [7 x i8] c"ION LE\00", align 1
@.str.351 = private unnamed_addr constant [13 x i8] c"GeForce 320M\00", align 1
@.str.352 = private unnamed_addr constant [15 x i8] c"GeForce GT 220\00", align 1
@.str.353 = private unnamed_addr constant [12 x i8] c"GeForce 315\00", align 1
@.str.354 = private unnamed_addr constant [12 x i8] c"GeForce 210\00", align 1
@.str.355 = private unnamed_addr constant [12 x i8] c"GeForce 405\00", align 1
@.str.356 = private unnamed_addr constant [16 x i8] c"GeForce GT 230M\00", align 1
@.str.357 = private unnamed_addr constant [16 x i8] c"GeForce GT 330M\00", align 1
@.str.358 = private unnamed_addr constant [10 x i8] c"NVS 5100M\00", align 1
@.str.359 = private unnamed_addr constant [16 x i8] c"GeForce GT 320M\00", align 1
@.str.360 = private unnamed_addr constant [15 x i8] c"GeForce GT 415\00", align 1
@.str.361 = private unnamed_addr constant [16 x i8] c"GeForce GT 240M\00", align 1
@.str.362 = private unnamed_addr constant [16 x i8] c"GeForce GT 325M\00", align 1
@.str.363 = private unnamed_addr constant [11 x i8] c"Quadro 400\00", align 1
@.str.364 = private unnamed_addr constant [15 x i8] c"Quadro FX 880M\00", align 1
@.str.365 = private unnamed_addr constant [13 x i8] c"GeForce G210\00", align 1
@.str.366 = private unnamed_addr constant [12 x i8] c"GeForce 205\00", align 1
@.str.367 = private unnamed_addr constant [12 x i8] c"GeForce 310\00", align 1
@.str.368 = private unnamed_addr constant [22 x i8] c"Second Generation ION\00", align 1
@.str.369 = private unnamed_addr constant [10 x i8] c"NVS 2100M\00", align 1
@.str.370 = private unnamed_addr constant [10 x i8] c"NVS 3100M\00", align 1
@.str.371 = private unnamed_addr constant [13 x i8] c"GeForce 305M\00", align 1
@nvkm_device_pci_10de_0a6e = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13831, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.372 = private unnamed_addr constant [13 x i8] c"GeForce 310M\00", align 1
@nvkm_device_pci_10de_0a70 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13829, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13847, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_0a73 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13831, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13840, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.373 = private unnamed_addr constant [14 x i8] c"GeForce G210M\00", align 1
@nvkm_device_pci_10de_0a74 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 -28614, ptr @.str.365, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_0a75 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13829, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.374 = private unnamed_addr constant [17 x i8] c"Quadro FX 380 LP\00", align 1
@.str.375 = private unnamed_addr constant [13 x i8] c"GeForce 315M\00", align 1
@nvkm_device_pci_10de_0a7a = internal constant [11 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5218, i16 -21935, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21928, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21391, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21374, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5698, i16 14720, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14672, ptr @.str.586, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14717, ptr @.str.586, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 -28492, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 7165, i16 3, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 7165, i16 -32762, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.376 = private unnamed_addr constant [15 x i8] c"Quadro FX 380M\00", align 1
@.str.377 = private unnamed_addr constant [15 x i8] c"GeForce GT 320\00", align 1
@.str.378 = private unnamed_addr constant [15 x i8] c"GeForce GT 240\00", align 1
@.str.379 = private unnamed_addr constant [15 x i8] c"GeForce GT 340\00", align 1
@.str.380 = private unnamed_addr constant [17 x i8] c"GeForce GTS 260M\00", align 1
@.str.381 = private unnamed_addr constant [17 x i8] c"GeForce GTS 250M\00", align 1
@.str.382 = private unnamed_addr constant [16 x i8] c"GeForce GT 335M\00", align 1
@.str.383 = private unnamed_addr constant [17 x i8] c"GeForce GTS 350M\00", align 1
@.str.384 = private unnamed_addr constant [17 x i8] c"GeForce GTS 360M\00", align 1
@.str.385 = private unnamed_addr constant [16 x i8] c"Quadro FX 1800M\00", align 1
@.str.386 = private unnamed_addr constant [15 x i8] c"GeForce GT 440\00", align 1
@.str.387 = private unnamed_addr constant [16 x i8] c"GeForce GTS 450\00", align 1
@.str.388 = private unnamed_addr constant [16 x i8] c"GeForce GT 555M\00", align 1
@.str.389 = private unnamed_addr constant [17 x i8] c"GeForce GTX 460M\00", align 1
@.str.390 = private unnamed_addr constant [16 x i8] c"GeForce GT 445M\00", align 1
@.str.391 = private unnamed_addr constant [16 x i8] c"GeForce GT 435M\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"GeForce GT 550M\00", align 1
@.str.393 = private unnamed_addr constant [12 x i8] c"Quadro 2000\00", align 1
@nvkm_device_pci_10de_0dd8 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2324, ptr @.str.587, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.394 = private unnamed_addr constant [13 x i8] c"Quadro 2000M\00", align 1
@.str.395 = private unnamed_addr constant [15 x i8] c"GeForce GT 430\00", align 1
@.str.396 = private unnamed_addr constant [15 x i8] c"GeForce GT 420\00", align 1
@.str.397 = private unnamed_addr constant [16 x i8] c"GeForce GT 635M\00", align 1
@.str.398 = private unnamed_addr constant [15 x i8] c"GeForce GT 520\00", align 1
@.str.399 = private unnamed_addr constant [15 x i8] c"GeForce GT 530\00", align 1
@.str.400 = private unnamed_addr constant [15 x i8] c"GeForce GT 610\00", align 1
@.str.401 = private unnamed_addr constant [16 x i8] c"GeForce GT 620M\00", align 1
@.str.402 = private unnamed_addr constant [16 x i8] c"GeForce GT 630M\00", align 1
@nvkm_device_pci_10de_0de9 = internal constant [10 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4133, i16 1682, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1829, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1832, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1835, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1838, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1875, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1876, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14711, ptr @.str.428, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8720, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.403 = private unnamed_addr constant [13 x i8] c"GeForce 610M\00", align 1
@nvkm_device_pci_10de_0dea = internal constant [6 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13914, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13915, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13918, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13920, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13932, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.404 = private unnamed_addr constant [16 x i8] c"GeForce GT 525M\00", align 1
@.str.405 = private unnamed_addr constant [16 x i8] c"GeForce GT 520M\00", align 1
@.str.406 = private unnamed_addr constant [16 x i8] c"GeForce GT 415M\00", align 1
@.str.407 = private unnamed_addr constant [10 x i8] c"NVS 5400M\00", align 1
@.str.408 = private unnamed_addr constant [16 x i8] c"GeForce GT 425M\00", align 1
@.str.409 = private unnamed_addr constant [16 x i8] c"GeForce GT 420M\00", align 1
@.str.410 = private unnamed_addr constant [16 x i8] c"GeForce GT 540M\00", align 1
@nvkm_device_pci_10de_0df4 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5421, i16 2386, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2387, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.411 = private unnamed_addr constant [11 x i8] c"Quadro 600\00", align 1
@.str.412 = private unnamed_addr constant [12 x i8] c"Quadro 500M\00", align 1
@.str.413 = private unnamed_addr constant [13 x i8] c"Quadro 1000M\00", align 1
@.str.414 = private unnamed_addr constant [10 x i8] c"NVS 5200M\00", align 1
@.str.415 = private unnamed_addr constant [16 x i8] c"GeForce GTX 460\00", align 1
@.str.416 = private unnamed_addr constant [19 x i8] c"GeForce GTX 460 SE\00", align 1
@.str.417 = private unnamed_addr constant [17 x i8] c"GeForce GTX 470M\00", align 1
@.str.418 = private unnamed_addr constant [17 x i8] c"GeForce GTX 485M\00", align 1
@.str.419 = private unnamed_addr constant [13 x i8] c"Quadro 3000M\00", align 1
@.str.420 = private unnamed_addr constant [13 x i8] c"Quadro 4000M\00", align 1
@.str.421 = private unnamed_addr constant [15 x i8] c"GeForce GT 630\00", align 1
@.str.422 = private unnamed_addr constant [15 x i8] c"GeForce GT 620\00", align 1
@.str.423 = private unnamed_addr constant [15 x i8] c"GeForce GT 730\00", align 1
@.str.424 = private unnamed_addr constant [15 x i8] c"GeForce GT 640\00", align 1
@.str.425 = private unnamed_addr constant [16 x i8] c"GeForce GTX 650\00", align 1
@.str.426 = private unnamed_addr constant [15 x i8] c"GeForce GT 740\00", align 1
@.str.427 = private unnamed_addr constant [16 x i8] c"GeForce GT 755M\00", align 1
@.str.428 = private unnamed_addr constant [19 x i8] c"GeForce GT 640M LE\00", align 1
@.str.429 = private unnamed_addr constant [16 x i8] c"GeForce GT 650M\00", align 1
@.str.430 = private unnamed_addr constant [16 x i8] c"GeForce GT 640M\00", align 1
@nvkm_device_pci_10de_0fd2 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4136, i16 1429, ptr @.str.428, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1458, ptr @.str.428, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.431 = private unnamed_addr constant [17 x i8] c"GeForce GTX 660M\00", align 1
@.str.432 = private unnamed_addr constant [16 x i8] c"GeForce GT 645M\00", align 1
@.str.433 = private unnamed_addr constant [16 x i8] c"GeForce GT 740M\00", align 1
@.str.434 = private unnamed_addr constant [16 x i8] c"GeForce GT 730M\00", align 1
@.str.435 = private unnamed_addr constant [16 x i8] c"GeForce GT 745M\00", align 1
@nvkm_device_pci_10de_0fe3 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11030, ptr @.str.589, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13941, ptr @.str.589, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.436 = private unnamed_addr constant [16 x i8] c"GeForce GT 750M\00", align 1
@.str.437 = private unnamed_addr constant [13 x i8] c"GeForce 710A\00", align 1
@.str.438 = private unnamed_addr constant [10 x i8] c"GRID K340\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"GRID K1\00", align 1
@.str.440 = private unnamed_addr constant [12 x i8] c"Quadro K420\00", align 1
@.str.441 = private unnamed_addr constant [14 x i8] c"Quadro K1100M\00", align 1
@.str.442 = private unnamed_addr constant [13 x i8] c"Quadro K500M\00", align 1
@.str.443 = private unnamed_addr constant [14 x i8] c"Quadro K2000D\00", align 1
@.str.444 = private unnamed_addr constant [12 x i8] c"Quadro K600\00", align 1
@.str.445 = private unnamed_addr constant [14 x i8] c"Quadro K2000M\00", align 1
@.str.446 = private unnamed_addr constant [14 x i8] c"Quadro K1000M\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"NVS 510\00", align 1
@.str.448 = private unnamed_addr constant [13 x i8] c"Quadro K2000\00", align 1
@.str.449 = private unnamed_addr constant [11 x i8] c"Quadro 410\00", align 1
@.str.450 = private unnamed_addr constant [20 x i8] c"GeForce GTX TITAN Z\00", align 1
@.str.451 = private unnamed_addr constant [16 x i8] c"GeForce GTX 780\00", align 1
@.str.452 = private unnamed_addr constant [18 x i8] c"GeForce GTX TITAN\00", align 1
@.str.453 = private unnamed_addr constant [19 x i8] c"GeForce GTX 780 Ti\00", align 1
@.str.454 = private unnamed_addr constant [24 x i8] c"GeForce GTX TITAN Black\00", align 1
@.str.455 = private unnamed_addr constant [12 x i8] c"Tesla K20Xm\00", align 1
@.str.456 = private unnamed_addr constant [11 x i8] c"Tesla K20c\00", align 1
@.str.457 = private unnamed_addr constant [11 x i8] c"Tesla K40m\00", align 1
@.str.458 = private unnamed_addr constant [11 x i8] c"Tesla K40c\00", align 1
@.str.459 = private unnamed_addr constant [11 x i8] c"Tesla K20s\00", align 1
@.str.460 = private unnamed_addr constant [12 x i8] c"Tesla K40st\00", align 1
@.str.461 = private unnamed_addr constant [11 x i8] c"Tesla K20m\00", align 1
@.str.462 = private unnamed_addr constant [11 x i8] c"Tesla K40s\00", align 1
@.str.463 = private unnamed_addr constant [11 x i8] c"Tesla K40t\00", align 1
@.str.464 = private unnamed_addr constant [10 x i8] c"Tesla K80\00", align 1
@.str.465 = private unnamed_addr constant [13 x i8] c"Quadro K6000\00", align 1
@.str.466 = private unnamed_addr constant [13 x i8] c"Quadro K5200\00", align 1
@.str.467 = private unnamed_addr constant [12 x i8] c"GeForce 510\00", align 1
@.str.468 = private unnamed_addr constant [12 x i8] c"GeForce 605\00", align 1
@.str.469 = private unnamed_addr constant [21 x i8] c"GeForce GT 625 (OEM)\00", align 1
@nvkm_device_pci_10de_104b = internal constant [6 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 -31668, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31637, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -19056, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5963, i16 1573, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5963, i16 -23003, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.470 = private unnamed_addr constant [15 x i8] c"GeForce GT 705\00", align 1
@.str.471 = private unnamed_addr constant [17 x i8] c"GeForce GT 520MX\00", align 1
@.str.472 = private unnamed_addr constant [13 x i8] c"GeForce 410M\00", align 1
@.str.473 = private unnamed_addr constant [10 x i8] c"NVS 4200M\00", align 1
@nvkm_device_pci_10de_1058 = internal constant [9 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 10993, ptr @.str.591, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13954, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13970, ptr @.str.593, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13973, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13992, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13996, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13997, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 28762, i16 13954, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.474 = private unnamed_addr constant [13 x i8] c"GeForce 705M\00", align 1
@nvkm_device_pci_10de_105b = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11003, ptr @.str.593, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13985, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.475 = private unnamed_addr constant [8 x i8] c"NVS 315\00", align 1
@.str.476 = private unnamed_addr constant [8 x i8] c"NVS 310\00", align 1
@.str.477 = private unnamed_addr constant [16 x i8] c"GeForce GTX 580\00", align 1
@.str.478 = private unnamed_addr constant [16 x i8] c"GeForce GTX 570\00", align 1
@.str.479 = private unnamed_addr constant [19 x i8] c"GeForce GTX 560 Ti\00", align 1
@.str.480 = private unnamed_addr constant [16 x i8] c"GeForce GTX 560\00", align 1
@.str.481 = private unnamed_addr constant [16 x i8] c"GeForce GTX 590\00", align 1
@.str.482 = private unnamed_addr constant [12 x i8] c"Tesla M2090\00", align 1
@nvkm_device_pci_10de_1091 = internal constant [5 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2190, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2193, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2420, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2445, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.483 = private unnamed_addr constant [12 x i8] c"Tesla M2075\00", align 1
@.str.484 = private unnamed_addr constant [12 x i8] c"Tesla C2075\00", align 1
@nvkm_device_pci_10de_1096 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2321, ptr @.str.577, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.485 = private unnamed_addr constant [13 x i8] c"Quadro 5010M\00", align 1
@.str.486 = private unnamed_addr constant [12 x i8] c"Quadro 7000\00", align 1
@.str.487 = private unnamed_addr constant [15 x i8] c"GeForce 8400GS\00", align 1
@.str.488 = private unnamed_addr constant [8 x i8] c"NVS 300\00", align 1
@nvkm_device_pci_10de_1140 = internal constant [342 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4121, i16 -26209, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1536, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1542, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1610, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1612, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1658, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1664, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1670, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1673, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1675, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1677, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1678, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1681, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1682, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1684, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1794, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1817, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1829, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1832, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1835, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1838, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1842, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1891, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1907, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1908, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1910, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1914, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1915, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1916, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1917, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1918, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1919, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1921, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1944, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1945, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1947, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1948, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2055, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2081, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2083, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2096, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2099, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2103, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2110, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2113, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2131, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2132, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2133, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2134, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2135, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2136, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2147, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2152, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2153, ptr @.str.596, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2163, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2168, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2171, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2175, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2177, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2181, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2186, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2203, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2337, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2350, ptr @.str.596, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2351, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2354, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2362, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2364, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2367, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2369, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2373, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2388, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2405, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1357, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1358, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1364, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1367, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1378, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1381, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1384, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1424, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1426, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1428, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1429, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1442, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1457, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1459, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1498, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1502, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1504, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1512, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1524, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1551, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1583, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1614, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1618, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1619, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1621, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1630, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1634, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1677, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1709, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1710, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1711, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1712, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1728, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1729, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6383, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6393, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6395, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6397, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6399, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8586, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8635, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8636, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8718, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8720, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8722, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8724, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8728, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8795, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8797, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8813, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8815, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8914, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8921, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 9013, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 9015, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 10991, ptr @.str.598, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11001, ptr @.str.437, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4317, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4333, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4605, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4685, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4717, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4893, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5117, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5319, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5383, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5549, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5613, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5645, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5693, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5725, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5741, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5837, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5853, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5901, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5997, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 6029, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 6045, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8498, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8502, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8634, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8698, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8714, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8730, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8762, ptr @.str.599, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8778, ptr @.str.599, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8826, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8842, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8954, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9002, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9018, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9050, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9066, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9098, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31339, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31254, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31253, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31252, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31250, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31245, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31218, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31206, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31205, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31192, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31165, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31156, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31150, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31136, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31135, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4187, i16 3500, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4187, i16 3501, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4187, i16 3827, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4303, i16 6133, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1535, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1534, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1533, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1531, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1519, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1517, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1512, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1511, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1503, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1501, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1494, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1486, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1485, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1482, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1480, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1470, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1469, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1467, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1465, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1463, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1448, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1447, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1400, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1399, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -20334, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16171, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16169, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16158, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16157, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16156, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16115, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14766, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14583, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14575, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14538, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14537, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14523, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14512, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 4280, ptr @.str.599, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 4329, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 4374, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21965, ptr @.str.600, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21854, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21853, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21326, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21311, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20895, ptr @.str.600, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20891, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20886, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20879, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5312, i16 131, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2342, ptr @.str.601, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2434, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2435, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4101, ptr @.str.602, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4114, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4121, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4144, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4181, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4199, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4242, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 8704, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 8723, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 8736, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12444, ptr @.str.598, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12468, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12471, ptr @.str.604, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12516, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13851, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13852, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13853, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13910, ptr @.str.605, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13914, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13918, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13921, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13932, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13957, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13958, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13959, ptr @.str.593, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13974, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13979, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13980, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13981, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13982, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13990, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13991, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13993, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13999, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14000, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14006, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14336, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14337, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14338, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14339, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14340, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14342, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14344, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14349, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14350, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14351, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14353, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14354, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14355, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14358, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14359, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14360, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14362, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14364, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14365, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14593, ptr @.str.403, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14594, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14595, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14596, ptr @.str.607, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14597, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14599, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14608, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14610, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14611, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14613, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14723, ptr @.str.403, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20481, ptr @.str.403, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20483, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20485, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20493, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20500, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20503, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20505, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20506, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20511, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20517, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20519, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20522, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20523, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20525, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20526, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20527, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20528, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20529, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20530, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20531, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20542, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20543, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20544, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 375, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 384, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 400, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 402, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 548, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8413, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8415, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8462, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8706, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 -28457, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 -28451, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6992, i16 21808, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.489 = private unnamed_addr constant [16 x i8] c"GeForce GTX 680\00", align 1
@.str.490 = private unnamed_addr constant [19 x i8] c"GeForce GTX 660 Ti\00", align 1
@.str.491 = private unnamed_addr constant [16 x i8] c"GeForce GTX 770\00", align 1
@.str.492 = private unnamed_addr constant [16 x i8] c"GeForce GTX 660\00", align 1
@nvkm_device_pci_10de_1185 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 4207, ptr @.str.493, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.493 = private unnamed_addr constant [16 x i8] c"GeForce GTX 760\00", align 1
@.str.494 = private unnamed_addr constant [16 x i8] c"GeForce GTX 690\00", align 1
@.str.495 = private unnamed_addr constant [16 x i8] c"GeForce GTX 670\00", align 1
@nvkm_device_pci_10de_1189 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 4212, ptr @.str.499, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.496 = private unnamed_addr constant [10 x i8] c"GRID K520\00", align 1
@.str.497 = private unnamed_addr constant [26 x i8] c"GeForce GTX 760 (192-bit)\00", align 1
@.str.498 = private unnamed_addr constant [10 x i8] c"Tesla K10\00", align 1
@.str.499 = private unnamed_addr constant [23 x i8] c"GeForce GTX 760 Ti OEM\00", align 1
@.str.500 = private unnamed_addr constant [9 x i8] c"Tesla K8\00", align 1
@.str.501 = private unnamed_addr constant [17 x i8] c"GeForce GTX 880M\00", align 1
@.str.502 = private unnamed_addr constant [17 x i8] c"GeForce GTX 870M\00", align 1
@nvkm_device_pci_10de_1199 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5208, i16 -12287, ptr @.str.493, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.503 = private unnamed_addr constant [17 x i8] c"GeForce GTX 860M\00", align 1
@.str.504 = private unnamed_addr constant [17 x i8] c"GeForce GTX 775M\00", align 1
@.str.505 = private unnamed_addr constant [17 x i8] c"GeForce GTX 780M\00", align 1
@.str.506 = private unnamed_addr constant [17 x i8] c"GeForce GTX 680M\00", align 1
@.str.507 = private unnamed_addr constant [18 x i8] c"GeForce GTX 670MX\00", align 1
@.str.508 = private unnamed_addr constant [18 x i8] c"GeForce GTX 675MX\00", align 1
@.str.509 = private unnamed_addr constant [18 x i8] c"GeForce GTX 680MX\00", align 1
@.str.510 = private unnamed_addr constant [13 x i8] c"Quadro K4200\00", align 1
@.str.511 = private unnamed_addr constant [14 x i8] c"Quadro K3100M\00", align 1
@.str.512 = private unnamed_addr constant [14 x i8] c"Quadro K4100M\00", align 1
@.str.513 = private unnamed_addr constant [14 x i8] c"Quadro K5100M\00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"Quadro K5000\00", align 1
@.str.515 = private unnamed_addr constant [14 x i8] c"Quadro K5000M\00", align 1
@.str.516 = private unnamed_addr constant [14 x i8] c"Quadro K4000M\00", align 1
@.str.517 = private unnamed_addr constant [14 x i8] c"Quadro K3000M\00", align 1
@.str.518 = private unnamed_addr constant [8 x i8] c"GRID K2\00", align 1
@.str.519 = private unnamed_addr constant [25 x i8] c"GeForce GTX 650 Ti BOOST\00", align 1
@.str.520 = private unnamed_addr constant [19 x i8] c"GeForce GTX 650 Ti\00", align 1
@.str.521 = private unnamed_addr constant [16 x i8] c"GeForce GTX 645\00", align 1
@.str.522 = private unnamed_addr constant [17 x i8] c"GeForce GTX 770M\00", align 1
@.str.523 = private unnamed_addr constant [17 x i8] c"GeForce GTX 765M\00", align 1
@.str.524 = private unnamed_addr constant [17 x i8] c"GeForce GTX 760M\00", align 1
@nvkm_device_pci_10de_11e3 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13955, ptr @.str.608, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.525 = private unnamed_addr constant [13 x i8] c"Quadro K4000\00", align 1
@.str.526 = private unnamed_addr constant [14 x i8] c"Quadro K2100M\00", align 1
@.str.527 = private unnamed_addr constant [22 x i8] c"GeForce GTX 460 SE v2\00", align 1
@.str.528 = private unnamed_addr constant [19 x i8] c"GeForce GTX 460 v2\00", align 1
@.str.529 = private unnamed_addr constant [16 x i8] c"GeForce GTX 555\00", align 1
@.str.530 = private unnamed_addr constant [15 x i8] c"GeForce GT 645\00", align 1
@.str.531 = private unnamed_addr constant [19 x i8] c"GeForce GTX 560 SE\00", align 1
@.str.532 = private unnamed_addr constant [17 x i8] c"GeForce GTX 570M\00", align 1
@.str.533 = private unnamed_addr constant [17 x i8] c"GeForce GTX 580M\00", align 1
@.str.534 = private unnamed_addr constant [17 x i8] c"GeForce GTX 675M\00", align 1
@.str.535 = private unnamed_addr constant [17 x i8] c"GeForce GTX 670M\00", align 1
@.str.536 = private unnamed_addr constant [15 x i8] c"GeForce GT 545\00", align 1
@.str.537 = private unnamed_addr constant [19 x i8] c"GeForce GTX 550 Ti\00", align 1
@nvkm_device_pci_10de_1247 = internal constant [4 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 8490, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8491, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8492, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_124d = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5218, i16 4300, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.538 = private unnamed_addr constant [17 x i8] c"GeForce GTX 560M\00", align 1
@.str.539 = private unnamed_addr constant [15 x i8] c"GeForce GT 635\00", align 1
@.str.540 = private unnamed_addr constant [15 x i8] c"GeForce GT 710\00", align 1
@.str.541 = private unnamed_addr constant [15 x i8] c"GeForce GT 720\00", align 1
@nvkm_device_pci_10de_1290 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11002, ptr @.str.609, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.542 = private unnamed_addr constant [16 x i8] c"GeForce GT 735M\00", align 1
@nvkm_device_pci_10de_1292 = internal constant [4 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13941, ptr @.str.610, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13948, ptr @.str.610, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13956, ptr @.str.610, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.543 = private unnamed_addr constant [13 x i8] c"GeForce 710M\00", align 1
@nvkm_device_pci_10de_1295 = internal constant [5 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11021, ptr @.str.437, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11023, ptr @.str.437, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11040, ptr @.str.611, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11041, ptr @.str.611, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.544 = private unnamed_addr constant [13 x i8] c"GeForce 825M\00", align 1
@.str.545 = private unnamed_addr constant [16 x i8] c"GeForce GT 720M\00", align 1
@.str.546 = private unnamed_addr constant [13 x i8] c"GeForce 920M\00", align 1
@nvkm_device_pci_10de_1299 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13979, ptr @.str.612, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.547 = private unnamed_addr constant [13 x i8] c"GeForce 910M\00", align 1
@.str.548 = private unnamed_addr constant [13 x i8] c"Quadro K610M\00", align 1
@.str.549 = private unnamed_addr constant [13 x i8] c"Quadro K510M\00", align 1
@.str.550 = private unnamed_addr constant [13 x i8] c"GeForce 830M\00", align 1
@nvkm_device_pci_10de_1340 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11051, ptr @.str.613, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.551 = private unnamed_addr constant [13 x i8] c"GeForce 840M\00", align 1
@nvkm_device_pci_10de_1341 = internal constant [5 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13975, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13977, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13980, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13999, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.552 = private unnamed_addr constant [13 x i8] c"GeForce 845M\00", align 1
@.str.553 = private unnamed_addr constant [13 x i8] c"GeForce 930M\00", align 1
@nvkm_device_pci_10de_1346 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 12474, ptr @.str.615, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13868, ptr @.str.615, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.554 = private unnamed_addr constant [13 x i8] c"GeForce 940M\00", align 1
@nvkm_device_pci_10de_1347 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 14009, ptr @.str.616, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14010, ptr @.str.616, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_137a = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 8741, ptr @.str.617, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_137d = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13977, ptr @.str.616, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.555 = private unnamed_addr constant [19 x i8] c"GeForce GTX 750 Ti\00", align 1
@.str.556 = private unnamed_addr constant [16 x i8] c"GeForce GTX 750\00", align 1
@.str.557 = private unnamed_addr constant [16 x i8] c"GeForce GTX 745\00", align 1
@.str.558 = private unnamed_addr constant [17 x i8] c"GeForce GTX 850M\00", align 1
@nvkm_device_pci_10de_1391 = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13975, ptr @.str.618, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@nvkm_device_pci_10de_1392 = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4136, i16 1642, ptr @.str.619, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31202, ptr @.str.555, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.559 = private unnamed_addr constant [17 x i8] c"GeForce GTX 950M\00", align 1
@nvkm_device_pci_10de_139a = internal constant [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 14009, ptr @.str.620, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.560 = private unnamed_addr constant [17 x i8] c"GeForce GTX 960M\00", align 1
@nvkm_device_pci_10de_139b = internal constant [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4136, i16 1699, ptr @.str.503, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6618, i16 -15800, ptr @.str.555, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], align 4
@.str.561 = private unnamed_addr constant [14 x i8] c"Quadro K2200M\00", align 1
@.str.562 = private unnamed_addr constant [13 x i8] c"Quadro K2200\00", align 1
@.str.563 = private unnamed_addr constant [12 x i8] c"Quadro K620\00", align 1
@.str.564 = private unnamed_addr constant [13 x i8] c"Quadro K1200\00", align 1
@.str.565 = private unnamed_addr constant [16 x i8] c"GeForce GTX 980\00", align 1
@.str.566 = private unnamed_addr constant [16 x i8] c"GeForce GTX 970\00", align 1
@.str.567 = private unnamed_addr constant [17 x i8] c"GeForce GTX 980M\00", align 1
@.str.568 = private unnamed_addr constant [17 x i8] c"GeForce GTX 970M\00", align 1
@.str.569 = private unnamed_addr constant [17 x i8] c"GeForce GTX 965M\00", align 1
@.str.570 = private unnamed_addr constant [16 x i8] c"GeForce GTX 960\00", align 1
@.str.571 = private unnamed_addr constant [20 x i8] c"GeForce GTX TITAN X\00", align 1
@.str.572 = private unnamed_addr constant [19 x i8] c"GeForce GTX 980 Ti\00", align 1
@.str.573 = private unnamed_addr constant [13 x i8] c"Quadro M6000\00", align 1
@.str.574 = private unnamed_addr constant [20 x i8] c"Tesla T10 Processor\00", align 1
@.str.575 = private unnamed_addr constant [12 x i8] c"Tesla M1060\00", align 1
@.str.576 = private unnamed_addr constant [19 x i8] c"GeForce GT 240M LE\00", align 1
@.str.577 = private unnamed_addr constant [12 x i8] c"Tesla C2050\00", align 1
@.str.578 = private unnamed_addr constant [12 x i8] c"Tesla C2070\00", align 1
@.str.579 = private unnamed_addr constant [12 x i8] c"Tesla X2070\00", align 1
@.str.580 = private unnamed_addr constant [12 x i8] c"Tesla S2050\00", align 1
@.str.581 = private unnamed_addr constant [12 x i8] c"Tesla M2050\00", align 1
@.str.582 = private unnamed_addr constant [17 x i8] c"GeForce 9200M GE\00", align 1
@.str.583 = private unnamed_addr constant [26 x i8] c"Quadro FX 370 Low Profile\00", align 1
@.str.584 = private unnamed_addr constant [17 x i8] c"HICx8 + Graphics\00", align 1
@.str.585 = private unnamed_addr constant [14 x i8] c"GeForce G205M\00", align 1
@.str.586 = private unnamed_addr constant [13 x i8] c"GeForce 405M\00", align 1
@.str.587 = private unnamed_addr constant [13 x i8] c"Quadro 2000D\00", align 1
@.str.588 = private unnamed_addr constant [12 x i8] c"GeForce 615\00", align 1
@.str.589 = private unnamed_addr constant [16 x i8] c"GeForce GT 745A\00", align 1
@.str.590 = private unnamed_addr constant [15 x i8] c"GeForce GT 625\00", align 1
@.str.591 = private unnamed_addr constant [12 x i8] c"GeForce 610\00", align 1
@.str.592 = private unnamed_addr constant [13 x i8] c"GeForce 800A\00", align 1
@.str.593 = private unnamed_addr constant [13 x i8] c"GeForce 705A\00", align 1
@.str.594 = private unnamed_addr constant [12 x i8] c"Tesla X2090\00", align 1
@.str.595 = private unnamed_addr constant [13 x i8] c"GeForce 820M\00", align 1
@.str.596 = private unnamed_addr constant [13 x i8] c"GeForce 810M\00", align 1
@.str.597 = private unnamed_addr constant [15 x i8] c"GeForce GT625M\00", align 1
@.str.598 = private unnamed_addr constant [16 x i8] c"GeForce GT 720A\00", align 1
@.str.599 = private unnamed_addr constant [16 x i8] c"GeForce GT 710M\00", align 1
@.str.600 = private unnamed_addr constant [13 x i8] c"GeForce 720M\00", align 1
@.str.601 = private unnamed_addr constant [13 x i8] c"GeForce 620M\00", align 1
@.str.602 = private unnamed_addr constant [15 x i8] c"GeForce GT820M\00", align 1
@.str.603 = private unnamed_addr constant [13 x i8] c"GeForce 820A\00", align 1
@.str.604 = private unnamed_addr constant [13 x i8] c"GeForce 720A\00", align 1
@.str.605 = private unnamed_addr constant [15 x i8] c"GeForce GT620M\00", align 1
@.str.606 = private unnamed_addr constant [13 x i8] c"GeForce 800M\00", align 1
@.str.607 = private unnamed_addr constant [16 x i8] c"GeForce GT 625M\00", align 1
@.str.608 = private unnamed_addr constant [17 x i8] c"GeForce GTX 760A\00", align 1
@.str.609 = private unnamed_addr constant [13 x i8] c"GeForce 730A\00", align 1
@.str.610 = private unnamed_addr constant [16 x i8] c"GeForce GT 740A\00", align 1
@.str.611 = private unnamed_addr constant [13 x i8] c"GeForce 810A\00", align 1
@.str.612 = private unnamed_addr constant [13 x i8] c"GeForce 920A\00", align 1
@.str.613 = private unnamed_addr constant [13 x i8] c"GeForce 830A\00", align 1
@.str.614 = private unnamed_addr constant [13 x i8] c"GeForce 840A\00", align 1
@.str.615 = private unnamed_addr constant [13 x i8] c"GeForce 930A\00", align 1
@.str.616 = private unnamed_addr constant [13 x i8] c"GeForce 940A\00", align 1
@.str.617 = private unnamed_addr constant [13 x i8] c"Quadro K620M\00", align 1
@.str.618 = private unnamed_addr constant [17 x i8] c"GeForce GTX 850A\00", align 1
@.str.619 = private unnamed_addr constant [12 x i8] c"GeForce GPU\00", align 1
@.str.620 = private unnamed_addr constant [17 x i8] c"GeForce GTX 950A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_pci_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i64 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = tail call i32 @pci_enable_device(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %137

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 4318
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  br label %16

16:                                               ; preds = %54, %14
  %17 = phi ptr [ @nvkm_device_pci_10de, %14 ], [ %55, %54 ]
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = load i16, ptr %15, align 2
  %22 = icmp eq i16 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvkm_device_pci_device, ptr %17, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  br label %30

30:                                               ; preds = %42, %27
  %31 = phi ptr [ %25, %27 ], [ %43, %42 ]
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %28, align 4
  %36 = icmp eq i16 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.nvkm_device_pci_vendor, ptr %31, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = load i16, ptr %29, align 2
  %41 = icmp eq i16 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %34
  %43 = getelementptr %struct.nvkm_device_pci_vendor, ptr %31, i32 1
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %30

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.nvkm_device_pci_vendor, ptr %31, i32 0, i32 3
  %47 = getelementptr inbounds %struct.nvkm_device_pci_vendor, ptr %31, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45, %42, %30, %23
  %51 = phi ptr [ %46, %45 ], [ null, %23 ], [ null, %42 ], [ null, %30 ]
  %52 = getelementptr inbounds %struct.nvkm_device_pci_device, ptr %17, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  br label %57

54:                                               ; preds = %20
  %55 = getelementptr %struct.nvkm_device_pci_device, ptr %17, i32 1
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %16

57:                                               ; preds = %54, %50, %45, %16, %10
  %58 = phi ptr [ %46, %45 ], [ %51, %50 ], [ null, %10 ], [ null, %54 ], [ null, %16 ]
  %59 = phi ptr [ %48, %45 ], [ %53, %50 ], [ null, %10 ], [ null, %54 ], [ null, %16 ]
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 432) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  tail call void @pci_disable_device(ptr noundef %0) #5
  br label %137

64:                                               ; preds = %57
  store ptr %61, ptr %6, align 4
  %65 = getelementptr inbounds %struct.nvkm_device_pci, ptr %61, i32 0, i32 1
  store ptr %0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %67 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %68 = load i8, ptr %67, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 2) #5
  %72 = icmp ne i8 %71, 0
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi i32 [ %73, %70 ], [ 2, %64 ]
  %76 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.pci_bus, ptr %77, i32 0, i32 16
  %79 = load i32, ptr %78, align 8
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = getelementptr inbounds %struct.pci_bus, ptr %77, i32 0, i32 12
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = zext i32 %85 to i64
  %87 = or i64 %81, %86
  %88 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 %89, 5
  %91 = and i32 %90, 7936
  %92 = zext i32 %91 to i64
  %93 = and i32 %89, 7
  %94 = zext i32 %93 to i64
  %95 = or i64 %87, %94
  %96 = or i64 %95, %92
  %97 = tail call i32 @nvkm_device_ctor(ptr noundef nonnull @nvkm_device_pci_func, ptr noundef %58, ptr noundef %66, i32 noundef %75, i64 noundef %96, ptr noundef %59, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i64 noundef %5, ptr noundef nonnull %61) #5
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %74
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 35
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 20
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_pci, ptr %105, i32 0, i32 4
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.nvkm_mmu, ptr %101, i32 0, i32 2
  %111 = load i8, ptr %110, align 8
  %112 = zext i8 %111 to i32
  %113 = icmp eq i8 %111, 64
  br i1 %113, label %121, label %114

114:                                              ; preds = %109, %103, %99
  %115 = phi i32 [ %112, %109 ], [ 32, %103 ], [ 32, %99 ]
  %116 = zext i32 %115 to i64
  %117 = shl nsw i64 -1, %116
  %118 = xor i64 %117, -1
  %119 = tail call i32 @dma_set_mask(ptr noundef %66, i64 noundef %118) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %127

121:                                              ; preds = %109
  %122 = tail call i32 @dma_set_mask(ptr noundef %66, i64 noundef -1) #5
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121, %114
  %125 = phi i64 [ -1, %121 ], [ %118, %114 ]
  %126 = tail call i32 @dma_set_coherent_mask(ptr noundef %66, i64 noundef %125) #5
  br label %137

127:                                              ; preds = %114
  %128 = icmp eq i32 %115, 32
  br i1 %128, label %137, label %129

129:                                              ; preds = %127, %121
  %130 = tail call i32 @dma_set_mask(ptr noundef %66, i64 noundef 4294967295) #5
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = tail call i32 @dma_set_coherent_mask(ptr noundef %66, i64 noundef 4294967295) #5
  br label %134

134:                                              ; preds = %132, %129
  %135 = load ptr, ptr %100, align 8
  %136 = getelementptr inbounds %struct.nvkm_mmu, ptr %135, i32 0, i32 2
  store i8 32, ptr %136, align 8
  br label %137

137:                                              ; preds = %134, %127, %124, %74, %63, %7
  %138 = phi i32 [ -12, %63 ], [ %8, %7 ], [ %97, %74 ], [ 0, %134 ], [ 0, %127 ], [ 0, %124 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_device_pci(ptr noundef readnone returned %0) #3 {
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_device_pci_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  tail call void @pci_disable_device(ptr noundef %3) #5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_device_pci_preinit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @pci_enable_device(ptr noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8
  tail call void @pci_set_master(ptr noundef %11) #5
  store i8 0, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = phi i32 [ 0, %10 ], [ 0, %1 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_device_pci_fini(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %7

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  tail call void @pci_disable_device(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 2
  store i8 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_device_pci_resource_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %1
  %6 = load i32, ptr %5, align 8
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_device_pci_resource_size(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nvkm_device_pci, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %1
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %6, 1
  %12 = sub i32 %11, %10
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
