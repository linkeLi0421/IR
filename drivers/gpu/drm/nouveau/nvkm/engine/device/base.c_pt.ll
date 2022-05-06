; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/device/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device_chip = type { ptr, %struct.anon.71, %struct.anon.74, %struct.anon.76, %struct.anon.77, %struct.anon.78, %struct.anon.79, %struct.anon.80, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.101, %struct.anon.102, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.117, %struct.anon.119, %struct.anon.120, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128, %struct.anon.129, %struct.anon.130, %struct.anon.132, %struct.anon.133, %struct.anon.134, %struct.anon.135, %struct.anon.136, %struct.anon.137, %struct.anon.138, %struct.anon.139, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.71 = type { i32, ptr }
%struct.anon.74 = type { i32, ptr }
%struct.anon.76 = type { i32, ptr }
%struct.anon.77 = type { i32, ptr }
%struct.anon.78 = type { i32, ptr }
%struct.anon.79 = type { i32, ptr }
%struct.anon.80 = type { i32, ptr }
%struct.anon.81 = type { i32, ptr }
%struct.anon.82 = type { i32, ptr }
%struct.anon.83 = type { i32, ptr }
%struct.anon.84 = type { i32, ptr }
%struct.anon.85 = type { i32, ptr }
%struct.anon.86 = type { i32, ptr }
%struct.anon.87 = type { i32, ptr }
%struct.anon.101 = type { i32, ptr }
%struct.anon.102 = type { i32, ptr }
%struct.anon.106 = type { i32, ptr }
%struct.anon.107 = type { i32, ptr }
%struct.anon.108 = type { i32, ptr }
%struct.anon.109 = type { i32, ptr }
%struct.anon.117 = type { i32, ptr }
%struct.anon.119 = type { i32, ptr }
%struct.anon.120 = type { i32, ptr }
%struct.anon.123 = type { i32, ptr }
%struct.anon.124 = type { i32, ptr }
%struct.anon.125 = type { i32, ptr }
%struct.anon.126 = type { i32, ptr }
%struct.anon.127 = type { i32, ptr }
%struct.anon.128 = type { i32, ptr }
%struct.anon.129 = type { i32, ptr }
%struct.anon.130 = type { i32, ptr }
%struct.anon.132 = type { i32, ptr }
%struct.anon.133 = type { i32, ptr }
%struct.anon.134 = type { i32, ptr }
%struct.anon.135 = type { i32, ptr }
%struct.anon.136 = type { i32, ptr }
%struct.anon.137 = type { i32, ptr }
%struct.anon.138 = type { i32, ptr }
%struct.anon.139 = type { i32, ptr }
%struct.anon.140 = type { i32, ptr }
%struct.anon.141 = type { i32, ptr }
%struct.anon.142 = type { i32, ptr }
%struct.anon.143 = type { i32, ptr }
%struct.anon.144 = type { i32, ptr }
%struct.anon.145 = type { i32, ptr }
%struct.anon.146 = type { i32, ptr }
%struct.anon.148 = type { i32, ptr }
%struct.anon.149 = type { i32, ptr }
%struct.anon.150 = type { i32, ptr }
%struct.anon.151 = type { i32, ptr }
%struct.anon.152 = type { i32, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.153, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.153 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@nv_devices_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nv_devices_mutex, i64 12), ptr getelementptr (i8, ptr @nv_devices_mutex, i64 12) } }, align 4
@nv_devices = internal global %struct.list_head { ptr @nv_devices, ptr @nv_devices }, align 4
@nvkm_engine = external dso_local constant %struct.nvkm_subdev_func, align 4
@.str = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s running...\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s completed in %lldus...\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: failed restart, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s failed with %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"init running...\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"init completed in %lldus\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"init failed with %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@nvkm_device_event_func = internal constant %struct.nvkm_event_func { ptr @nvkm_device_event_ctor, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"unable to map PRI\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"NvChipset\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"CHIPSET OVERRIDE: %08x -> %08x\0A\00", align 1
@nv4_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.26, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv04_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 zeroinitializer, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv04_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv04_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv04_fifo_new }, %struct.anon.134 { i32 1, ptr @nv04_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv04_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv5_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.27, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv05_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 zeroinitializer, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv04_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv04_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv04_fifo_new }, %struct.anon.134 { i32 1, ptr @nv04_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv04_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv10_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.28, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv10_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv04_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv10_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 zeroinitializer, %struct.anon.134 { i32 1, ptr @nv10_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv11_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.29, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv10_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv11_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv10_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv10_fifo_new }, %struct.anon.134 { i32 1, ptr @nv15_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv15_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.30, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv10_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv04_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv10_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv10_fifo_new }, %struct.anon.134 { i32 1, ptr @nv15_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv17_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.31, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv10_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv10_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv17_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv18_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.32, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv10_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv10_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv17_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv1a_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.33, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv04_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv1a_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv10_fifo_new }, %struct.anon.134 { i32 1, ptr @nv15_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv1f_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.34, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv1a_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv17_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv20_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.35, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv20_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv20_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv25_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.36, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv25_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv25_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv28_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.37, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv25_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv25_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv2a_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.38, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv25_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv2a_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv30_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.39, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv30_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv30_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv31_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.40, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv30_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv30_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv31_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv34_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.41, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv10_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv10_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv34_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv31_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv35_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.42, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv04_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv35_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv35_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv36_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.43, %struct.anon.71 { i32 1, ptr @nv04_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv20_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv04_timer_new }, %struct.anon.86 { i32 1, ptr @nv04_instmem_new }, %struct.anon.87 { i32 1, ptr @nv36_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @nv04_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv17_fifo_new }, %struct.anon.134 { i32 1, ptr @nv35_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv31_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv40_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.44, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv40_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv40_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv40_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv41_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.45, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv41_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv41_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv40_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv42_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.46, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv41_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv41_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv40_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv43_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.47, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv41_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv41_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv40_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv44_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.48, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv44_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv45_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.49, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv40_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv46_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.50, %struct.anon.71 { i32 1, ptr @nv46_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv46_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv47_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.51, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv47_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv41_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv49_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.52, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv49_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv41_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv4a_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.53, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv44_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv04_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv4b_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.54, %struct.anon.71 { i32 1, ptr @nv40_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv17_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv49_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv41_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv40_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv4c_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.55, %struct.anon.71 { i32 1, ptr @nv4c_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv46_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv4e_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.56, %struct.anon.71 { i32 1, ptr @nv4c_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv4e_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv4e_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv50_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.57, %struct.anon.71 { i32 1, ptr @nv46_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv50_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv50_gpio_new }, %struct.anon.80 { i32 1, ptr @nv50_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @nv50_mc_new }, %struct.anon.84 { i32 1, ptr @nv50_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @nv50_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv50_mmu_new }, %struct.anon.106 { i32 1, ptr @nv50_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv50_therm_new }, %struct.anon.123 { i32 1, ptr @nv50_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv50_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @nv50_fifo_new }, %struct.anon.134 { i32 1, ptr @nv50_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv50_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv50_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv63_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.58, %struct.anon.71 { i32 1, ptr @nv4c_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv46_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv67_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.59, %struct.anon.71 { i32 1, ptr @nv4c_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv46_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv68_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.60, %struct.anon.71 { i32 1, ptr @nv4c_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @nv1a_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv10_gpio_new }, %struct.anon.80 { i32 1, ptr @nv04_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @nv44_mc_new }, %struct.anon.84 { i32 1, ptr @nv31_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv40_instmem_new }, %struct.anon.87 { i32 1, ptr @nv46_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @nv44_mmu_new }, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @nv40_therm_new }, %struct.anon.123 { i32 1, ptr @nv40_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @nv04_disp_new }, %struct.anon.132 { i32 1, ptr @nv04_dma_new }, %struct.anon.133 { i32 1, ptr @nv40_fifo_new }, %struct.anon.134 { i32 1, ptr @nv44_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @nv44_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @nv40_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv10_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv84_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.61, %struct.anon.71 { i32 1, ptr @g84_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g84_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv50_gpio_new }, %struct.anon.80 { i32 1, ptr @nv50_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g84_mc_new }, %struct.anon.84 { i32 1, ptr @nv50_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 { i32 1, ptr @g84_bsp_new }, %struct.anon.128 zeroinitializer, %struct.anon.129 { i32 1, ptr @g84_cipher_new }, %struct.anon.130 { i32 1, ptr @g84_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @g84_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 { i32 1, ptr @g84_vp_new } }, align 4
@nv86_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.62, %struct.anon.71 { i32 1, ptr @g84_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g84_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv50_gpio_new }, %struct.anon.80 { i32 1, ptr @nv50_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g84_mc_new }, %struct.anon.84 { i32 1, ptr @nv50_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 { i32 1, ptr @g84_bsp_new }, %struct.anon.128 zeroinitializer, %struct.anon.129 { i32 1, ptr @g84_cipher_new }, %struct.anon.130 { i32 1, ptr @g84_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @g84_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 { i32 1, ptr @g84_vp_new } }, align 4
@nv92_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.63, %struct.anon.71 { i32 1, ptr @g92_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g84_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @nv50_gpio_new }, %struct.anon.80 { i32 1, ptr @nv50_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g84_mc_new }, %struct.anon.84 { i32 1, ptr @nv50_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 { i32 1, ptr @g84_bsp_new }, %struct.anon.128 zeroinitializer, %struct.anon.129 { i32 1, ptr @g84_cipher_new }, %struct.anon.130 { i32 1, ptr @g84_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @g84_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 { i32 1, ptr @g84_vp_new } }, align 4
@nv94_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.64, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g84_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g84_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 { i32 1, ptr @g84_bsp_new }, %struct.anon.128 zeroinitializer, %struct.anon.129 { i32 1, ptr @g84_cipher_new }, %struct.anon.130 { i32 1, ptr @g94_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @g84_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 { i32 1, ptr @g84_vp_new } }, align 4
@nv96_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.65, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g84_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g84_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 { i32 1, ptr @g84_bsp_new }, %struct.anon.128 zeroinitializer, %struct.anon.129 { i32 1, ptr @g84_cipher_new }, %struct.anon.130 { i32 1, ptr @g94_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @g84_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 { i32 1, ptr @g84_vp_new } }, align 4
@nv98_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.66, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g98_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g98_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @g94_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @g84_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @g98_mspdec_new }, %struct.anon.140 { i32 1, ptr @g98_msppp_new }, %struct.anon.141 { i32 1, ptr @g98_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 { i32 1, ptr @g98_sec_new }, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nva0_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.67, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g84_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @nv50_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g84_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @g84_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @g84_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 { i32 1, ptr @g84_bsp_new }, %struct.anon.128 zeroinitializer, %struct.anon.129 { i32 1, ptr @g84_cipher_new }, %struct.anon.130 { i32 1, ptr @gt200_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @gt200_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gt200_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 { i32 1, ptr @g84_vp_new } }, align 4
@nva3_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.68, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gt215_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gt215_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gt215_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gt215_pmu_new }, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gt215_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gt215_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @gt215_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 { i32 1, ptr @g84_mpeg_new }, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gt215_mspdec_new }, %struct.anon.140 { i32 1, ptr @gt215_msppp_new }, %struct.anon.141 { i32 1, ptr @gt215_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gt215_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nva5_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.69, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gt215_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gt215_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gt215_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gt215_pmu_new }, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gt215_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gt215_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @gt215_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gt215_mspdec_new }, %struct.anon.140 { i32 1, ptr @gt215_msppp_new }, %struct.anon.141 { i32 1, ptr @gt215_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gt215_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nva8_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.70, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gt215_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gt215_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gt215_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @g84_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gt215_pmu_new }, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gt215_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gt215_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @gt215_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gt215_mspdec_new }, %struct.anon.140 { i32 1, ptr @gt215_msppp_new }, %struct.anon.141 { i32 1, ptr @gt215_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gt215_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvaa_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.71, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g98_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g98_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @mcp77_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @mcp77_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @mcp77_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @mcp77_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @gt200_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @g98_mspdec_new }, %struct.anon.140 { i32 1, ptr @g98_msppp_new }, %struct.anon.141 { i32 1, ptr @g98_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 { i32 1, ptr @g98_sec_new }, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvac_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.72, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @g98_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @g98_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @mcp77_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @mcp77_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @g84_therm_new }, %struct.anon.123 { i32 1, ptr @mcp77_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @mcp77_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @mcp79_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @g98_mspdec_new }, %struct.anon.140 { i32 1, ptr @g98_msppp_new }, %struct.anon.141 { i32 1, ptr @g98_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @g84_pm_new }, %struct.anon.148 { i32 1, ptr @g98_sec_new }, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvaf_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.73, %struct.anon.71 { i32 1, ptr @g94_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @mcp89_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @nv50_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gt215_mc_new }, %struct.anon.84 { i32 1, ptr @g94_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @mcp89_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @mcp77_mmu_new }, %struct.anon.106 { i32 1, ptr @g84_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gt215_pmu_new }, %struct.anon.117 { i32 1, ptr @nv40_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gt215_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gt215_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @mcp89_disp_new }, %struct.anon.132 { i32 1, ptr @nv50_dma_new }, %struct.anon.133 { i32 1, ptr @g84_fifo_new }, %struct.anon.134 { i32 1, ptr @mcp89_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gt215_mspdec_new }, %struct.anon.140 { i32 1, ptr @gt215_msppp_new }, %struct.anon.141 { i32 1, ptr @mcp89_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gt215_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @nv50_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvc0_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.74, %struct.anon.71 { i32 1, ptr @gf100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 3, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf100_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf100_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvc1_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.75, %struct.anon.71 { i32 1, ptr @gf106_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf108_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf108_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf108_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvc3_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.76, %struct.anon.71 { i32 1, ptr @gf106_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf100_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvc4_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.77, %struct.anon.71 { i32 1, ptr @gf100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 3, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf100_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvc8_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.78, %struct.anon.71 { i32 1, ptr @gf100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 3, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf110_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf100_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvce_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.79, %struct.anon.71 { i32 1, ptr @gf100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 3, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf100_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvcf_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.80, %struct.anon.71 { i32 1, ptr @gf106_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf100_privring_new }, %struct.anon.79 { i32 1, ptr @g94_gpio_new }, %struct.anon.80 { i32 1, ptr @g94_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf100_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gt215_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gt215_disp_new }, %struct.anon.132 { i32 1, ptr @gf100_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf100_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvd7_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.81, %struct.anon.71 { i32 1, ptr @gf106_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf117_privring_new }, %struct.anon.79 { i32 1, ptr @gf119_gpio_new }, %struct.anon.80 { i32 1, ptr @gf117_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 { i32 1, ptr @gf117_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gf119_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gf119_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf117_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf117_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvd9_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.82, %struct.anon.71 { i32 1, ptr @gf106_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 zeroinitializer, %struct.anon.78 { i32 1, ptr @gf117_privring_new }, %struct.anon.79 { i32 1, ptr @gf119_gpio_new }, %struct.anon.80 { i32 1, ptr @gf119_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gf100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gf100_fb_new }, %struct.anon.101 { i32 1, ptr @gf100_ltc_new }, %struct.anon.102 { i32 1, ptr @gf100_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gf119_pmu_new }, %struct.anon.117 { i32 1, ptr @gf100_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gf119_therm_new }, %struct.anon.123 { i32 1, ptr @gf100_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gf100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gf119_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gf100_fifo_new }, %struct.anon.134 { i32 1, ptr @gf119_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gf100_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gf100_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gf117_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nve4_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.83, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk104_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk104_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk104_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk104_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk104_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk104_fifo_new }, %struct.anon.134 { i32 1, ptr @gk104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gk104_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nve6_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.84, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk104_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk104_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk104_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk104_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk104_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk104_fifo_new }, %struct.anon.134 { i32 1, ptr @gk104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gk104_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nve7_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.85, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk104_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk104_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk104_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk104_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk104_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk104_fifo_new }, %struct.anon.134 { i32 1, ptr @gk104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gk104_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvea_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.86, %struct.anon.71 zeroinitializer, %struct.anon.74 zeroinitializer, %struct.anon.76 zeroinitializer, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk20a_privring_new }, %struct.anon.79 zeroinitializer, %struct.anon.80 zeroinitializer, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @gk20a_instmem_new }, %struct.anon.87 { i32 1, ptr @gk20a_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk20a_mmu_new }, %struct.anon.106 { i32 1, ptr @gk20a_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk20a_pmu_new }, %struct.anon.117 { i32 1, ptr @gk20a_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @gk20a_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 4, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 zeroinitializer, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk20a_fifo_new }, %struct.anon.134 { i32 1, ptr @gk20a_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 { i32 1, ptr @gk104_pm_new }, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvf0_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.87, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk110_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk104_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk110_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk110_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk110_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk110_fifo_new }, %struct.anon.134 { i32 1, ptr @gk110_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvf1_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.88, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk110_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk104_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk110_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk110_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk110_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk110_fifo_new }, %struct.anon.134 { i32 1, ptr @gk110b_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv106_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.89, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk110_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk110_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk208_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk110_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk208_fifo_new }, %struct.anon.134 { i32 1, ptr @gk208_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv108_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.90, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gf100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk110_i2c_new }, %struct.anon.81 { i32 1, ptr @gf100_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @nv41_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gk110_fb_new }, %struct.anon.101 { i32 1, ptr @gk104_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gf100_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gk208_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gk104_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gk104_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gk110_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gk208_fifo_new }, %struct.anon.134 { i32 1, ptr @gk208_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 { i32 1, ptr @gk104_mspdec_new }, %struct.anon.140 { i32 1, ptr @gf100_msppp_new }, %struct.anon.141 { i32 1, ptr @gk104_msvld_new }, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv117_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.91, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm107_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk110_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gm107_fb_new }, %struct.anon.101 { i32 1, ptr @gm107_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gm107_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gm107_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 5, ptr @gm107_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gm107_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gm107_fifo_new }, %struct.anon.134 { i32 1, ptr @gm107_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv118_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.92, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm107_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk104_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gk110_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gm107_fb_new }, %struct.anon.101 { i32 1, ptr @gm107_ltc_new }, %struct.anon.102 { i32 1, ptr @gk104_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 { i32 1, ptr @gm107_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gm107_therm_new }, %struct.anon.123 { i32 1, ptr @gk104_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 5, ptr @gm107_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gm107_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gm107_fifo_new }, %struct.anon.134 { i32 1, ptr @gm107_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv120_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.93, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gm200_fb_new }, %struct.anon.101 { i32 1, ptr @gm200_ltc_new }, %struct.anon.102 { i32 1, ptr @gm200_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 { i32 1, ptr @gm200_acr_new }, %struct.anon.109 { i32 1, ptr @gm200_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gm200_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gm200_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gm200_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gm200_fifo_new }, %struct.anon.134 { i32 1, ptr @gm200_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 3, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv124_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.94, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gm200_fb_new }, %struct.anon.101 { i32 1, ptr @gm200_ltc_new }, %struct.anon.102 { i32 1, ptr @gm200_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 { i32 1, ptr @gm200_acr_new }, %struct.anon.109 { i32 1, ptr @gm200_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gm200_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gm200_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gm200_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gm200_fifo_new }, %struct.anon.134 { i32 1, ptr @gm200_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 3, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv126_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.95, %struct.anon.71 { i32 1, ptr @gk104_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 { i32 1, ptr @nv50_mxm_new }, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gm200_fb_new }, %struct.anon.101 { i32 1, ptr @gm200_ltc_new }, %struct.anon.102 { i32 1, ptr @gm200_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 { i32 1, ptr @gm200_acr_new }, %struct.anon.109 { i32 1, ptr @gm200_pmu_new }, %struct.anon.117 { i32 1, ptr @gk104_volt_new }, %struct.anon.119 { i32 1, ptr @gf100_iccsense_new }, %struct.anon.120 { i32 1, ptr @gm200_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 7, ptr @gm200_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gm200_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gm200_fifo_new }, %struct.anon.134 { i32 1, ptr @gm200_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv12b_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.96, %struct.anon.71 zeroinitializer, %struct.anon.74 zeroinitializer, %struct.anon.76 zeroinitializer, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gk20a_privring_new }, %struct.anon.79 zeroinitializer, %struct.anon.80 zeroinitializer, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gk20a_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @gk20a_instmem_new }, %struct.anon.87 { i32 1, ptr @gm20b_fb_new }, %struct.anon.101 { i32 1, ptr @gm200_ltc_new }, %struct.anon.102 { i32 1, ptr @gm20b_mmu_new }, %struct.anon.106 { i32 1, ptr @gm20b_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 { i32 1, ptr @gm20b_acr_new }, %struct.anon.109 { i32 1, ptr @gm20b_pmu_new }, %struct.anon.117 { i32 1, ptr @gm20b_volt_new }, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 { i32 1, ptr @gm20b_clk_new }, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 4, ptr @gm200_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 zeroinitializer, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gm20b_fifo_new }, %struct.anon.134 { i32 1, ptr @gm20b_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv130_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.97, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gp100_fb_new }, %struct.anon.101 { i32 1, ptr @gp100_ltc_new }, %struct.anon.102 { i32 1, ptr @gp100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gp100_fault_new }, %struct.anon.108 { i32 1, ptr @gm200_acr_new }, %struct.anon.109 { i32 1, ptr @gm200_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 63, ptr @gp100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gp100_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp100_fifo_new }, %struct.anon.134 { i32 1, ptr @gp100_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 7, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv132_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.98, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gp102_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @gp100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gp100_fault_new }, %struct.anon.108 { i32 1, ptr @gp102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 15, ptr @gp102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gp102_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp100_fifo_new }, %struct.anon.134 { i32 1, ptr @gp102_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 3, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @gp102_sec2_new }, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv134_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.99, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gp102_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @gp100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gp100_fault_new }, %struct.anon.108 { i32 1, ptr @gp102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 15, ptr @gp102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gp102_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp100_fifo_new }, %struct.anon.134 { i32 1, ptr @gp104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 3, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @gp102_sec2_new }, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv136_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.100, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gp102_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @gp100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gp100_fault_new }, %struct.anon.108 { i32 1, ptr @gp102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 15, ptr @gp102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gp102_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp100_fifo_new }, %struct.anon.134 { i32 1, ptr @gp104_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @gp102_sec2_new }, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv137_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.101, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gp102_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @gp100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gp100_fault_new }, %struct.anon.108 { i32 1, ptr @gp102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 15, ptr @gp102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gp102_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp100_fifo_new }, %struct.anon.134 { i32 1, ptr @gp107_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 3, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @gp102_sec2_new }, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv138_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.102, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gm200_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gp102_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @gp100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gp100_fault_new }, %struct.anon.108 { i32 1, ptr @gp108_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 15, ptr @gp102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gp102_disp_new }, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp100_fifo_new }, %struct.anon.134 { i32 1, ptr @gp108_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @gp108_sec2_new }, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv13b_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.103, %struct.anon.71 zeroinitializer, %struct.anon.74 zeroinitializer, %struct.anon.76 zeroinitializer, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gp10b_privring_new }, %struct.anon.79 zeroinitializer, %struct.anon.80 zeroinitializer, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp10b_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @gk20a_instmem_new }, %struct.anon.87 { i32 1, ptr @gp10b_fb_new }, %struct.anon.101 { i32 1, ptr @gp10b_ltc_new }, %struct.anon.102 { i32 1, ptr @gp10b_mmu_new }, %struct.anon.106 { i32 1, ptr @gm20b_bar_new }, %struct.anon.107 { i32 1, ptr @gp10b_fault_new }, %struct.anon.108 { i32 1, ptr @gp10b_acr_new }, %struct.anon.109 { i32 1, ptr @gp10b_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 1, ptr @gp100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 zeroinitializer, %struct.anon.132 { i32 1, ptr @gf119_dma_new }, %struct.anon.133 { i32 1, ptr @gp10b_fifo_new }, %struct.anon.134 { i32 1, ptr @gp10b_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 { i32 1, ptr @gf100_sw_new }, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv140_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.104, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @gv100_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @gp100_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gv100_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @gv100_mmu_new }, %struct.anon.106 { i32 1, ptr @gm107_bar_new }, %struct.anon.107 { i32 1, ptr @gv100_fault_new }, %struct.anon.108 { i32 1, ptr @gp108_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 1, ptr @gv100_gsp_new }, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 511, ptr @gv100_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @gv100_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @gv100_fifo_new }, %struct.anon.134 { i32 1, ptr @gv100_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 7, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @gp108_sec2_new }, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv162_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.105, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @tu102_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @tu102_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gv100_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 { i32 1, ptr @tu102_fault_new }, %struct.anon.108 { i32 1, ptr @tu102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 1, ptr @gv100_gsp_new }, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 31, ptr @tu102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @tu102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @tu102_fifo_new }, %struct.anon.134 { i32 1, ptr @tu102_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @tu102_sec2_new }, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv164_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.106, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @tu102_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @tu102_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gv100_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 { i32 1, ptr @tu102_fault_new }, %struct.anon.108 { i32 1, ptr @tu102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 1, ptr @gv100_gsp_new }, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 31, ptr @tu102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @tu102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @tu102_fifo_new }, %struct.anon.134 { i32 1, ptr @tu102_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 3, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @tu102_sec2_new }, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv166_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.107, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @tu102_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @tu102_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gv100_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 { i32 1, ptr @tu102_fault_new }, %struct.anon.108 { i32 1, ptr @tu102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 1, ptr @gv100_gsp_new }, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 31, ptr @tu102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @tu102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @tu102_fifo_new }, %struct.anon.134 { i32 1, ptr @tu102_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 7, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @tu102_sec2_new }, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv167_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.108, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @tu102_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @tu102_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gv100_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 { i32 1, ptr @tu102_fault_new }, %struct.anon.108 { i32 1, ptr @tu102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 1, ptr @gv100_gsp_new }, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 31, ptr @tu102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @tu102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @tu102_fifo_new }, %struct.anon.134 { i32 1, ptr @tu102_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @tu102_sec2_new }, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv168_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.109, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @tu102_devinit_new }, %struct.anon.77 { i32 1, ptr @gk104_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 { i32 1, ptr @gm107_fuse_new }, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @tu102_mc_new }, %struct.anon.84 { i32 1, ptr @gf100_bus_new }, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @gv100_fb_new }, %struct.anon.101 { i32 1, ptr @gp102_ltc_new }, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 { i32 1, ptr @tu102_fault_new }, %struct.anon.108 { i32 1, ptr @tu102_acr_new }, %struct.anon.109 { i32 1, ptr @gp102_pmu_new }, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 { i32 1, ptr @gp100_therm_new }, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 1, ptr @gv100_gsp_new }, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 { i32 31, ptr @tu102_ce_new }, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @tu102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @tu102_fifo_new }, %struct.anon.134 { i32 1, ptr @tu102_gr_new }, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 { i32 1, ptr @gm107_nvdec_new }, %struct.anon.143 { i32 1, ptr @gm107_nvenc_new }, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 { i32 1, ptr @tu102_sec2_new }, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv172_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.110, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @ga100_devinit_new }, %struct.anon.77 { i32 1, ptr @ga100_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @ga102_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @ga100_mc_new }, %struct.anon.84 zeroinitializer, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @ga102_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @ga102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @ga102_fifo_new }, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv174_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.111, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @ga100_devinit_new }, %struct.anon.77 { i32 1, ptr @ga100_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @ga102_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @ga100_mc_new }, %struct.anon.84 zeroinitializer, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @ga102_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @ga102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @ga102_fifo_new }, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv176_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.112, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @ga100_devinit_new }, %struct.anon.77 { i32 1, ptr @ga100_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @ga102_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @ga100_mc_new }, %struct.anon.84 zeroinitializer, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @ga102_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @ga102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @ga102_fifo_new }, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nv177_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.113, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @ga100_devinit_new }, %struct.anon.77 { i32 1, ptr @ga100_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @ga102_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @ga100_mc_new }, %struct.anon.84 zeroinitializer, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @ga102_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 { i32 1, ptr @ga102_disp_new }, %struct.anon.132 { i32 1, ptr @gv100_dma_new }, %struct.anon.133 { i32 1, ptr @ga102_fifo_new }, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"NvEnableUnsupportedChipsets\00", align 1
@nv170_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.114, %struct.anon.71 { i32 1, ptr @gp100_pci_new }, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 { i32 1, ptr @ga100_devinit_new }, %struct.anon.77 { i32 1, ptr @ga100_top_new }, %struct.anon.78 { i32 1, ptr @gm200_privring_new }, %struct.anon.79 { i32 1, ptr @gk104_gpio_new }, %struct.anon.80 { i32 1, ptr @gm200_i2c_new }, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 { i32 1, ptr @ga100_mc_new }, %struct.anon.84 zeroinitializer, %struct.anon.85 { i32 1, ptr @gk20a_timer_new }, %struct.anon.86 { i32 1, ptr @nv50_instmem_new }, %struct.anon.87 { i32 1, ptr @ga100_fb_new }, %struct.anon.101 zeroinitializer, %struct.anon.102 { i32 1, ptr @tu102_mmu_new }, %struct.anon.106 { i32 1, ptr @tu102_bar_new }, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 zeroinitializer, %struct.anon.132 zeroinitializer, %struct.anon.133 zeroinitializer, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"unknown chipset (%08x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"NVIDIA %s (%08x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"vGPUs are not supported\0A\00", align 1
@null_chipset = internal constant %struct.nvkm_device_chip { ptr @.str.115, %struct.anon.71 zeroinitializer, %struct.anon.74 { i32 1, ptr @nvkm_bios_new }, %struct.anon.76 zeroinitializer, %struct.anon.77 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.79 zeroinitializer, %struct.anon.80 zeroinitializer, %struct.anon.81 zeroinitializer, %struct.anon.82 zeroinitializer, %struct.anon.83 zeroinitializer, %struct.anon.84 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.86 zeroinitializer, %struct.anon.87 zeroinitializer, %struct.anon.101 zeroinitializer, %struct.anon.102 zeroinitializer, %struct.anon.106 zeroinitializer, %struct.anon.107 zeroinitializer, %struct.anon.108 zeroinitializer, %struct.anon.109 zeroinitializer, %struct.anon.117 zeroinitializer, %struct.anon.119 zeroinitializer, %struct.anon.120 zeroinitializer, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, %struct.anon.126 zeroinitializer, %struct.anon.127 zeroinitializer, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, %struct.anon.130 zeroinitializer, %struct.anon.132 zeroinitializer, %struct.anon.133 zeroinitializer, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, %struct.anon.143 zeroinitializer, %struct.anon.144 zeroinitializer, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, %struct.anon.148 zeroinitializer, %struct.anon.149 zeroinitializer, %struct.anon.150 zeroinitializer, %struct.anon.151 zeroinitializer, %struct.anon.152 zeroinitializer }, align 4
@nvkm_device_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"&device->mutex\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/include/nvkm/core/layout.h\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"%s ctor failed: %d\0A\00", align 1
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"%s%d ctor failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"preinit running...\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"preinit completed in %lldus\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"preinit failed with %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/device/base.c\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"NV04\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"NV05\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"NV10\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"NV11\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"NV15\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"NV17\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"NV18\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"nForce\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"nForce2\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"NV20\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"NV25\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"NV28\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"NV2A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"NV30\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"NV31\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"NV34\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"NV35\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"NV36\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"NV40\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"NV41\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"NV42\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"NV43\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"NV44\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"NV45\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"G72\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"G70\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"G71\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"NV44A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"G73\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"C61\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"C51\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"G80\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"C73\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"C67\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"C68\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"G84\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"G86\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"G92\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"G94\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"G96\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"G98\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"GT200\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"GT215\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"GT216\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"GT218\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"MCP77/MCP78\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"MCP79/MCP7A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"MCP89\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"GF100\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"GF108\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"GF106\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"GF104\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"GF110\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"GF114\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"GF116\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"GF117\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"GF119\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"GK104\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"GK106\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"GK107\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"GK20A\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"GK110\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"GK110B\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"GK208B\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"GK208\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"GM107\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"GM108\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"GM200\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"GM204\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"GM206\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"GM20B\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"GP100\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"GP102\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"GP104\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"GP106\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"GP107\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"GP108\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"GP10B\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"GV100\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"TU102\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"TU104\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"TU106\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"TU117\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"TU116\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"GA102\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"GA104\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"GA106\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"GA107\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"GA100\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_device_find(i64 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nv_devices_mutex) #6
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @nv_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @nv_devices
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -20
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -36
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nv_devices_mutex) #6
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_list(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nv_devices_mutex) #6
  %3 = load ptr, ptr @nv_devices, align 4
  %4 = icmp eq ptr %3, @nv_devices
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = phi i32 [ %8, %14 ], [ 0, %2 ]
  %8 = add i32 %7, 1
  %9 = icmp slt i32 %7, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 -20
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr i64, ptr %0, i32 %7
  store i64 %12, ptr %13, align 8
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, @nv_devices
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %2
  %18 = phi i32 [ 0, %2 ], [ %8, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nv_devices_mutex) #6
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_device_subdev(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 71
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %21, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -28
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -24
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %21, label %7

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %8, i32 -36
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = phi ptr [ %20, %19 ], [ null, %3 ], [ null, %16 ]
  ret ptr %22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_device_engine(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 71
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %27, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -28
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -24
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %27, label %7

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %8, i32 -36
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 4
  %24 = icmp eq ptr %23, @nvkm_engine
  %25 = getelementptr i8, ptr %8, i32 -40
  %26 = select i1 %24, ptr %25, ptr null
  br label %27

27:                                               ; preds = %22, %19, %16, %3
  %28 = phi ptr [ null, %19 ], [ %26, %22 ], [ null, %3 ], [ null, %16 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_fini(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = select i1 %1, ptr @.str, ptr @.str.1
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #7
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call i64 @ktime_get() #6
  %12 = tail call i64 @llvm.abs.i64(i64 %11, i1 false) #6
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %12, i32 0) #8, !srcloc !8
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = extractvalue { i64, i32 } %13, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %12, i64 %14, i32 %15) #8, !srcloc !9
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = icmp slt i64 %11, 0
  %19 = lshr i64 %17, 9
  %20 = sub nsw i64 0, %19
  %21 = select i1 %18, i64 %19, i64 %20
  tail call void @nvkm_acpi_fini(ptr noundef %0) #6
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 71
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 71, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %38, label %30

26:                                               ; preds = %30
  %27 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %22
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %10
  %31 = phi ptr [ %28, %26 ], [ %24, %10 ]
  %32 = getelementptr i8, ptr %31, i32 -36
  %33 = tail call i32 @nvkm_subdev_fini(ptr noundef %32, i1 noundef zeroext %1) #6
  %34 = icmp ne i32 %33, 0
  %35 = and i1 %34, %1
  br i1 %35, label %36, label %26

36:                                               ; preds = %30
  %37 = icmp eq ptr %31, %22
  br i1 %37, label %79, label %64

38:                                               ; preds = %26, %10
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 42
  %40 = load ptr, ptr %39, align 4
  tail call void @nvkm_therm_clkgate_fini(ptr noundef %40, i1 noundef zeroext %1) #6
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.nvkm_device_func, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  tail call void %43(ptr noundef %0, i1 noundef zeroext %1) #6
  br label %46

46:                                               ; preds = %45, %38
  %47 = tail call i64 @ktime_get() #6
  %48 = tail call i64 @llvm.abs.i64(i64 %47, i1 false) #6
  %49 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %48, i32 0) #8, !srcloc !8
  %50 = extractvalue { i64, i32 } %49, 0
  %51 = extractvalue { i64, i32 } %49, 1
  %52 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %48, i64 %50, i32 %51) #8, !srcloc !9
  %53 = load i32, ptr %4, align 8
  %54 = icmp ugt i32 %53, 4
  br i1 %54, label %55, label %85

55:                                               ; preds = %46
  %56 = icmp slt i64 %47, 0
  %57 = extractvalue { i64, i32 } %52, 0
  %58 = lshr i64 %57, 9
  %59 = sub nsw i64 0, %58
  %60 = select i1 %56, i64 %59, i64 %58
  %61 = add nsw i64 %60, %21
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i64 noundef %61) #7
  br label %85

64:                                               ; preds = %75, %36
  %65 = phi ptr [ %76, %75 ], [ %31, %36 ]
  %66 = phi ptr [ %77, %75 ], [ %32, %36 ]
  %67 = tail call i32 @nvkm_subdev_init(ptr noundef %66) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.nvkm_subdev, ptr %66, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nvkm_subdev, ptr %66, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %73, ptr noundef nonnull @.str.4, ptr noundef %74, i32 noundef %33) #7
  br label %75

75:                                               ; preds = %69, %64
  %76 = load ptr, ptr %65, align 4
  %77 = getelementptr i8, ptr %76, i32 -36
  %78 = icmp eq ptr %76, %22
  br i1 %78, label %79, label %64

79:                                               ; preds = %75, %36
  %80 = load i32, ptr %4, align 8
  %81 = icmp ugt i32 %80, 4
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef %33) #7
  br label %85

85:                                               ; preds = %82, %79, %55, %46
  %86 = phi i32 [ 0, %55 ], [ 0, %46 ], [ %33, %82 ], [ %33, %79 ]
  ret i32 %86
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acpi_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_clkgate_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 8
  %4 = icmp ugt i32 %3, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.22) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call i64 @ktime_get() #6
  %10 = tail call i64 @llvm.abs.i64(i64 %9, i1 false) #6
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #8, !srcloc !8
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = extractvalue { i64, i32 } %11, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %12, i32 %13) #8, !srcloc !9
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = icmp slt i64 %9, 0
  %17 = lshr i64 %15, 9
  %18 = sub nsw i64 0, %17
  %19 = select i1 %16, i64 %17, i64 %18
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.nvkm_device_func, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = tail call i32 %22(ptr noundef %0) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %24, %8
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 71
  br label %29

29:                                               ; preds = %33, %27
  %30 = phi ptr [ %28, %27 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %28
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -36
  %35 = tail call i32 @nvkm_subdev_preinit(ptr noundef %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %29, label %60

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 22
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @nvkm_devinit_post(ptr noundef %39) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = tail call i64 @ktime_get() #6
  %44 = tail call i64 @llvm.abs.i64(i64 %43, i1 false) #6
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %44, i32 0) #8, !srcloc !8
  %46 = extractvalue { i64, i32 } %45, 0
  %47 = extractvalue { i64, i32 } %45, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %44, i64 %46, i32 %47) #8, !srcloc !9
  %49 = load i32, ptr %2, align 8
  %50 = icmp ugt i32 %49, 4
  br i1 %50, label %51, label %67

51:                                               ; preds = %42
  %52 = icmp slt i64 %43, 0
  %53 = extractvalue { i64, i32 } %48, 0
  %54 = lshr i64 %53, 9
  %55 = sub nsw i64 0, %54
  %56 = select i1 %52, i64 %55, i64 %54
  %57 = add nsw i64 %56, %19
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.23, i64 noundef %57) #7
  br label %67

60:                                               ; preds = %37, %33, %24
  %61 = phi i32 [ %25, %24 ], [ %40, %37 ], [ %35, %33 ]
  %62 = load i32, ptr %2, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %137, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.24, i32 noundef %61) #7
  br label %137

67:                                               ; preds = %51, %42
  %68 = tail call i32 @nvkm_device_fini(ptr noundef %0, i1 noundef zeroext false)
  %69 = load i32, ptr %2, align 8
  %70 = icmp ugt i32 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.6) #7
  br label %74

74:                                               ; preds = %71, %67
  %75 = tail call i64 @ktime_get() #6
  %76 = tail call i64 @llvm.abs.i64(i64 %75, i1 false) #6
  %77 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %76, i32 0) #8, !srcloc !8
  %78 = extractvalue { i64, i32 } %77, 0
  %79 = extractvalue { i64, i32 } %77, 1
  %80 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %76, i64 %78, i32 %79) #8, !srcloc !9
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = icmp slt i64 %75, 0
  %83 = lshr i64 %81, 9
  %84 = sub nsw i64 0, %83
  %85 = select i1 %82, i64 %83, i64 %84
  %86 = load ptr, ptr %0, align 8
  %87 = getelementptr inbounds %struct.nvkm_device_func, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %74
  %91 = tail call i32 %88(ptr noundef %0) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %90, %74
  br label %94

94:                                               ; preds = %98, %93
  %95 = phi ptr [ %96, %98 ], [ %28, %93 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %28
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %96, i32 -36
  %100 = tail call i32 @nvkm_subdev_init(ptr noundef %99) #6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %94, label %122

102:                                              ; preds = %94
  tail call void @nvkm_acpi_init(ptr noundef %0) #6
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 42
  %104 = load ptr, ptr %103, align 4
  tail call void @nvkm_therm_clkgate_enable(ptr noundef %104) #6
  %105 = tail call i64 @ktime_get() #6
  %106 = tail call i64 @llvm.abs.i64(i64 %105, i1 false) #6
  %107 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %106, i32 0) #8, !srcloc !8
  %108 = extractvalue { i64, i32 } %107, 0
  %109 = extractvalue { i64, i32 } %107, 1
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %106, i64 %108, i32 %109) #8, !srcloc !9
  %111 = load i32, ptr %2, align 8
  %112 = icmp ugt i32 %111, 4
  br i1 %112, label %113, label %137

113:                                              ; preds = %102
  %114 = icmp slt i64 %105, 0
  %115 = extractvalue { i64, i32 } %110, 0
  %116 = lshr i64 %115, 9
  %117 = sub nsw i64 0, %116
  %118 = select i1 %114, i64 %117, i64 %116
  %119 = add nsw i64 %118, %85
  %120 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %121, ptr noundef nonnull @.str.7, i64 noundef %119) #7
  br label %137

122:                                              ; preds = %122, %98
  %123 = phi ptr [ %126, %122 ], [ %96, %98 ]
  %124 = phi ptr [ %127, %122 ], [ %99, %98 ]
  %125 = tail call i32 @nvkm_subdev_fini(ptr noundef %124, i1 noundef zeroext false) #6
  %126 = load ptr, ptr %123, align 4
  %127 = getelementptr i8, ptr %126, i32 -36
  %128 = icmp eq ptr %126, %28
  br i1 %128, label %129, label %122

129:                                              ; preds = %122, %90
  %130 = phi i32 [ %91, %90 ], [ %100, %122 ]
  %131 = tail call i32 @nvkm_device_fini(ptr noundef %0, i1 noundef zeroext false)
  %132 = load i32, ptr %2, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.8, i32 noundef %130) #7
  br label %137

137:                                              ; preds = %134, %129, %113, %102, %64, %60
  %138 = phi i32 [ 0, %113 ], [ 0, %102 ], [ %130, %134 ], [ %130, %129 ], [ %61, %64 ], [ %61, %60 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acpi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_clkgate_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_device_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @nv_devices_mutex) #6
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 71
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 71, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -36
  store ptr %9, ptr %2, align 4
  %10 = icmp eq ptr %8, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %14, %11 ], [ %8, %5 ]
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @nvkm_subdev_del(ptr noundef nonnull %2) #6
  %15 = getelementptr i8, ptr %14, i32 -36
  store ptr %15, ptr %2, align 4
  %16 = icmp eq ptr %14, %6
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %5
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 12
  call void @nvkm_event_fini(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @iounmap(ptr noundef nonnull %20) #6
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 8
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 8, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_device_func, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = call ptr %31(ptr noundef nonnull %3) #6
  store ptr %34, ptr %0, align 4
  br label %35

35:                                               ; preds = %33, %23
  call void @mutex_unlock(ptr noundef nonnull @nv_devices_mutex) #6
  %36 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %36) #6
  store ptr null, ptr %0, align 4
  br label %37

37:                                               ; preds = %35, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i64 noundef %10, ptr noundef %11) local_unnamed_addr #0 {
  %13 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store ptr null, ptr %13, align 4, !annotation !10
  tail call void @mutex_lock(ptr noundef nonnull @nv_devices_mutex) #6
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ @nv_devices, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @nv_devices
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -20
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, %4
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %16, i32 -36
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %2921

25:                                               ; preds = %22, %14
  store ptr %0, ptr %11, align 8
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  store ptr %2, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 3
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 4
  store i64 %4, ptr %29, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 6
  store ptr %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 7
  store ptr %7, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 5
  store ptr %5, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nv_devices, i32 0, i32 1), align 4
  store ptr %33, ptr getelementptr inbounds (%struct.list_head, ptr @nv_devices, i32 0, i32 1), align 4
  store ptr @nv_devices, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 8, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %33, ptr %34, align 4
  %36 = load ptr, ptr %31, align 8
  %37 = tail call i32 @nvkm_dbgopt(ptr noundef %36, ptr noundef nonnull @.str.9) #6
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 13
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 71
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 71, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 12
  %42 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_device_event_func, i32 noundef 1, i32 noundef 1, ptr noundef %41) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %2921

44:                                               ; preds = %25
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds %struct.nvkm_device_func, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %11, i32 noundef 0) #6
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds %struct.nvkm_device_func, ptr %49, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %11, i32 noundef 0) #6
  %53 = or i1 %8, %9
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = tail call ptr @ioremap(i32 noundef %48, i32 noundef %52) #6
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, ptr %38, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %2921, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.10) #7
  br label %2921

63:                                               ; preds = %54, %44
  br i1 %8, label %64, label %306

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %69 = icmp eq i32 %68, 16777217
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load ptr, ptr %65, align 4
  %72 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 16777217) #6, !srcloc !14
  %73 = load ptr, ptr %65, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  br label %78

78:                                               ; preds = %70, %64
  %79 = load ptr, ptr %65, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %81 = load ptr, ptr %30, align 4
  %82 = tail call i32 @nvkm_longopt(ptr noundef %81, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = icmp ugt i32 %82, 15
  %86 = shl i32 %82, 20
  %87 = and i32 %86, 535822336
  %88 = or i32 %87, 161
  %89 = icmp eq i32 %82, 4
  %90 = select i1 %89, i32 536887296, i32 537935872
  %91 = select i1 %85, i32 %88, i32 %90
  %92 = load i32, ptr %38, align 8
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %95, ptr noundef nonnull @.str.13, i32 noundef %80, i32 noundef %91) #7
  br label %96

96:                                               ; preds = %94, %84, %78
  %97 = phi i32 [ %80, %78 ], [ %91, %94 ], [ %91, %84 ]
  %98 = and i32 %97, 520093696
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %138, label %100

100:                                              ; preds = %96
  %101 = lshr i32 %97, 20
  %102 = and i32 %101, 511
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  store i32 %102, ptr %103, align 4
  %104 = trunc i32 %97 to i8
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 17
  store i8 %104, ptr %105, align 8
  %106 = and i32 %101, 496
  %107 = add nsw i32 %106, -16
  %108 = lshr exact i32 %107, 4
  switch i32 %108, label %150 [
    i32 0, label %109
    i32 1, label %116
    i32 2, label %118
    i32 3, label %120
    i32 5, label %120
    i32 4, label %122
    i32 7, label %122
    i32 8, label %122
    i32 9, label %122
    i32 11, label %124
    i32 12, label %124
    i32 13, label %126
    i32 14, label %126
    i32 15, label %126
    i32 16, label %128
    i32 17, label %128
    i32 18, label %130
    i32 19, label %132
    i32 21, label %134
    i32 22, label %136
  ]

109:                                              ; preds = %100
  %110 = and i32 %101, 15
  %111 = shl nuw nsw i32 1, %110
  %112 = and i32 %111, 1121
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 17, i32 16
  %115 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 %114, ptr %115, align 8
  store i8 0, ptr %105, align 8
  br label %150

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 32, ptr %117, align 8
  br label %150

118:                                              ; preds = %100
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 48, ptr %119, align 8
  br label %150

120:                                              ; preds = %100, %100
  %121 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 64, ptr %121, align 8
  br label %150

122:                                              ; preds = %100, %100, %100, %100
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 80, ptr %123, align 8
  br label %150

124:                                              ; preds = %100, %100
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 192, ptr %125, align 8
  br label %150

126:                                              ; preds = %100, %100, %100
  %127 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 224, ptr %127, align 8
  br label %150

128:                                              ; preds = %100, %100
  %129 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 272, ptr %129, align 8
  br label %150

130:                                              ; preds = %100
  %131 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 304, ptr %131, align 8
  br label %150

132:                                              ; preds = %100
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 320, ptr %133, align 8
  br label %150

134:                                              ; preds = %100
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 352, ptr %135, align 8
  br label %150

136:                                              ; preds = %100
  %137 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 368, ptr %137, align 8
  br label %150

138:                                              ; preds = %96
  %139 = and i32 %97, -16711696
  %140 = icmp eq i32 %139, 536887296
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  %143 = load i32, ptr %142, align 4
  br label %150

144:                                              ; preds = %138
  %145 = and i32 %97, 15728640
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 4, i32 5
  %148 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  store i32 %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  store i32 4, ptr %149, align 8
  br label %150

150:                                              ; preds = %144, %141, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %109, %100
  %151 = phi i32 [ %143, %141 ], [ %147, %144 ], [ %102, %109 ], [ %102, %116 ], [ %102, %118 ], [ %102, %120 ], [ %102, %122 ], [ %102, %124 ], [ %102, %126 ], [ %102, %128 ], [ %102, %130 ], [ %102, %132 ], [ %102, %134 ], [ %102, %136 ], [ %102, %100 ]
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  switch i32 %151, label %240 [
    i32 4, label %257
    i32 5, label %153
    i32 16, label %154
    i32 17, label %155
    i32 21, label %156
    i32 23, label %157
    i32 24, label %158
    i32 26, label %159
    i32 31, label %160
    i32 32, label %161
    i32 37, label %162
    i32 40, label %163
    i32 42, label %164
    i32 48, label %165
    i32 49, label %166
    i32 52, label %167
    i32 53, label %168
    i32 54, label %169
    i32 64, label %170
    i32 65, label %171
    i32 66, label %172
    i32 67, label %173
    i32 68, label %174
    i32 69, label %175
    i32 70, label %176
    i32 71, label %177
    i32 73, label %178
    i32 74, label %179
    i32 75, label %180
    i32 76, label %181
    i32 78, label %182
    i32 80, label %183
    i32 99, label %184
    i32 103, label %185
    i32 104, label %186
    i32 132, label %187
    i32 134, label %188
    i32 146, label %189
    i32 148, label %190
    i32 150, label %191
    i32 152, label %192
    i32 160, label %193
    i32 163, label %194
    i32 165, label %195
    i32 168, label %196
    i32 170, label %197
    i32 172, label %198
    i32 175, label %199
    i32 192, label %200
    i32 193, label %201
    i32 195, label %202
    i32 196, label %203
    i32 200, label %204
    i32 206, label %205
    i32 207, label %206
    i32 215, label %207
    i32 217, label %208
    i32 228, label %209
    i32 230, label %210
    i32 231, label %211
    i32 234, label %212
    i32 240, label %213
    i32 241, label %214
    i32 262, label %215
    i32 264, label %216
    i32 279, label %217
    i32 280, label %218
    i32 288, label %219
    i32 292, label %220
    i32 294, label %221
    i32 299, label %222
    i32 304, label %223
    i32 306, label %224
    i32 308, label %225
    i32 310, label %226
    i32 311, label %227
    i32 312, label %228
    i32 315, label %229
    i32 320, label %230
    i32 354, label %231
    i32 356, label %232
    i32 358, label %233
    i32 359, label %234
    i32 360, label %235
    i32 370, label %236
    i32 372, label %237
    i32 374, label %238
    i32 375, label %239
  ]

153:                                              ; preds = %150
  br label %257

154:                                              ; preds = %150
  br label %257

155:                                              ; preds = %150
  br label %257

156:                                              ; preds = %150
  br label %257

157:                                              ; preds = %150
  br label %257

158:                                              ; preds = %150
  br label %257

159:                                              ; preds = %150
  br label %257

160:                                              ; preds = %150
  br label %257

161:                                              ; preds = %150
  br label %257

162:                                              ; preds = %150
  br label %257

163:                                              ; preds = %150
  br label %257

164:                                              ; preds = %150
  br label %257

165:                                              ; preds = %150
  br label %257

166:                                              ; preds = %150
  br label %257

167:                                              ; preds = %150
  br label %257

168:                                              ; preds = %150
  br label %257

169:                                              ; preds = %150
  br label %257

170:                                              ; preds = %150
  br label %257

171:                                              ; preds = %150
  br label %257

172:                                              ; preds = %150
  br label %257

173:                                              ; preds = %150
  br label %257

174:                                              ; preds = %150
  br label %257

175:                                              ; preds = %150
  br label %257

176:                                              ; preds = %150
  br label %257

177:                                              ; preds = %150
  br label %257

178:                                              ; preds = %150
  br label %257

179:                                              ; preds = %150
  br label %257

180:                                              ; preds = %150
  br label %257

181:                                              ; preds = %150
  br label %257

182:                                              ; preds = %150
  br label %257

183:                                              ; preds = %150
  br label %257

184:                                              ; preds = %150
  br label %257

185:                                              ; preds = %150
  br label %257

186:                                              ; preds = %150
  br label %257

187:                                              ; preds = %150
  br label %257

188:                                              ; preds = %150
  br label %257

189:                                              ; preds = %150
  br label %257

190:                                              ; preds = %150
  br label %257

191:                                              ; preds = %150
  br label %257

192:                                              ; preds = %150
  br label %257

193:                                              ; preds = %150
  br label %257

194:                                              ; preds = %150
  br label %257

195:                                              ; preds = %150
  br label %257

196:                                              ; preds = %150
  br label %257

197:                                              ; preds = %150
  br label %257

198:                                              ; preds = %150
  br label %257

199:                                              ; preds = %150
  br label %257

200:                                              ; preds = %150
  br label %257

201:                                              ; preds = %150
  br label %257

202:                                              ; preds = %150
  br label %257

203:                                              ; preds = %150
  br label %257

204:                                              ; preds = %150
  br label %257

205:                                              ; preds = %150
  br label %257

206:                                              ; preds = %150
  br label %257

207:                                              ; preds = %150
  br label %257

208:                                              ; preds = %150
  br label %257

209:                                              ; preds = %150
  br label %257

210:                                              ; preds = %150
  br label %257

211:                                              ; preds = %150
  br label %257

212:                                              ; preds = %150
  br label %257

213:                                              ; preds = %150
  br label %257

214:                                              ; preds = %150
  br label %257

215:                                              ; preds = %150
  br label %257

216:                                              ; preds = %150
  br label %257

217:                                              ; preds = %150
  br label %257

218:                                              ; preds = %150
  br label %257

219:                                              ; preds = %150
  br label %257

220:                                              ; preds = %150
  br label %257

221:                                              ; preds = %150
  br label %257

222:                                              ; preds = %150
  br label %257

223:                                              ; preds = %150
  br label %257

224:                                              ; preds = %150
  br label %257

225:                                              ; preds = %150
  br label %257

226:                                              ; preds = %150
  br label %257

227:                                              ; preds = %150
  br label %257

228:                                              ; preds = %150
  br label %257

229:                                              ; preds = %150
  br label %257

230:                                              ; preds = %150
  br label %257

231:                                              ; preds = %150
  br label %257

232:                                              ; preds = %150
  br label %257

233:                                              ; preds = %150
  br label %257

234:                                              ; preds = %150
  br label %257

235:                                              ; preds = %150
  br label %257

236:                                              ; preds = %150
  br label %257

237:                                              ; preds = %150
  br label %257

238:                                              ; preds = %150
  br label %257

239:                                              ; preds = %150
  br label %257

240:                                              ; preds = %150
  %241 = load ptr, ptr %30, align 4
  %242 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %241, ptr noundef nonnull @.str.14, i1 noundef zeroext false) #6
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load i32, ptr %152, align 4
  %245 = icmp eq i32 %244, 368
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 14
  store ptr @nv170_chipset, ptr %247, align 4
  br label %248

248:                                              ; preds = %246, %243, %240
  %249 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 14
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = load i32, ptr %38, align 8
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %2921, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.15, i32 noundef %97) #7
  br label %2921

257:                                              ; preds = %239, %238, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %150
  %258 = phi ptr [ @nv5_chipset, %153 ], [ @nv10_chipset, %154 ], [ @nv11_chipset, %155 ], [ @nv15_chipset, %156 ], [ @nv17_chipset, %157 ], [ @nv18_chipset, %158 ], [ @nv1a_chipset, %159 ], [ @nv1f_chipset, %160 ], [ @nv20_chipset, %161 ], [ @nv25_chipset, %162 ], [ @nv28_chipset, %163 ], [ @nv2a_chipset, %164 ], [ @nv30_chipset, %165 ], [ @nv31_chipset, %166 ], [ @nv34_chipset, %167 ], [ @nv35_chipset, %168 ], [ @nv36_chipset, %169 ], [ @nv40_chipset, %170 ], [ @nv41_chipset, %171 ], [ @nv42_chipset, %172 ], [ @nv43_chipset, %173 ], [ @nv44_chipset, %174 ], [ @nv45_chipset, %175 ], [ @nv46_chipset, %176 ], [ @nv47_chipset, %177 ], [ @nv49_chipset, %178 ], [ @nv4a_chipset, %179 ], [ @nv4b_chipset, %180 ], [ @nv4c_chipset, %181 ], [ @nv4e_chipset, %182 ], [ @nv50_chipset, %183 ], [ @nv63_chipset, %184 ], [ @nv67_chipset, %185 ], [ @nv68_chipset, %186 ], [ @nv84_chipset, %187 ], [ @nv86_chipset, %188 ], [ @nv92_chipset, %189 ], [ @nv94_chipset, %190 ], [ @nv96_chipset, %191 ], [ @nv98_chipset, %192 ], [ @nva0_chipset, %193 ], [ @nva3_chipset, %194 ], [ @nva5_chipset, %195 ], [ @nva8_chipset, %196 ], [ @nvaa_chipset, %197 ], [ @nvac_chipset, %198 ], [ @nvaf_chipset, %199 ], [ @nvc0_chipset, %200 ], [ @nvc1_chipset, %201 ], [ @nvc3_chipset, %202 ], [ @nvc4_chipset, %203 ], [ @nvc8_chipset, %204 ], [ @nvce_chipset, %205 ], [ @nvcf_chipset, %206 ], [ @nvd7_chipset, %207 ], [ @nvd9_chipset, %208 ], [ @nve4_chipset, %209 ], [ @nve6_chipset, %210 ], [ @nve7_chipset, %211 ], [ @nvea_chipset, %212 ], [ @nvf0_chipset, %213 ], [ @nvf1_chipset, %214 ], [ @nv106_chipset, %215 ], [ @nv108_chipset, %216 ], [ @nv117_chipset, %217 ], [ @nv118_chipset, %218 ], [ @nv120_chipset, %219 ], [ @nv124_chipset, %220 ], [ @nv126_chipset, %221 ], [ @nv12b_chipset, %222 ], [ @nv130_chipset, %223 ], [ @nv132_chipset, %224 ], [ @nv134_chipset, %225 ], [ @nv136_chipset, %226 ], [ @nv137_chipset, %227 ], [ @nv138_chipset, %228 ], [ @nv13b_chipset, %229 ], [ @nv140_chipset, %230 ], [ @nv162_chipset, %231 ], [ @nv164_chipset, %232 ], [ @nv166_chipset, %233 ], [ @nv167_chipset, %234 ], [ @nv168_chipset, %235 ], [ @nv172_chipset, %236 ], [ @nv174_chipset, %237 ], [ @nv176_chipset, %238 ], [ @nv177_chipset, %239 ], [ @nv4_chipset, %150 ]
  %259 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 14
  store ptr %258, ptr %259, align 4
  br label %260

260:                                              ; preds = %257, %248
  %261 = phi ptr [ %250, %248 ], [ %258, %257 ]
  %262 = load i32, ptr %38, align 8
  %263 = icmp ugt i32 %262, 2
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load ptr, ptr %27, align 8
  %266 = load ptr, ptr %261, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %265, ptr noundef nonnull @.str.16, ptr noundef %266, i32 noundef %97) #7
  br label %267

267:                                              ; preds = %264, %260
  %268 = load ptr, ptr %65, align 4
  %269 = getelementptr i8, ptr %268, i32 4
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %271 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 15
  %272 = load i32, ptr %271, align 8
  %273 = icmp ult i32 %272, 352
  %274 = and i32 %270, 196608
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %273, i1 true, i1 %275
  br i1 %276, label %282, label %277

277:                                              ; preds = %267
  %278 = load i32, ptr %38, align 8
  %279 = icmp ugt i32 %278, 2
  br i1 %279, label %280, label %2921

280:                                              ; preds = %277
  %281 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %281, ptr noundef nonnull @.str.17) #7
  br label %2921

282:                                              ; preds = %267
  %283 = load ptr, ptr %65, align 4
  %284 = getelementptr i8, ptr %283, i32 1052672
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %286 = load i32, ptr %271, align 8
  %287 = icmp ult i32 %286, 17
  br i1 %287, label %295, label %288

288:                                              ; preds = %282
  %289 = load i32, ptr %152, align 4
  %290 = icmp ult i32 %289, 23
  %291 = add i32 %289, -32
  %292 = icmp ult i32 %291, 5
  %293 = or i1 %290, %292
  %294 = select i1 %293, i32 64, i32 4194368
  br label %295

295:                                              ; preds = %288, %282
  %296 = phi i32 [ 64, %282 ], [ %294, %288 ]
  %297 = and i32 %285, %296
  switch i32 %297, label %308 [
    i32 0, label %298
    i32 64, label %300
    i32 4194304, label %302
    i32 4194368, label %304
  ]

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 18
  store i32 13500, ptr %299, align 4
  br label %309

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 18
  store i32 14318, ptr %301, align 4
  br label %309

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 18
  store i32 27000, ptr %303, align 4
  br label %309

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 18
  store i32 25000, ptr %305, align 4
  br label %309

306:                                              ; preds = %63
  %307 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 14
  store ptr @null_chipset, ptr %307, align 4
  br label %309

308:                                              ; preds = %295
  unreachable

309:                                              ; preds = %306, %304, %302, %300, %298
  %310 = load ptr, ptr %32, align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 14
  %314 = load ptr, ptr %313, align 4
  %315 = load ptr, ptr %314, align 4
  store ptr %315, ptr %32, align 8
  br label %316

316:                                              ; preds = %312, %309
  %317 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %317, ptr noundef nonnull @.str.18, ptr noundef nonnull @nvkm_device_ctor.__key) #6
  %318 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 14
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.nvkm_device_chip, ptr %319, i32 0, i32 1
  %321 = load i32, ptr %320, align 4
  %322 = icmp eq i32 %321, 0
  %323 = and i64 %10, 1
  %324 = icmp eq i64 %323, 0
  %325 = or i1 %324, %322
  br i1 %325, label %365, label %326

326:                                              ; preds = %316
  %327 = icmp eq i32 %321, 1
  br i1 %327, label %330, label %328, !prof !15

328:                                              ; preds = %326
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 2, i32 noundef 9, ptr noundef null) #6
  %329 = load ptr, ptr %318, align 4
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi ptr [ %329, %328 ], [ %319, %326 ]
  %332 = getelementptr inbounds %struct.nvkm_device_chip, ptr %331, i32 0, i32 1, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 20
  %335 = tail call i32 %333(ptr noundef %11, i32 noundef 0, i32 noundef -1, ptr noundef %334) #6
  %336 = load ptr, ptr %39, align 4
  %337 = icmp eq ptr %336, %39
  br i1 %337, label %352, label %338

338:                                              ; preds = %347, %330
  %339 = phi ptr [ %348, %347 ], [ %336, %330 ]
  %340 = getelementptr i8, ptr %339, i32 -28
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = getelementptr i8, ptr %339, i32 -24
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %343, %338
  %348 = load ptr, ptr %339, align 4
  %349 = icmp eq ptr %348, %39
  br i1 %349, label %352, label %338

350:                                              ; preds = %343
  %351 = getelementptr i8, ptr %339, i32 -36
  br label %352

352:                                              ; preds = %350, %347, %330
  %353 = phi ptr [ %351, %350 ], [ null, %330 ], [ null, %347 ]
  store ptr %353, ptr %13, align 4
  %354 = icmp eq i32 %335, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %352
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %334, align 4
  %356 = icmp eq i32 %335, -19
  br i1 %356, label %365, label %357

357:                                              ; preds = %355
  %358 = load i32, ptr %38, align 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %2921, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr %27, align 8
  %362 = load ptr, ptr @nvkm_subdev_type, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.20, ptr noundef %362, i32 noundef %335) #7
  br label %2921

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.nvkm_subdev, ptr %353, i32 0, i32 7
  store ptr %334, ptr %364, align 4
  br label %365

365:                                              ; preds = %363, %355, %316
  %366 = load ptr, ptr %318, align 4
  %367 = getelementptr inbounds %struct.nvkm_device_chip, ptr %366, i32 0, i32 2
  %368 = load i32, ptr %367, align 4
  %369 = icmp eq i32 %368, 0
  %370 = and i64 %10, 2
  %371 = icmp eq i64 %370, 0
  %372 = or i1 %371, %369
  br i1 %372, label %412, label %373

373:                                              ; preds = %365
  %374 = icmp eq i32 %368, 1
  br i1 %374, label %377, label %375, !prof !15

375:                                              ; preds = %373
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 3, i32 noundef 9, ptr noundef null) #6
  %376 = load ptr, ptr %318, align 4
  br label %377

377:                                              ; preds = %375, %373
  %378 = phi ptr [ %376, %375 ], [ %366, %373 ]
  %379 = getelementptr inbounds %struct.nvkm_device_chip, ptr %378, i32 0, i32 2, i32 1
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %382 = call i32 %380(ptr noundef %11, i32 noundef 1, i32 noundef -1, ptr noundef %381) #6
  %383 = load ptr, ptr %39, align 4
  %384 = icmp eq ptr %383, %39
  br i1 %384, label %399, label %385

385:                                              ; preds = %394, %377
  %386 = phi ptr [ %395, %394 ], [ %383, %377 ]
  %387 = getelementptr i8, ptr %386, i32 -28
  %388 = load i32, ptr %387, align 4
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = getelementptr i8, ptr %386, i32 -24
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %390, %385
  %395 = load ptr, ptr %386, align 4
  %396 = icmp eq ptr %395, %39
  br i1 %396, label %399, label %385

397:                                              ; preds = %390
  %398 = getelementptr i8, ptr %386, i32 -36
  br label %399

399:                                              ; preds = %397, %394, %377
  %400 = phi ptr [ %398, %397 ], [ null, %377 ], [ null, %394 ]
  store ptr %400, ptr %13, align 4
  %401 = icmp eq i32 %382, 0
  br i1 %401, label %410, label %402

402:                                              ; preds = %399
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %381, align 8
  %403 = icmp eq i32 %382, -19
  br i1 %403, label %412, label %404

404:                                              ; preds = %402
  %405 = load i32, ptr %38, align 8
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %2921, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %27, align 8
  %409 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 1), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %408, ptr noundef nonnull @.str.20, ptr noundef %409, i32 noundef %382) #7
  br label %2921

410:                                              ; preds = %399
  %411 = getelementptr inbounds %struct.nvkm_subdev, ptr %400, i32 0, i32 7
  store ptr %381, ptr %411, align 4
  br label %412

412:                                              ; preds = %410, %402, %365
  %413 = load ptr, ptr %318, align 4
  %414 = getelementptr inbounds %struct.nvkm_device_chip, ptr %413, i32 0, i32 3
  %415 = load i32, ptr %414, align 4
  %416 = icmp eq i32 %415, 0
  %417 = and i64 %10, 4
  %418 = icmp eq i64 %417, 0
  %419 = or i1 %418, %416
  br i1 %419, label %459, label %420

420:                                              ; preds = %412
  %421 = icmp eq i32 %415, 1
  br i1 %421, label %424, label %422, !prof !15

422:                                              ; preds = %420
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 4, i32 noundef 9, ptr noundef null) #6
  %423 = load ptr, ptr %318, align 4
  br label %424

424:                                              ; preds = %422, %420
  %425 = phi ptr [ %423, %422 ], [ %413, %420 ]
  %426 = getelementptr inbounds %struct.nvkm_device_chip, ptr %425, i32 0, i32 3, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 22
  %429 = call i32 %427(ptr noundef %11, i32 noundef 2, i32 noundef -1, ptr noundef %428) #6
  %430 = load ptr, ptr %39, align 4
  %431 = icmp eq ptr %430, %39
  br i1 %431, label %446, label %432

432:                                              ; preds = %441, %424
  %433 = phi ptr [ %442, %441 ], [ %430, %424 ]
  %434 = getelementptr i8, ptr %433, i32 -28
  %435 = load i32, ptr %434, align 4
  %436 = icmp eq i32 %435, 2
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = getelementptr i8, ptr %433, i32 -24
  %439 = load i32, ptr %438, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %437, %432
  %442 = load ptr, ptr %433, align 4
  %443 = icmp eq ptr %442, %39
  br i1 %443, label %446, label %432

444:                                              ; preds = %437
  %445 = getelementptr i8, ptr %433, i32 -36
  br label %446

446:                                              ; preds = %444, %441, %424
  %447 = phi ptr [ %445, %444 ], [ null, %424 ], [ null, %441 ]
  store ptr %447, ptr %13, align 4
  %448 = icmp eq i32 %429, 0
  br i1 %448, label %457, label %449

449:                                              ; preds = %446
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %428, align 4
  %450 = icmp eq i32 %429, -19
  br i1 %450, label %459, label %451

451:                                              ; preds = %449
  %452 = load i32, ptr %38, align 8
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %2921, label %454

454:                                              ; preds = %451
  %455 = load ptr, ptr %27, align 8
  %456 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 2), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %455, ptr noundef nonnull @.str.20, ptr noundef %456, i32 noundef %429) #7
  br label %2921

457:                                              ; preds = %446
  %458 = getelementptr inbounds %struct.nvkm_subdev, ptr %447, i32 0, i32 7
  store ptr %428, ptr %458, align 4
  br label %459

459:                                              ; preds = %457, %449, %412
  %460 = load ptr, ptr %318, align 4
  %461 = getelementptr inbounds %struct.nvkm_device_chip, ptr %460, i32 0, i32 4
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 0
  %464 = and i64 %10, 8
  %465 = icmp eq i64 %464, 0
  %466 = or i1 %465, %463
  br i1 %466, label %506, label %467

467:                                              ; preds = %459
  %468 = icmp eq i32 %462, 1
  br i1 %468, label %471, label %469, !prof !15

469:                                              ; preds = %467
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 5, i32 noundef 9, ptr noundef null) #6
  %470 = load ptr, ptr %318, align 4
  br label %471

471:                                              ; preds = %469, %467
  %472 = phi ptr [ %470, %469 ], [ %460, %467 ]
  %473 = getelementptr inbounds %struct.nvkm_device_chip, ptr %472, i32 0, i32 4, i32 1
  %474 = load ptr, ptr %473, align 4
  %475 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 23
  %476 = call i32 %474(ptr noundef %11, i32 noundef 3, i32 noundef -1, ptr noundef %475) #6
  %477 = load ptr, ptr %39, align 4
  %478 = icmp eq ptr %477, %39
  br i1 %478, label %493, label %479

479:                                              ; preds = %488, %471
  %480 = phi ptr [ %489, %488 ], [ %477, %471 ]
  %481 = getelementptr i8, ptr %480, i32 -28
  %482 = load i32, ptr %481, align 4
  %483 = icmp eq i32 %482, 3
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = getelementptr i8, ptr %480, i32 -24
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %484, %479
  %489 = load ptr, ptr %480, align 4
  %490 = icmp eq ptr %489, %39
  br i1 %490, label %493, label %479

491:                                              ; preds = %484
  %492 = getelementptr i8, ptr %480, i32 -36
  br label %493

493:                                              ; preds = %491, %488, %471
  %494 = phi ptr [ %492, %491 ], [ null, %471 ], [ null, %488 ]
  store ptr %494, ptr %13, align 4
  %495 = icmp eq i32 %476, 0
  br i1 %495, label %504, label %496

496:                                              ; preds = %493
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %475, align 8
  %497 = icmp eq i32 %476, -19
  br i1 %497, label %506, label %498

498:                                              ; preds = %496
  %499 = load i32, ptr %38, align 8
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %2921, label %501

501:                                              ; preds = %498
  %502 = load ptr, ptr %27, align 8
  %503 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 3), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %502, ptr noundef nonnull @.str.20, ptr noundef %503, i32 noundef %476) #7
  br label %2921

504:                                              ; preds = %493
  %505 = getelementptr inbounds %struct.nvkm_subdev, ptr %494, i32 0, i32 7
  store ptr %475, ptr %505, align 4
  br label %506

506:                                              ; preds = %504, %496, %459
  %507 = load ptr, ptr %318, align 4
  %508 = getelementptr inbounds %struct.nvkm_device_chip, ptr %507, i32 0, i32 5
  %509 = load i32, ptr %508, align 4
  %510 = icmp eq i32 %509, 0
  %511 = and i64 %10, 16
  %512 = icmp eq i64 %511, 0
  %513 = or i1 %512, %510
  br i1 %513, label %553, label %514

514:                                              ; preds = %506
  %515 = icmp eq i32 %509, 1
  br i1 %515, label %518, label %516, !prof !15

516:                                              ; preds = %514
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 6, i32 noundef 9, ptr noundef null) #6
  %517 = load ptr, ptr %318, align 4
  br label %518

518:                                              ; preds = %516, %514
  %519 = phi ptr [ %517, %516 ], [ %507, %514 ]
  %520 = getelementptr inbounds %struct.nvkm_device_chip, ptr %519, i32 0, i32 5, i32 1
  %521 = load ptr, ptr %520, align 4
  %522 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 24
  %523 = call i32 %521(ptr noundef %11, i32 noundef 4, i32 noundef -1, ptr noundef %522) #6
  %524 = load ptr, ptr %39, align 4
  %525 = icmp eq ptr %524, %39
  br i1 %525, label %540, label %526

526:                                              ; preds = %535, %518
  %527 = phi ptr [ %536, %535 ], [ %524, %518 ]
  %528 = getelementptr i8, ptr %527, i32 -28
  %529 = load i32, ptr %528, align 4
  %530 = icmp eq i32 %529, 4
  br i1 %530, label %531, label %535

531:                                              ; preds = %526
  %532 = getelementptr i8, ptr %527, i32 -24
  %533 = load i32, ptr %532, align 4
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %538, label %535

535:                                              ; preds = %531, %526
  %536 = load ptr, ptr %527, align 4
  %537 = icmp eq ptr %536, %39
  br i1 %537, label %540, label %526

538:                                              ; preds = %531
  %539 = getelementptr i8, ptr %527, i32 -36
  br label %540

540:                                              ; preds = %538, %535, %518
  %541 = phi ptr [ %539, %538 ], [ null, %518 ], [ null, %535 ]
  store ptr %541, ptr %13, align 4
  %542 = icmp eq i32 %523, 0
  br i1 %542, label %551, label %543

543:                                              ; preds = %540
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %522, align 4
  %544 = icmp eq i32 %523, -19
  br i1 %544, label %553, label %545

545:                                              ; preds = %543
  %546 = load i32, ptr %38, align 8
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %2921, label %548

548:                                              ; preds = %545
  %549 = load ptr, ptr %27, align 8
  %550 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 4), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %549, ptr noundef nonnull @.str.20, ptr noundef %550, i32 noundef %523) #7
  br label %2921

551:                                              ; preds = %540
  %552 = getelementptr inbounds %struct.nvkm_subdev, ptr %541, i32 0, i32 7
  store ptr %522, ptr %552, align 4
  br label %553

553:                                              ; preds = %551, %543, %506
  %554 = load ptr, ptr %318, align 4
  %555 = getelementptr inbounds %struct.nvkm_device_chip, ptr %554, i32 0, i32 6
  %556 = load i32, ptr %555, align 4
  %557 = icmp eq i32 %556, 0
  %558 = and i64 %10, 32
  %559 = icmp eq i64 %558, 0
  %560 = or i1 %559, %557
  br i1 %560, label %600, label %561

561:                                              ; preds = %553
  %562 = icmp eq i32 %556, 1
  br i1 %562, label %565, label %563, !prof !15

563:                                              ; preds = %561
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 7, i32 noundef 9, ptr noundef null) #6
  %564 = load ptr, ptr %318, align 4
  br label %565

565:                                              ; preds = %563, %561
  %566 = phi ptr [ %564, %563 ], [ %554, %561 ]
  %567 = getelementptr inbounds %struct.nvkm_device_chip, ptr %566, i32 0, i32 6, i32 1
  %568 = load ptr, ptr %567, align 4
  %569 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 25
  %570 = call i32 %568(ptr noundef %11, i32 noundef 5, i32 noundef -1, ptr noundef %569) #6
  %571 = load ptr, ptr %39, align 4
  %572 = icmp eq ptr %571, %39
  br i1 %572, label %587, label %573

573:                                              ; preds = %582, %565
  %574 = phi ptr [ %583, %582 ], [ %571, %565 ]
  %575 = getelementptr i8, ptr %574, i32 -28
  %576 = load i32, ptr %575, align 4
  %577 = icmp eq i32 %576, 5
  br i1 %577, label %578, label %582

578:                                              ; preds = %573
  %579 = getelementptr i8, ptr %574, i32 -24
  %580 = load i32, ptr %579, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %578, %573
  %583 = load ptr, ptr %574, align 4
  %584 = icmp eq ptr %583, %39
  br i1 %584, label %587, label %573

585:                                              ; preds = %578
  %586 = getelementptr i8, ptr %574, i32 -36
  br label %587

587:                                              ; preds = %585, %582, %565
  %588 = phi ptr [ %586, %585 ], [ null, %565 ], [ null, %582 ]
  store ptr %588, ptr %13, align 4
  %589 = icmp eq i32 %570, 0
  br i1 %589, label %598, label %590

590:                                              ; preds = %587
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %569, align 8
  %591 = icmp eq i32 %570, -19
  br i1 %591, label %600, label %592

592:                                              ; preds = %590
  %593 = load i32, ptr %38, align 8
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %2921, label %595

595:                                              ; preds = %592
  %596 = load ptr, ptr %27, align 8
  %597 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 5), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %596, ptr noundef nonnull @.str.20, ptr noundef %597, i32 noundef %570) #7
  br label %2921

598:                                              ; preds = %587
  %599 = getelementptr inbounds %struct.nvkm_subdev, ptr %588, i32 0, i32 7
  store ptr %569, ptr %599, align 4
  br label %600

600:                                              ; preds = %598, %590, %553
  %601 = load ptr, ptr %318, align 4
  %602 = getelementptr inbounds %struct.nvkm_device_chip, ptr %601, i32 0, i32 7
  %603 = load i32, ptr %602, align 4
  %604 = icmp eq i32 %603, 0
  %605 = and i64 %10, 64
  %606 = icmp eq i64 %605, 0
  %607 = or i1 %606, %604
  br i1 %607, label %647, label %608

608:                                              ; preds = %600
  %609 = icmp eq i32 %603, 1
  br i1 %609, label %612, label %610, !prof !15

610:                                              ; preds = %608
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef 9, ptr noundef null) #6
  %611 = load ptr, ptr %318, align 4
  br label %612

612:                                              ; preds = %610, %608
  %613 = phi ptr [ %611, %610 ], [ %601, %608 ]
  %614 = getelementptr inbounds %struct.nvkm_device_chip, ptr %613, i32 0, i32 7, i32 1
  %615 = load ptr, ptr %614, align 4
  %616 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 26
  %617 = call i32 %615(ptr noundef %11, i32 noundef 6, i32 noundef -1, ptr noundef %616) #6
  %618 = load ptr, ptr %39, align 4
  %619 = icmp eq ptr %618, %39
  br i1 %619, label %634, label %620

620:                                              ; preds = %629, %612
  %621 = phi ptr [ %630, %629 ], [ %618, %612 ]
  %622 = getelementptr i8, ptr %621, i32 -28
  %623 = load i32, ptr %622, align 4
  %624 = icmp eq i32 %623, 6
  br i1 %624, label %625, label %629

625:                                              ; preds = %620
  %626 = getelementptr i8, ptr %621, i32 -24
  %627 = load i32, ptr %626, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %632, label %629

629:                                              ; preds = %625, %620
  %630 = load ptr, ptr %621, align 4
  %631 = icmp eq ptr %630, %39
  br i1 %631, label %634, label %620

632:                                              ; preds = %625
  %633 = getelementptr i8, ptr %621, i32 -36
  br label %634

634:                                              ; preds = %632, %629, %612
  %635 = phi ptr [ %633, %632 ], [ null, %612 ], [ null, %629 ]
  store ptr %635, ptr %13, align 4
  %636 = icmp eq i32 %617, 0
  br i1 %636, label %645, label %637

637:                                              ; preds = %634
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %616, align 4
  %638 = icmp eq i32 %617, -19
  br i1 %638, label %647, label %639

639:                                              ; preds = %637
  %640 = load i32, ptr %38, align 8
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %2921, label %642

642:                                              ; preds = %639
  %643 = load ptr, ptr %27, align 8
  %644 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 6), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %643, ptr noundef nonnull @.str.20, ptr noundef %644, i32 noundef %617) #7
  br label %2921

645:                                              ; preds = %634
  %646 = getelementptr inbounds %struct.nvkm_subdev, ptr %635, i32 0, i32 7
  store ptr %616, ptr %646, align 4
  br label %647

647:                                              ; preds = %645, %637, %600
  %648 = load ptr, ptr %318, align 4
  %649 = getelementptr inbounds %struct.nvkm_device_chip, ptr %648, i32 0, i32 8
  %650 = load i32, ptr %649, align 4
  %651 = icmp eq i32 %650, 0
  %652 = and i64 %10, 128
  %653 = icmp eq i64 %652, 0
  %654 = or i1 %653, %651
  br i1 %654, label %694, label %655

655:                                              ; preds = %647
  %656 = icmp eq i32 %650, 1
  br i1 %656, label %659, label %657, !prof !15

657:                                              ; preds = %655
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 9, i32 noundef 9, ptr noundef null) #6
  %658 = load ptr, ptr %318, align 4
  br label %659

659:                                              ; preds = %657, %655
  %660 = phi ptr [ %658, %657 ], [ %648, %655 ]
  %661 = getelementptr inbounds %struct.nvkm_device_chip, ptr %660, i32 0, i32 8, i32 1
  %662 = load ptr, ptr %661, align 4
  %663 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 27
  %664 = call i32 %662(ptr noundef %11, i32 noundef 7, i32 noundef -1, ptr noundef %663) #6
  %665 = load ptr, ptr %39, align 4
  %666 = icmp eq ptr %665, %39
  br i1 %666, label %681, label %667

667:                                              ; preds = %676, %659
  %668 = phi ptr [ %677, %676 ], [ %665, %659 ]
  %669 = getelementptr i8, ptr %668, i32 -28
  %670 = load i32, ptr %669, align 4
  %671 = icmp eq i32 %670, 7
  br i1 %671, label %672, label %676

672:                                              ; preds = %667
  %673 = getelementptr i8, ptr %668, i32 -24
  %674 = load i32, ptr %673, align 4
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %679, label %676

676:                                              ; preds = %672, %667
  %677 = load ptr, ptr %668, align 4
  %678 = icmp eq ptr %677, %39
  br i1 %678, label %681, label %667

679:                                              ; preds = %672
  %680 = getelementptr i8, ptr %668, i32 -36
  br label %681

681:                                              ; preds = %679, %676, %659
  %682 = phi ptr [ %680, %679 ], [ null, %659 ], [ null, %676 ]
  store ptr %682, ptr %13, align 4
  %683 = icmp eq i32 %664, 0
  br i1 %683, label %692, label %684

684:                                              ; preds = %681
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %663, align 8
  %685 = icmp eq i32 %664, -19
  br i1 %685, label %694, label %686

686:                                              ; preds = %684
  %687 = load i32, ptr %38, align 8
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %2921, label %689

689:                                              ; preds = %686
  %690 = load ptr, ptr %27, align 8
  %691 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 7), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %690, ptr noundef nonnull @.str.20, ptr noundef %691, i32 noundef %664) #7
  br label %2921

692:                                              ; preds = %681
  %693 = getelementptr inbounds %struct.nvkm_subdev, ptr %682, i32 0, i32 7
  store ptr %663, ptr %693, align 4
  br label %694

694:                                              ; preds = %692, %684, %647
  %695 = load ptr, ptr %318, align 4
  %696 = getelementptr inbounds %struct.nvkm_device_chip, ptr %695, i32 0, i32 9
  %697 = load i32, ptr %696, align 4
  %698 = icmp eq i32 %697, 0
  %699 = and i64 %10, 256
  %700 = icmp eq i64 %699, 0
  %701 = or i1 %700, %698
  br i1 %701, label %741, label %702

702:                                              ; preds = %694
  %703 = icmp eq i32 %697, 1
  br i1 %703, label %706, label %704, !prof !15

704:                                              ; preds = %702
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 10, i32 noundef 9, ptr noundef null) #6
  %705 = load ptr, ptr %318, align 4
  br label %706

706:                                              ; preds = %704, %702
  %707 = phi ptr [ %705, %704 ], [ %695, %702 ]
  %708 = getelementptr inbounds %struct.nvkm_device_chip, ptr %707, i32 0, i32 9, i32 1
  %709 = load ptr, ptr %708, align 4
  %710 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 28
  %711 = call i32 %709(ptr noundef %11, i32 noundef 8, i32 noundef -1, ptr noundef %710) #6
  %712 = load ptr, ptr %39, align 4
  %713 = icmp eq ptr %712, %39
  br i1 %713, label %728, label %714

714:                                              ; preds = %723, %706
  %715 = phi ptr [ %724, %723 ], [ %712, %706 ]
  %716 = getelementptr i8, ptr %715, i32 -28
  %717 = load i32, ptr %716, align 4
  %718 = icmp eq i32 %717, 8
  br i1 %718, label %719, label %723

719:                                              ; preds = %714
  %720 = getelementptr i8, ptr %715, i32 -24
  %721 = load i32, ptr %720, align 4
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %726, label %723

723:                                              ; preds = %719, %714
  %724 = load ptr, ptr %715, align 4
  %725 = icmp eq ptr %724, %39
  br i1 %725, label %728, label %714

726:                                              ; preds = %719
  %727 = getelementptr i8, ptr %715, i32 -36
  br label %728

728:                                              ; preds = %726, %723, %706
  %729 = phi ptr [ %727, %726 ], [ null, %706 ], [ null, %723 ]
  store ptr %729, ptr %13, align 4
  %730 = icmp eq i32 %711, 0
  br i1 %730, label %739, label %731

731:                                              ; preds = %728
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %710, align 4
  %732 = icmp eq i32 %711, -19
  br i1 %732, label %741, label %733

733:                                              ; preds = %731
  %734 = load i32, ptr %38, align 8
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %2921, label %736

736:                                              ; preds = %733
  %737 = load ptr, ptr %27, align 8
  %738 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 8), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %737, ptr noundef nonnull @.str.20, ptr noundef %738, i32 noundef %711) #7
  br label %2921

739:                                              ; preds = %728
  %740 = getelementptr inbounds %struct.nvkm_subdev, ptr %729, i32 0, i32 7
  store ptr %710, ptr %740, align 4
  br label %741

741:                                              ; preds = %739, %731, %694
  %742 = load ptr, ptr %318, align 4
  %743 = getelementptr inbounds %struct.nvkm_device_chip, ptr %742, i32 0, i32 10
  %744 = load i32, ptr %743, align 4
  %745 = icmp eq i32 %744, 0
  %746 = and i64 %10, 512
  %747 = icmp eq i64 %746, 0
  %748 = or i1 %747, %745
  br i1 %748, label %788, label %749

749:                                              ; preds = %741
  %750 = icmp eq i32 %744, 1
  br i1 %750, label %753, label %751, !prof !15

751:                                              ; preds = %749
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 11, i32 noundef 9, ptr noundef null) #6
  %752 = load ptr, ptr %318, align 4
  br label %753

753:                                              ; preds = %751, %749
  %754 = phi ptr [ %752, %751 ], [ %742, %749 ]
  %755 = getelementptr inbounds %struct.nvkm_device_chip, ptr %754, i32 0, i32 10, i32 1
  %756 = load ptr, ptr %755, align 4
  %757 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 29
  %758 = call i32 %756(ptr noundef %11, i32 noundef 9, i32 noundef -1, ptr noundef %757) #6
  %759 = load ptr, ptr %39, align 4
  %760 = icmp eq ptr %759, %39
  br i1 %760, label %775, label %761

761:                                              ; preds = %770, %753
  %762 = phi ptr [ %771, %770 ], [ %759, %753 ]
  %763 = getelementptr i8, ptr %762, i32 -28
  %764 = load i32, ptr %763, align 4
  %765 = icmp eq i32 %764, 9
  br i1 %765, label %766, label %770

766:                                              ; preds = %761
  %767 = getelementptr i8, ptr %762, i32 -24
  %768 = load i32, ptr %767, align 4
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %773, label %770

770:                                              ; preds = %766, %761
  %771 = load ptr, ptr %762, align 4
  %772 = icmp eq ptr %771, %39
  br i1 %772, label %775, label %761

773:                                              ; preds = %766
  %774 = getelementptr i8, ptr %762, i32 -36
  br label %775

775:                                              ; preds = %773, %770, %753
  %776 = phi ptr [ %774, %773 ], [ null, %753 ], [ null, %770 ]
  store ptr %776, ptr %13, align 4
  %777 = icmp eq i32 %758, 0
  br i1 %777, label %786, label %778

778:                                              ; preds = %775
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %757, align 8
  %779 = icmp eq i32 %758, -19
  br i1 %779, label %788, label %780

780:                                              ; preds = %778
  %781 = load i32, ptr %38, align 8
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %2921, label %783

783:                                              ; preds = %780
  %784 = load ptr, ptr %27, align 8
  %785 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 9), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %784, ptr noundef nonnull @.str.20, ptr noundef %785, i32 noundef %758) #7
  br label %2921

786:                                              ; preds = %775
  %787 = getelementptr inbounds %struct.nvkm_subdev, ptr %776, i32 0, i32 7
  store ptr %757, ptr %787, align 4
  br label %788

788:                                              ; preds = %786, %778, %741
  %789 = load ptr, ptr %318, align 4
  %790 = getelementptr inbounds %struct.nvkm_device_chip, ptr %789, i32 0, i32 11
  %791 = load i32, ptr %790, align 4
  %792 = icmp eq i32 %791, 0
  %793 = and i64 %10, 1024
  %794 = icmp eq i64 %793, 0
  %795 = or i1 %794, %792
  br i1 %795, label %835, label %796

796:                                              ; preds = %788
  %797 = icmp eq i32 %791, 1
  br i1 %797, label %800, label %798, !prof !15

798:                                              ; preds = %796
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 12, i32 noundef 9, ptr noundef null) #6
  %799 = load ptr, ptr %318, align 4
  br label %800

800:                                              ; preds = %798, %796
  %801 = phi ptr [ %799, %798 ], [ %789, %796 ]
  %802 = getelementptr inbounds %struct.nvkm_device_chip, ptr %801, i32 0, i32 11, i32 1
  %803 = load ptr, ptr %802, align 4
  %804 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 30
  %805 = call i32 %803(ptr noundef %11, i32 noundef 10, i32 noundef -1, ptr noundef %804) #6
  %806 = load ptr, ptr %39, align 4
  %807 = icmp eq ptr %806, %39
  br i1 %807, label %822, label %808

808:                                              ; preds = %817, %800
  %809 = phi ptr [ %818, %817 ], [ %806, %800 ]
  %810 = getelementptr i8, ptr %809, i32 -28
  %811 = load i32, ptr %810, align 4
  %812 = icmp eq i32 %811, 10
  br i1 %812, label %813, label %817

813:                                              ; preds = %808
  %814 = getelementptr i8, ptr %809, i32 -24
  %815 = load i32, ptr %814, align 4
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %820, label %817

817:                                              ; preds = %813, %808
  %818 = load ptr, ptr %809, align 4
  %819 = icmp eq ptr %818, %39
  br i1 %819, label %822, label %808

820:                                              ; preds = %813
  %821 = getelementptr i8, ptr %809, i32 -36
  br label %822

822:                                              ; preds = %820, %817, %800
  %823 = phi ptr [ %821, %820 ], [ null, %800 ], [ null, %817 ]
  store ptr %823, ptr %13, align 4
  %824 = icmp eq i32 %805, 0
  br i1 %824, label %833, label %825

825:                                              ; preds = %822
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %804, align 4
  %826 = icmp eq i32 %805, -19
  br i1 %826, label %835, label %827

827:                                              ; preds = %825
  %828 = load i32, ptr %38, align 8
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %2921, label %830

830:                                              ; preds = %827
  %831 = load ptr, ptr %27, align 8
  %832 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 10), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %831, ptr noundef nonnull @.str.20, ptr noundef %832, i32 noundef %805) #7
  br label %2921

833:                                              ; preds = %822
  %834 = getelementptr inbounds %struct.nvkm_subdev, ptr %823, i32 0, i32 7
  store ptr %804, ptr %834, align 4
  br label %835

835:                                              ; preds = %833, %825, %788
  %836 = load ptr, ptr %318, align 4
  %837 = getelementptr inbounds %struct.nvkm_device_chip, ptr %836, i32 0, i32 12
  %838 = load i32, ptr %837, align 4
  %839 = icmp eq i32 %838, 0
  %840 = and i64 %10, 2048
  %841 = icmp eq i64 %840, 0
  %842 = or i1 %841, %839
  br i1 %842, label %882, label %843

843:                                              ; preds = %835
  %844 = icmp eq i32 %838, 1
  br i1 %844, label %847, label %845, !prof !15

845:                                              ; preds = %843
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 13, i32 noundef 9, ptr noundef null) #6
  %846 = load ptr, ptr %318, align 4
  br label %847

847:                                              ; preds = %845, %843
  %848 = phi ptr [ %846, %845 ], [ %836, %843 ]
  %849 = getelementptr inbounds %struct.nvkm_device_chip, ptr %848, i32 0, i32 12, i32 1
  %850 = load ptr, ptr %849, align 4
  %851 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 31
  %852 = call i32 %850(ptr noundef %11, i32 noundef 11, i32 noundef -1, ptr noundef %851) #6
  %853 = load ptr, ptr %39, align 4
  %854 = icmp eq ptr %853, %39
  br i1 %854, label %869, label %855

855:                                              ; preds = %864, %847
  %856 = phi ptr [ %865, %864 ], [ %853, %847 ]
  %857 = getelementptr i8, ptr %856, i32 -28
  %858 = load i32, ptr %857, align 4
  %859 = icmp eq i32 %858, 11
  br i1 %859, label %860, label %864

860:                                              ; preds = %855
  %861 = getelementptr i8, ptr %856, i32 -24
  %862 = load i32, ptr %861, align 4
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %867, label %864

864:                                              ; preds = %860, %855
  %865 = load ptr, ptr %856, align 4
  %866 = icmp eq ptr %865, %39
  br i1 %866, label %869, label %855

867:                                              ; preds = %860
  %868 = getelementptr i8, ptr %856, i32 -36
  br label %869

869:                                              ; preds = %867, %864, %847
  %870 = phi ptr [ %868, %867 ], [ null, %847 ], [ null, %864 ]
  store ptr %870, ptr %13, align 4
  %871 = icmp eq i32 %852, 0
  br i1 %871, label %880, label %872

872:                                              ; preds = %869
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %851, align 8
  %873 = icmp eq i32 %852, -19
  br i1 %873, label %882, label %874

874:                                              ; preds = %872
  %875 = load i32, ptr %38, align 8
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %2921, label %877

877:                                              ; preds = %874
  %878 = load ptr, ptr %27, align 8
  %879 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 11), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %878, ptr noundef nonnull @.str.20, ptr noundef %879, i32 noundef %852) #7
  br label %2921

880:                                              ; preds = %869
  %881 = getelementptr inbounds %struct.nvkm_subdev, ptr %870, i32 0, i32 7
  store ptr %851, ptr %881, align 4
  br label %882

882:                                              ; preds = %880, %872, %835
  %883 = load ptr, ptr %318, align 4
  %884 = getelementptr inbounds %struct.nvkm_device_chip, ptr %883, i32 0, i32 13
  %885 = load i32, ptr %884, align 4
  %886 = icmp eq i32 %885, 0
  %887 = and i64 %10, 4096
  %888 = icmp eq i64 %887, 0
  %889 = or i1 %888, %886
  br i1 %889, label %929, label %890

890:                                              ; preds = %882
  %891 = icmp eq i32 %885, 1
  br i1 %891, label %894, label %892, !prof !15

892:                                              ; preds = %890
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 14, i32 noundef 9, ptr noundef null) #6
  %893 = load ptr, ptr %318, align 4
  br label %894

894:                                              ; preds = %892, %890
  %895 = phi ptr [ %893, %892 ], [ %883, %890 ]
  %896 = getelementptr inbounds %struct.nvkm_device_chip, ptr %895, i32 0, i32 13, i32 1
  %897 = load ptr, ptr %896, align 4
  %898 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 32
  %899 = call i32 %897(ptr noundef %11, i32 noundef 12, i32 noundef -1, ptr noundef %898) #6
  %900 = load ptr, ptr %39, align 4
  %901 = icmp eq ptr %900, %39
  br i1 %901, label %916, label %902

902:                                              ; preds = %911, %894
  %903 = phi ptr [ %912, %911 ], [ %900, %894 ]
  %904 = getelementptr i8, ptr %903, i32 -28
  %905 = load i32, ptr %904, align 4
  %906 = icmp eq i32 %905, 12
  br i1 %906, label %907, label %911

907:                                              ; preds = %902
  %908 = getelementptr i8, ptr %903, i32 -24
  %909 = load i32, ptr %908, align 4
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %914, label %911

911:                                              ; preds = %907, %902
  %912 = load ptr, ptr %903, align 4
  %913 = icmp eq ptr %912, %39
  br i1 %913, label %916, label %902

914:                                              ; preds = %907
  %915 = getelementptr i8, ptr %903, i32 -36
  br label %916

916:                                              ; preds = %914, %911, %894
  %917 = phi ptr [ %915, %914 ], [ null, %894 ], [ null, %911 ]
  store ptr %917, ptr %13, align 4
  %918 = icmp eq i32 %899, 0
  br i1 %918, label %927, label %919

919:                                              ; preds = %916
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %898, align 4
  %920 = icmp eq i32 %899, -19
  br i1 %920, label %929, label %921

921:                                              ; preds = %919
  %922 = load i32, ptr %38, align 8
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %2921, label %924

924:                                              ; preds = %921
  %925 = load ptr, ptr %27, align 8
  %926 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 12), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %925, ptr noundef nonnull @.str.20, ptr noundef %926, i32 noundef %899) #7
  br label %2921

927:                                              ; preds = %916
  %928 = getelementptr inbounds %struct.nvkm_subdev, ptr %917, i32 0, i32 7
  store ptr %898, ptr %928, align 4
  br label %929

929:                                              ; preds = %927, %919, %882
  %930 = load ptr, ptr %318, align 4
  %931 = getelementptr inbounds %struct.nvkm_device_chip, ptr %930, i32 0, i32 14
  %932 = load i32, ptr %931, align 4
  %933 = icmp eq i32 %932, 0
  %934 = and i64 %10, 8192
  %935 = icmp eq i64 %934, 0
  %936 = or i1 %935, %933
  br i1 %936, label %976, label %937

937:                                              ; preds = %929
  %938 = icmp eq i32 %932, 1
  br i1 %938, label %941, label %939, !prof !15

939:                                              ; preds = %937
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 15, i32 noundef 9, ptr noundef null) #6
  %940 = load ptr, ptr %318, align 4
  br label %941

941:                                              ; preds = %939, %937
  %942 = phi ptr [ %940, %939 ], [ %930, %937 ]
  %943 = getelementptr inbounds %struct.nvkm_device_chip, ptr %942, i32 0, i32 14, i32 1
  %944 = load ptr, ptr %943, align 4
  %945 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 33
  %946 = call i32 %944(ptr noundef %11, i32 noundef 13, i32 noundef -1, ptr noundef %945) #6
  %947 = load ptr, ptr %39, align 4
  %948 = icmp eq ptr %947, %39
  br i1 %948, label %963, label %949

949:                                              ; preds = %958, %941
  %950 = phi ptr [ %959, %958 ], [ %947, %941 ]
  %951 = getelementptr i8, ptr %950, i32 -28
  %952 = load i32, ptr %951, align 4
  %953 = icmp eq i32 %952, 13
  br i1 %953, label %954, label %958

954:                                              ; preds = %949
  %955 = getelementptr i8, ptr %950, i32 -24
  %956 = load i32, ptr %955, align 4
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %961, label %958

958:                                              ; preds = %954, %949
  %959 = load ptr, ptr %950, align 4
  %960 = icmp eq ptr %959, %39
  br i1 %960, label %963, label %949

961:                                              ; preds = %954
  %962 = getelementptr i8, ptr %950, i32 -36
  br label %963

963:                                              ; preds = %961, %958, %941
  %964 = phi ptr [ %962, %961 ], [ null, %941 ], [ null, %958 ]
  store ptr %964, ptr %13, align 4
  %965 = icmp eq i32 %946, 0
  br i1 %965, label %974, label %966

966:                                              ; preds = %963
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %945, align 8
  %967 = icmp eq i32 %946, -19
  br i1 %967, label %976, label %968

968:                                              ; preds = %966
  %969 = load i32, ptr %38, align 8
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %2921, label %971

971:                                              ; preds = %968
  %972 = load ptr, ptr %27, align 8
  %973 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 13), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %972, ptr noundef nonnull @.str.20, ptr noundef %973, i32 noundef %946) #7
  br label %2921

974:                                              ; preds = %963
  %975 = getelementptr inbounds %struct.nvkm_subdev, ptr %964, i32 0, i32 7
  store ptr %945, ptr %975, align 4
  br label %976

976:                                              ; preds = %974, %966, %929
  %977 = load ptr, ptr %318, align 4
  %978 = getelementptr inbounds %struct.nvkm_device_chip, ptr %977, i32 0, i32 15
  %979 = load i32, ptr %978, align 4
  %980 = icmp eq i32 %979, 0
  %981 = and i64 %10, 16384
  %982 = icmp eq i64 %981, 0
  %983 = or i1 %982, %980
  br i1 %983, label %1023, label %984

984:                                              ; preds = %976
  %985 = icmp eq i32 %979, 1
  br i1 %985, label %988, label %986, !prof !15

986:                                              ; preds = %984
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 9, ptr noundef null) #6
  %987 = load ptr, ptr %318, align 4
  br label %988

988:                                              ; preds = %986, %984
  %989 = phi ptr [ %987, %986 ], [ %977, %984 ]
  %990 = getelementptr inbounds %struct.nvkm_device_chip, ptr %989, i32 0, i32 15, i32 1
  %991 = load ptr, ptr %990, align 4
  %992 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 34
  %993 = call i32 %991(ptr noundef %11, i32 noundef 14, i32 noundef -1, ptr noundef %992) #6
  %994 = load ptr, ptr %39, align 4
  %995 = icmp eq ptr %994, %39
  br i1 %995, label %1010, label %996

996:                                              ; preds = %1005, %988
  %997 = phi ptr [ %1006, %1005 ], [ %994, %988 ]
  %998 = getelementptr i8, ptr %997, i32 -28
  %999 = load i32, ptr %998, align 4
  %1000 = icmp eq i32 %999, 14
  br i1 %1000, label %1001, label %1005

1001:                                             ; preds = %996
  %1002 = getelementptr i8, ptr %997, i32 -24
  %1003 = load i32, ptr %1002, align 4
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1008, label %1005

1005:                                             ; preds = %1001, %996
  %1006 = load ptr, ptr %997, align 4
  %1007 = icmp eq ptr %1006, %39
  br i1 %1007, label %1010, label %996

1008:                                             ; preds = %1001
  %1009 = getelementptr i8, ptr %997, i32 -36
  br label %1010

1010:                                             ; preds = %1008, %1005, %988
  %1011 = phi ptr [ %1009, %1008 ], [ null, %988 ], [ null, %1005 ]
  store ptr %1011, ptr %13, align 4
  %1012 = icmp eq i32 %993, 0
  br i1 %1012, label %1021, label %1013

1013:                                             ; preds = %1010
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %992, align 4
  %1014 = icmp eq i32 %993, -19
  br i1 %1014, label %1023, label %1015

1015:                                             ; preds = %1013
  %1016 = load i32, ptr %38, align 8
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %2921, label %1018

1018:                                             ; preds = %1015
  %1019 = load ptr, ptr %27, align 8
  %1020 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 14), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1019, ptr noundef nonnull @.str.20, ptr noundef %1020, i32 noundef %993) #7
  br label %2921

1021:                                             ; preds = %1010
  %1022 = getelementptr inbounds %struct.nvkm_subdev, ptr %1011, i32 0, i32 7
  store ptr %992, ptr %1022, align 4
  br label %1023

1023:                                             ; preds = %1021, %1013, %976
  %1024 = load ptr, ptr %318, align 4
  %1025 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1024, i32 0, i32 16
  %1026 = load i32, ptr %1025, align 4
  %1027 = icmp eq i32 %1026, 0
  %1028 = and i64 %10, 32768
  %1029 = icmp eq i64 %1028, 0
  %1030 = or i1 %1029, %1027
  br i1 %1030, label %1070, label %1031

1031:                                             ; preds = %1023
  %1032 = icmp eq i32 %1026, 1
  br i1 %1032, label %1035, label %1033, !prof !15

1033:                                             ; preds = %1031
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 17, i32 noundef 9, ptr noundef null) #6
  %1034 = load ptr, ptr %318, align 4
  br label %1035

1035:                                             ; preds = %1033, %1031
  %1036 = phi ptr [ %1034, %1033 ], [ %1024, %1031 ]
  %1037 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1036, i32 0, i32 16, i32 1
  %1038 = load ptr, ptr %1037, align 4
  %1039 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 35
  %1040 = call i32 %1038(ptr noundef %11, i32 noundef 15, i32 noundef -1, ptr noundef %1039) #6
  %1041 = load ptr, ptr %39, align 4
  %1042 = icmp eq ptr %1041, %39
  br i1 %1042, label %1057, label %1043

1043:                                             ; preds = %1052, %1035
  %1044 = phi ptr [ %1053, %1052 ], [ %1041, %1035 ]
  %1045 = getelementptr i8, ptr %1044, i32 -28
  %1046 = load i32, ptr %1045, align 4
  %1047 = icmp eq i32 %1046, 15
  br i1 %1047, label %1048, label %1052

1048:                                             ; preds = %1043
  %1049 = getelementptr i8, ptr %1044, i32 -24
  %1050 = load i32, ptr %1049, align 4
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1055, label %1052

1052:                                             ; preds = %1048, %1043
  %1053 = load ptr, ptr %1044, align 4
  %1054 = icmp eq ptr %1053, %39
  br i1 %1054, label %1057, label %1043

1055:                                             ; preds = %1048
  %1056 = getelementptr i8, ptr %1044, i32 -36
  br label %1057

1057:                                             ; preds = %1055, %1052, %1035
  %1058 = phi ptr [ %1056, %1055 ], [ null, %1035 ], [ null, %1052 ]
  store ptr %1058, ptr %13, align 4
  %1059 = icmp eq i32 %1040, 0
  br i1 %1059, label %1068, label %1060

1060:                                             ; preds = %1057
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1039, align 8
  %1061 = icmp eq i32 %1040, -19
  br i1 %1061, label %1070, label %1062

1062:                                             ; preds = %1060
  %1063 = load i32, ptr %38, align 8
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %2921, label %1065

1065:                                             ; preds = %1062
  %1066 = load ptr, ptr %27, align 8
  %1067 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 15), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1066, ptr noundef nonnull @.str.20, ptr noundef %1067, i32 noundef %1040) #7
  br label %2921

1068:                                             ; preds = %1057
  %1069 = getelementptr inbounds %struct.nvkm_subdev, ptr %1058, i32 0, i32 7
  store ptr %1039, ptr %1069, align 4
  br label %1070

1070:                                             ; preds = %1068, %1060, %1023
  %1071 = load ptr, ptr %318, align 4
  %1072 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1071, i32 0, i32 17
  %1073 = load i32, ptr %1072, align 4
  %1074 = icmp eq i32 %1073, 0
  %1075 = and i64 %10, 65536
  %1076 = icmp eq i64 %1075, 0
  %1077 = or i1 %1076, %1074
  br i1 %1077, label %1117, label %1078

1078:                                             ; preds = %1070
  %1079 = icmp eq i32 %1073, 1
  br i1 %1079, label %1082, label %1080, !prof !15

1080:                                             ; preds = %1078
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 18, i32 noundef 9, ptr noundef null) #6
  %1081 = load ptr, ptr %318, align 4
  br label %1082

1082:                                             ; preds = %1080, %1078
  %1083 = phi ptr [ %1081, %1080 ], [ %1071, %1078 ]
  %1084 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1083, i32 0, i32 17, i32 1
  %1085 = load ptr, ptr %1084, align 4
  %1086 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 36
  %1087 = call i32 %1085(ptr noundef %11, i32 noundef 16, i32 noundef -1, ptr noundef %1086) #6
  %1088 = load ptr, ptr %39, align 4
  %1089 = icmp eq ptr %1088, %39
  br i1 %1089, label %1104, label %1090

1090:                                             ; preds = %1099, %1082
  %1091 = phi ptr [ %1100, %1099 ], [ %1088, %1082 ]
  %1092 = getelementptr i8, ptr %1091, i32 -28
  %1093 = load i32, ptr %1092, align 4
  %1094 = icmp eq i32 %1093, 16
  br i1 %1094, label %1095, label %1099

1095:                                             ; preds = %1090
  %1096 = getelementptr i8, ptr %1091, i32 -24
  %1097 = load i32, ptr %1096, align 4
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1102, label %1099

1099:                                             ; preds = %1095, %1090
  %1100 = load ptr, ptr %1091, align 4
  %1101 = icmp eq ptr %1100, %39
  br i1 %1101, label %1104, label %1090

1102:                                             ; preds = %1095
  %1103 = getelementptr i8, ptr %1091, i32 -36
  br label %1104

1104:                                             ; preds = %1102, %1099, %1082
  %1105 = phi ptr [ %1103, %1102 ], [ null, %1082 ], [ null, %1099 ]
  store ptr %1105, ptr %13, align 4
  %1106 = icmp eq i32 %1087, 0
  br i1 %1106, label %1115, label %1107

1107:                                             ; preds = %1104
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1086, align 4
  %1108 = icmp eq i32 %1087, -19
  br i1 %1108, label %1117, label %1109

1109:                                             ; preds = %1107
  %1110 = load i32, ptr %38, align 8
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %2921, label %1112

1112:                                             ; preds = %1109
  %1113 = load ptr, ptr %27, align 8
  %1114 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 16), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1113, ptr noundef nonnull @.str.20, ptr noundef %1114, i32 noundef %1087) #7
  br label %2921

1115:                                             ; preds = %1104
  %1116 = getelementptr inbounds %struct.nvkm_subdev, ptr %1105, i32 0, i32 7
  store ptr %1086, ptr %1116, align 4
  br label %1117

1117:                                             ; preds = %1115, %1107, %1070
  %1118 = load ptr, ptr %318, align 4
  %1119 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1118, i32 0, i32 18
  %1120 = load i32, ptr %1119, align 4
  %1121 = icmp eq i32 %1120, 0
  %1122 = and i64 %10, 131072
  %1123 = icmp eq i64 %1122, 0
  %1124 = or i1 %1123, %1121
  br i1 %1124, label %1164, label %1125

1125:                                             ; preds = %1117
  %1126 = icmp eq i32 %1120, 1
  br i1 %1126, label %1129, label %1127, !prof !15

1127:                                             ; preds = %1125
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 19, i32 noundef 9, ptr noundef null) #6
  %1128 = load ptr, ptr %318, align 4
  br label %1129

1129:                                             ; preds = %1127, %1125
  %1130 = phi ptr [ %1128, %1127 ], [ %1118, %1125 ]
  %1131 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1130, i32 0, i32 18, i32 1
  %1132 = load ptr, ptr %1131, align 4
  %1133 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 37
  %1134 = call i32 %1132(ptr noundef %11, i32 noundef 17, i32 noundef -1, ptr noundef %1133) #6
  %1135 = load ptr, ptr %39, align 4
  %1136 = icmp eq ptr %1135, %39
  br i1 %1136, label %1151, label %1137

1137:                                             ; preds = %1146, %1129
  %1138 = phi ptr [ %1147, %1146 ], [ %1135, %1129 ]
  %1139 = getelementptr i8, ptr %1138, i32 -28
  %1140 = load i32, ptr %1139, align 4
  %1141 = icmp eq i32 %1140, 17
  br i1 %1141, label %1142, label %1146

1142:                                             ; preds = %1137
  %1143 = getelementptr i8, ptr %1138, i32 -24
  %1144 = load i32, ptr %1143, align 4
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1149, label %1146

1146:                                             ; preds = %1142, %1137
  %1147 = load ptr, ptr %1138, align 4
  %1148 = icmp eq ptr %1147, %39
  br i1 %1148, label %1151, label %1137

1149:                                             ; preds = %1142
  %1150 = getelementptr i8, ptr %1138, i32 -36
  br label %1151

1151:                                             ; preds = %1149, %1146, %1129
  %1152 = phi ptr [ %1150, %1149 ], [ null, %1129 ], [ null, %1146 ]
  store ptr %1152, ptr %13, align 4
  %1153 = icmp eq i32 %1134, 0
  br i1 %1153, label %1162, label %1154

1154:                                             ; preds = %1151
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1133, align 8
  %1155 = icmp eq i32 %1134, -19
  br i1 %1155, label %1164, label %1156

1156:                                             ; preds = %1154
  %1157 = load i32, ptr %38, align 8
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %2921, label %1159

1159:                                             ; preds = %1156
  %1160 = load ptr, ptr %27, align 8
  %1161 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 17), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1160, ptr noundef nonnull @.str.20, ptr noundef %1161, i32 noundef %1134) #7
  br label %2921

1162:                                             ; preds = %1151
  %1163 = getelementptr inbounds %struct.nvkm_subdev, ptr %1152, i32 0, i32 7
  store ptr %1133, ptr %1163, align 4
  br label %1164

1164:                                             ; preds = %1162, %1154, %1117
  %1165 = load ptr, ptr %318, align 4
  %1166 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1165, i32 0, i32 19
  %1167 = load i32, ptr %1166, align 4
  %1168 = icmp eq i32 %1167, 0
  %1169 = and i64 %10, 262144
  %1170 = icmp eq i64 %1169, 0
  %1171 = or i1 %1170, %1168
  br i1 %1171, label %1211, label %1172

1172:                                             ; preds = %1164
  %1173 = icmp eq i32 %1167, 1
  br i1 %1173, label %1176, label %1174, !prof !15

1174:                                             ; preds = %1172
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 20, i32 noundef 9, ptr noundef null) #6
  %1175 = load ptr, ptr %318, align 4
  br label %1176

1176:                                             ; preds = %1174, %1172
  %1177 = phi ptr [ %1175, %1174 ], [ %1165, %1172 ]
  %1178 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1177, i32 0, i32 19, i32 1
  %1179 = load ptr, ptr %1178, align 4
  %1180 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 38
  %1181 = call i32 %1179(ptr noundef %11, i32 noundef 18, i32 noundef -1, ptr noundef %1180) #6
  %1182 = load ptr, ptr %39, align 4
  %1183 = icmp eq ptr %1182, %39
  br i1 %1183, label %1198, label %1184

1184:                                             ; preds = %1193, %1176
  %1185 = phi ptr [ %1194, %1193 ], [ %1182, %1176 ]
  %1186 = getelementptr i8, ptr %1185, i32 -28
  %1187 = load i32, ptr %1186, align 4
  %1188 = icmp eq i32 %1187, 18
  br i1 %1188, label %1189, label %1193

1189:                                             ; preds = %1184
  %1190 = getelementptr i8, ptr %1185, i32 -24
  %1191 = load i32, ptr %1190, align 4
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1196, label %1193

1193:                                             ; preds = %1189, %1184
  %1194 = load ptr, ptr %1185, align 4
  %1195 = icmp eq ptr %1194, %39
  br i1 %1195, label %1198, label %1184

1196:                                             ; preds = %1189
  %1197 = getelementptr i8, ptr %1185, i32 -36
  br label %1198

1198:                                             ; preds = %1196, %1193, %1176
  %1199 = phi ptr [ %1197, %1196 ], [ null, %1176 ], [ null, %1193 ]
  store ptr %1199, ptr %13, align 4
  %1200 = icmp eq i32 %1181, 0
  br i1 %1200, label %1209, label %1201

1201:                                             ; preds = %1198
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1180, align 4
  %1202 = icmp eq i32 %1181, -19
  br i1 %1202, label %1211, label %1203

1203:                                             ; preds = %1201
  %1204 = load i32, ptr %38, align 8
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %2921, label %1206

1206:                                             ; preds = %1203
  %1207 = load ptr, ptr %27, align 8
  %1208 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 18), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1207, ptr noundef nonnull @.str.20, ptr noundef %1208, i32 noundef %1181) #7
  br label %2921

1209:                                             ; preds = %1198
  %1210 = getelementptr inbounds %struct.nvkm_subdev, ptr %1199, i32 0, i32 7
  store ptr %1180, ptr %1210, align 4
  br label %1211

1211:                                             ; preds = %1209, %1201, %1164
  %1212 = load ptr, ptr %318, align 4
  %1213 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1212, i32 0, i32 20
  %1214 = load i32, ptr %1213, align 4
  %1215 = icmp eq i32 %1214, 0
  %1216 = and i64 %10, 524288
  %1217 = icmp eq i64 %1216, 0
  %1218 = or i1 %1217, %1215
  br i1 %1218, label %1258, label %1219

1219:                                             ; preds = %1211
  %1220 = icmp eq i32 %1214, 1
  br i1 %1220, label %1223, label %1221, !prof !15

1221:                                             ; preds = %1219
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 21, i32 noundef 9, ptr noundef null) #6
  %1222 = load ptr, ptr %318, align 4
  br label %1223

1223:                                             ; preds = %1221, %1219
  %1224 = phi ptr [ %1222, %1221 ], [ %1212, %1219 ]
  %1225 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1224, i32 0, i32 20, i32 1
  %1226 = load ptr, ptr %1225, align 4
  %1227 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 39
  %1228 = call i32 %1226(ptr noundef %11, i32 noundef 19, i32 noundef -1, ptr noundef %1227) #6
  %1229 = load ptr, ptr %39, align 4
  %1230 = icmp eq ptr %1229, %39
  br i1 %1230, label %1245, label %1231

1231:                                             ; preds = %1240, %1223
  %1232 = phi ptr [ %1241, %1240 ], [ %1229, %1223 ]
  %1233 = getelementptr i8, ptr %1232, i32 -28
  %1234 = load i32, ptr %1233, align 4
  %1235 = icmp eq i32 %1234, 19
  br i1 %1235, label %1236, label %1240

1236:                                             ; preds = %1231
  %1237 = getelementptr i8, ptr %1232, i32 -24
  %1238 = load i32, ptr %1237, align 4
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1243, label %1240

1240:                                             ; preds = %1236, %1231
  %1241 = load ptr, ptr %1232, align 4
  %1242 = icmp eq ptr %1241, %39
  br i1 %1242, label %1245, label %1231

1243:                                             ; preds = %1236
  %1244 = getelementptr i8, ptr %1232, i32 -36
  br label %1245

1245:                                             ; preds = %1243, %1240, %1223
  %1246 = phi ptr [ %1244, %1243 ], [ null, %1223 ], [ null, %1240 ]
  store ptr %1246, ptr %13, align 4
  %1247 = icmp eq i32 %1228, 0
  br i1 %1247, label %1256, label %1248

1248:                                             ; preds = %1245
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1227, align 8
  %1249 = icmp eq i32 %1228, -19
  br i1 %1249, label %1258, label %1250

1250:                                             ; preds = %1248
  %1251 = load i32, ptr %38, align 8
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %2921, label %1253

1253:                                             ; preds = %1250
  %1254 = load ptr, ptr %27, align 8
  %1255 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 19), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1254, ptr noundef nonnull @.str.20, ptr noundef %1255, i32 noundef %1228) #7
  br label %2921

1256:                                             ; preds = %1245
  %1257 = getelementptr inbounds %struct.nvkm_subdev, ptr %1246, i32 0, i32 7
  store ptr %1227, ptr %1257, align 4
  br label %1258

1258:                                             ; preds = %1256, %1248, %1211
  %1259 = load ptr, ptr %318, align 4
  %1260 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1259, i32 0, i32 21
  %1261 = load i32, ptr %1260, align 4
  %1262 = icmp eq i32 %1261, 0
  %1263 = and i64 %10, 1048576
  %1264 = icmp eq i64 %1263, 0
  %1265 = or i1 %1264, %1262
  br i1 %1265, label %1305, label %1266

1266:                                             ; preds = %1258
  %1267 = icmp eq i32 %1261, 1
  br i1 %1267, label %1270, label %1268, !prof !15

1268:                                             ; preds = %1266
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 22, i32 noundef 9, ptr noundef null) #6
  %1269 = load ptr, ptr %318, align 4
  br label %1270

1270:                                             ; preds = %1268, %1266
  %1271 = phi ptr [ %1269, %1268 ], [ %1259, %1266 ]
  %1272 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1271, i32 0, i32 21, i32 1
  %1273 = load ptr, ptr %1272, align 4
  %1274 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 40
  %1275 = call i32 %1273(ptr noundef %11, i32 noundef 20, i32 noundef -1, ptr noundef %1274) #6
  %1276 = load ptr, ptr %39, align 4
  %1277 = icmp eq ptr %1276, %39
  br i1 %1277, label %1292, label %1278

1278:                                             ; preds = %1287, %1270
  %1279 = phi ptr [ %1288, %1287 ], [ %1276, %1270 ]
  %1280 = getelementptr i8, ptr %1279, i32 -28
  %1281 = load i32, ptr %1280, align 4
  %1282 = icmp eq i32 %1281, 20
  br i1 %1282, label %1283, label %1287

1283:                                             ; preds = %1278
  %1284 = getelementptr i8, ptr %1279, i32 -24
  %1285 = load i32, ptr %1284, align 4
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1290, label %1287

1287:                                             ; preds = %1283, %1278
  %1288 = load ptr, ptr %1279, align 4
  %1289 = icmp eq ptr %1288, %39
  br i1 %1289, label %1292, label %1278

1290:                                             ; preds = %1283
  %1291 = getelementptr i8, ptr %1279, i32 -36
  br label %1292

1292:                                             ; preds = %1290, %1287, %1270
  %1293 = phi ptr [ %1291, %1290 ], [ null, %1270 ], [ null, %1287 ]
  store ptr %1293, ptr %13, align 4
  %1294 = icmp eq i32 %1275, 0
  br i1 %1294, label %1303, label %1295

1295:                                             ; preds = %1292
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1274, align 4
  %1296 = icmp eq i32 %1275, -19
  br i1 %1296, label %1305, label %1297

1297:                                             ; preds = %1295
  %1298 = load i32, ptr %38, align 8
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %2921, label %1300

1300:                                             ; preds = %1297
  %1301 = load ptr, ptr %27, align 8
  %1302 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 20), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1301, ptr noundef nonnull @.str.20, ptr noundef %1302, i32 noundef %1275) #7
  br label %2921

1303:                                             ; preds = %1292
  %1304 = getelementptr inbounds %struct.nvkm_subdev, ptr %1293, i32 0, i32 7
  store ptr %1274, ptr %1304, align 4
  br label %1305

1305:                                             ; preds = %1303, %1295, %1258
  %1306 = load ptr, ptr %318, align 4
  %1307 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1306, i32 0, i32 22
  %1308 = load i32, ptr %1307, align 4
  %1309 = icmp eq i32 %1308, 0
  %1310 = and i64 %10, 2097152
  %1311 = icmp eq i64 %1310, 0
  %1312 = or i1 %1311, %1309
  br i1 %1312, label %1352, label %1313

1313:                                             ; preds = %1305
  %1314 = icmp eq i32 %1308, 1
  br i1 %1314, label %1317, label %1315, !prof !15

1315:                                             ; preds = %1313
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 23, i32 noundef 9, ptr noundef null) #6
  %1316 = load ptr, ptr %318, align 4
  br label %1317

1317:                                             ; preds = %1315, %1313
  %1318 = phi ptr [ %1316, %1315 ], [ %1306, %1313 ]
  %1319 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1318, i32 0, i32 22, i32 1
  %1320 = load ptr, ptr %1319, align 4
  %1321 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 41
  %1322 = call i32 %1320(ptr noundef %11, i32 noundef 21, i32 noundef -1, ptr noundef %1321) #6
  %1323 = load ptr, ptr %39, align 4
  %1324 = icmp eq ptr %1323, %39
  br i1 %1324, label %1339, label %1325

1325:                                             ; preds = %1334, %1317
  %1326 = phi ptr [ %1335, %1334 ], [ %1323, %1317 ]
  %1327 = getelementptr i8, ptr %1326, i32 -28
  %1328 = load i32, ptr %1327, align 4
  %1329 = icmp eq i32 %1328, 21
  br i1 %1329, label %1330, label %1334

1330:                                             ; preds = %1325
  %1331 = getelementptr i8, ptr %1326, i32 -24
  %1332 = load i32, ptr %1331, align 4
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1337, label %1334

1334:                                             ; preds = %1330, %1325
  %1335 = load ptr, ptr %1326, align 4
  %1336 = icmp eq ptr %1335, %39
  br i1 %1336, label %1339, label %1325

1337:                                             ; preds = %1330
  %1338 = getelementptr i8, ptr %1326, i32 -36
  br label %1339

1339:                                             ; preds = %1337, %1334, %1317
  %1340 = phi ptr [ %1338, %1337 ], [ null, %1317 ], [ null, %1334 ]
  store ptr %1340, ptr %13, align 4
  %1341 = icmp eq i32 %1322, 0
  br i1 %1341, label %1350, label %1342

1342:                                             ; preds = %1339
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1321, align 8
  %1343 = icmp eq i32 %1322, -19
  br i1 %1343, label %1352, label %1344

1344:                                             ; preds = %1342
  %1345 = load i32, ptr %38, align 8
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %2921, label %1347

1347:                                             ; preds = %1344
  %1348 = load ptr, ptr %27, align 8
  %1349 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 21), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1348, ptr noundef nonnull @.str.20, ptr noundef %1349, i32 noundef %1322) #7
  br label %2921

1350:                                             ; preds = %1339
  %1351 = getelementptr inbounds %struct.nvkm_subdev, ptr %1340, i32 0, i32 7
  store ptr %1321, ptr %1351, align 4
  br label %1352

1352:                                             ; preds = %1350, %1342, %1305
  %1353 = load ptr, ptr %318, align 4
  %1354 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1353, i32 0, i32 23
  %1355 = load i32, ptr %1354, align 4
  %1356 = icmp eq i32 %1355, 0
  %1357 = and i64 %10, 4194304
  %1358 = icmp eq i64 %1357, 0
  %1359 = or i1 %1358, %1356
  br i1 %1359, label %1399, label %1360

1360:                                             ; preds = %1352
  %1361 = icmp eq i32 %1355, 1
  br i1 %1361, label %1364, label %1362, !prof !15

1362:                                             ; preds = %1360
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 24, i32 noundef 9, ptr noundef null) #6
  %1363 = load ptr, ptr %318, align 4
  br label %1364

1364:                                             ; preds = %1362, %1360
  %1365 = phi ptr [ %1363, %1362 ], [ %1353, %1360 ]
  %1366 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1365, i32 0, i32 23, i32 1
  %1367 = load ptr, ptr %1366, align 4
  %1368 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 42
  %1369 = call i32 %1367(ptr noundef %11, i32 noundef 22, i32 noundef -1, ptr noundef %1368) #6
  %1370 = load ptr, ptr %39, align 4
  %1371 = icmp eq ptr %1370, %39
  br i1 %1371, label %1386, label %1372

1372:                                             ; preds = %1381, %1364
  %1373 = phi ptr [ %1382, %1381 ], [ %1370, %1364 ]
  %1374 = getelementptr i8, ptr %1373, i32 -28
  %1375 = load i32, ptr %1374, align 4
  %1376 = icmp eq i32 %1375, 22
  br i1 %1376, label %1377, label %1381

1377:                                             ; preds = %1372
  %1378 = getelementptr i8, ptr %1373, i32 -24
  %1379 = load i32, ptr %1378, align 4
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1384, label %1381

1381:                                             ; preds = %1377, %1372
  %1382 = load ptr, ptr %1373, align 4
  %1383 = icmp eq ptr %1382, %39
  br i1 %1383, label %1386, label %1372

1384:                                             ; preds = %1377
  %1385 = getelementptr i8, ptr %1373, i32 -36
  br label %1386

1386:                                             ; preds = %1384, %1381, %1364
  %1387 = phi ptr [ %1385, %1384 ], [ null, %1364 ], [ null, %1381 ]
  store ptr %1387, ptr %13, align 4
  %1388 = icmp eq i32 %1369, 0
  br i1 %1388, label %1397, label %1389

1389:                                             ; preds = %1386
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1368, align 4
  %1390 = icmp eq i32 %1369, -19
  br i1 %1390, label %1399, label %1391

1391:                                             ; preds = %1389
  %1392 = load i32, ptr %38, align 8
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %2921, label %1394

1394:                                             ; preds = %1391
  %1395 = load ptr, ptr %27, align 8
  %1396 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 22), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1395, ptr noundef nonnull @.str.20, ptr noundef %1396, i32 noundef %1369) #7
  br label %2921

1397:                                             ; preds = %1386
  %1398 = getelementptr inbounds %struct.nvkm_subdev, ptr %1387, i32 0, i32 7
  store ptr %1368, ptr %1398, align 4
  br label %1399

1399:                                             ; preds = %1397, %1389, %1352
  %1400 = load ptr, ptr %318, align 4
  %1401 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1400, i32 0, i32 24
  %1402 = load i32, ptr %1401, align 4
  %1403 = icmp eq i32 %1402, 0
  %1404 = and i64 %10, 8388608
  %1405 = icmp eq i64 %1404, 0
  %1406 = or i1 %1405, %1403
  br i1 %1406, label %1446, label %1407

1407:                                             ; preds = %1399
  %1408 = icmp eq i32 %1402, 1
  br i1 %1408, label %1411, label %1409, !prof !15

1409:                                             ; preds = %1407
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 25, i32 noundef 9, ptr noundef null) #6
  %1410 = load ptr, ptr %318, align 4
  br label %1411

1411:                                             ; preds = %1409, %1407
  %1412 = phi ptr [ %1410, %1409 ], [ %1400, %1407 ]
  %1413 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1412, i32 0, i32 24, i32 1
  %1414 = load ptr, ptr %1413, align 4
  %1415 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 43
  %1416 = call i32 %1414(ptr noundef %11, i32 noundef 23, i32 noundef -1, ptr noundef %1415) #6
  %1417 = load ptr, ptr %39, align 4
  %1418 = icmp eq ptr %1417, %39
  br i1 %1418, label %1433, label %1419

1419:                                             ; preds = %1428, %1411
  %1420 = phi ptr [ %1429, %1428 ], [ %1417, %1411 ]
  %1421 = getelementptr i8, ptr %1420, i32 -28
  %1422 = load i32, ptr %1421, align 4
  %1423 = icmp eq i32 %1422, 23
  br i1 %1423, label %1424, label %1428

1424:                                             ; preds = %1419
  %1425 = getelementptr i8, ptr %1420, i32 -24
  %1426 = load i32, ptr %1425, align 4
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1431, label %1428

1428:                                             ; preds = %1424, %1419
  %1429 = load ptr, ptr %1420, align 4
  %1430 = icmp eq ptr %1429, %39
  br i1 %1430, label %1433, label %1419

1431:                                             ; preds = %1424
  %1432 = getelementptr i8, ptr %1420, i32 -36
  br label %1433

1433:                                             ; preds = %1431, %1428, %1411
  %1434 = phi ptr [ %1432, %1431 ], [ null, %1411 ], [ null, %1428 ]
  store ptr %1434, ptr %13, align 4
  %1435 = icmp eq i32 %1416, 0
  br i1 %1435, label %1444, label %1436

1436:                                             ; preds = %1433
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1415, align 8
  %1437 = icmp eq i32 %1416, -19
  br i1 %1437, label %1446, label %1438

1438:                                             ; preds = %1436
  %1439 = load i32, ptr %38, align 8
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %2921, label %1441

1441:                                             ; preds = %1438
  %1442 = load ptr, ptr %27, align 8
  %1443 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 23), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1442, ptr noundef nonnull @.str.20, ptr noundef %1443, i32 noundef %1416) #7
  br label %2921

1444:                                             ; preds = %1433
  %1445 = getelementptr inbounds %struct.nvkm_subdev, ptr %1434, i32 0, i32 7
  store ptr %1415, ptr %1445, align 4
  br label %1446

1446:                                             ; preds = %1444, %1436, %1399
  %1447 = load ptr, ptr %318, align 4
  %1448 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1447, i32 0, i32 25
  %1449 = load i32, ptr %1448, align 4
  %1450 = icmp eq i32 %1449, 0
  %1451 = and i64 %10, 16777216
  %1452 = icmp eq i64 %1451, 0
  %1453 = or i1 %1452, %1450
  br i1 %1453, label %1493, label %1454

1454:                                             ; preds = %1446
  %1455 = icmp eq i32 %1449, 1
  br i1 %1455, label %1458, label %1456, !prof !15

1456:                                             ; preds = %1454
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 26, i32 noundef 9, ptr noundef null) #6
  %1457 = load ptr, ptr %318, align 4
  br label %1458

1458:                                             ; preds = %1456, %1454
  %1459 = phi ptr [ %1457, %1456 ], [ %1447, %1454 ]
  %1460 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1459, i32 0, i32 25, i32 1
  %1461 = load ptr, ptr %1460, align 4
  %1462 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 44
  %1463 = call i32 %1461(ptr noundef %11, i32 noundef 24, i32 noundef -1, ptr noundef %1462) #6
  %1464 = load ptr, ptr %39, align 4
  %1465 = icmp eq ptr %1464, %39
  br i1 %1465, label %1480, label %1466

1466:                                             ; preds = %1475, %1458
  %1467 = phi ptr [ %1476, %1475 ], [ %1464, %1458 ]
  %1468 = getelementptr i8, ptr %1467, i32 -28
  %1469 = load i32, ptr %1468, align 4
  %1470 = icmp eq i32 %1469, 24
  br i1 %1470, label %1471, label %1475

1471:                                             ; preds = %1466
  %1472 = getelementptr i8, ptr %1467, i32 -24
  %1473 = load i32, ptr %1472, align 4
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1478, label %1475

1475:                                             ; preds = %1471, %1466
  %1476 = load ptr, ptr %1467, align 4
  %1477 = icmp eq ptr %1476, %39
  br i1 %1477, label %1480, label %1466

1478:                                             ; preds = %1471
  %1479 = getelementptr i8, ptr %1467, i32 -36
  br label %1480

1480:                                             ; preds = %1478, %1475, %1458
  %1481 = phi ptr [ %1479, %1478 ], [ null, %1458 ], [ null, %1475 ]
  store ptr %1481, ptr %13, align 4
  %1482 = icmp eq i32 %1463, 0
  br i1 %1482, label %1491, label %1483

1483:                                             ; preds = %1480
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1462, align 4
  %1484 = icmp eq i32 %1463, -19
  br i1 %1484, label %1493, label %1485

1485:                                             ; preds = %1483
  %1486 = load i32, ptr %38, align 8
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %2921, label %1488

1488:                                             ; preds = %1485
  %1489 = load ptr, ptr %27, align 8
  %1490 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 24), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1489, ptr noundef nonnull @.str.20, ptr noundef %1490, i32 noundef %1463) #7
  br label %2921

1491:                                             ; preds = %1480
  %1492 = getelementptr inbounds %struct.nvkm_subdev, ptr %1481, i32 0, i32 7
  store ptr %1462, ptr %1492, align 4
  br label %1493

1493:                                             ; preds = %1491, %1483, %1446
  %1494 = load ptr, ptr %318, align 4
  %1495 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1494, i32 0, i32 26
  %1496 = load i32, ptr %1495, align 4
  %1497 = icmp ult i32 %1496, 8
  br i1 %1497, label %1502, label %1498, !prof !15

1498:                                             ; preds = %1493
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 27, i32 noundef 9, ptr noundef null) #6
  %1499 = load ptr, ptr %318, align 4
  %1500 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1499, i32 0, i32 26
  %1501 = load i32, ptr %1500, align 4
  br label %1502

1502:                                             ; preds = %1498, %1493
  %1503 = phi i32 [ %1501, %1498 ], [ %1496, %1493 ]
  %1504 = phi ptr [ %1499, %1498 ], [ %1494, %1493 ]
  %1505 = icmp eq i32 %1503, 0
  br i1 %1505, label %1624, label %1506

1506:                                             ; preds = %1502
  %1507 = and i64 %10, 33554432
  %1508 = icmp eq i64 %1507, 0
  %1509 = and i32 %1503, 1
  %1510 = icmp eq i32 %1509, 0
  %1511 = or i1 %1508, %1510
  br i1 %1511, label %1548, label %1512

1512:                                             ; preds = %1506
  %1513 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1504, i32 0, i32 26, i32 1
  %1514 = load ptr, ptr %1513, align 4
  %1515 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 45, i32 0
  %1516 = call i32 %1514(ptr noundef %11, i32 noundef 25, i32 noundef 0, ptr noundef %1515) #6
  %1517 = load ptr, ptr %39, align 4
  %1518 = icmp eq ptr %1517, %39
  br i1 %1518, label %1533, label %1519

1519:                                             ; preds = %1528, %1512
  %1520 = phi ptr [ %1529, %1528 ], [ %1517, %1512 ]
  %1521 = getelementptr i8, ptr %1520, i32 -28
  %1522 = load i32, ptr %1521, align 4
  %1523 = icmp eq i32 %1522, 25
  br i1 %1523, label %1524, label %1528

1524:                                             ; preds = %1519
  %1525 = getelementptr i8, ptr %1520, i32 -24
  %1526 = load i32, ptr %1525, align 4
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1531, label %1528

1528:                                             ; preds = %1524, %1519
  %1529 = load ptr, ptr %1520, align 4
  %1530 = icmp eq ptr %1529, %39
  br i1 %1530, label %1533, label %1519

1531:                                             ; preds = %1524
  %1532 = getelementptr i8, ptr %1520, i32 -36
  br label %1533

1533:                                             ; preds = %1531, %1528, %1512
  %1534 = phi ptr [ %1532, %1531 ], [ null, %1512 ], [ null, %1528 ]
  store ptr %1534, ptr %13, align 4
  %1535 = icmp eq i32 %1516, 0
  br i1 %1535, label %1546, label %1536

1536:                                             ; preds = %1533
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1515, align 4
  %1537 = icmp eq i32 %1516, -19
  br i1 %1537, label %1548, label %1538

1538:                                             ; preds = %1618, %1581, %1536
  %1539 = phi i32 [ 0, %1536 ], [ 1, %1581 ], [ 2, %1618 ]
  %1540 = phi i32 [ %1516, %1536 ], [ %1561, %1581 ], [ %1598, %1618 ]
  %1541 = load i32, ptr %38, align 8
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %2921, label %1543

1543:                                             ; preds = %1538
  %1544 = load ptr, ptr %27, align 8
  %1545 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 25), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1544, ptr noundef nonnull @.str.21, ptr noundef %1545, i32 noundef %1539, i32 noundef %1540) #7
  br label %2921

1546:                                             ; preds = %1533
  %1547 = getelementptr inbounds %struct.nvkm_subdev, ptr %1534, i32 0, i32 7
  store ptr %1515, ptr %1547, align 4
  br label %1548

1548:                                             ; preds = %1546, %1536, %1506
  %1549 = load ptr, ptr %318, align 4
  %1550 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1549, i32 0, i32 26
  %1551 = load i32, ptr %1550, align 4
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1624, label %1553

1553:                                             ; preds = %1548
  %1554 = and i32 %1551, 2
  %1555 = icmp eq i32 %1554, 0
  %1556 = or i1 %1508, %1555
  br i1 %1556, label %1585, label %1557

1557:                                             ; preds = %1553
  %1558 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1549, i32 0, i32 26, i32 1
  %1559 = load ptr, ptr %1558, align 4
  %1560 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 45, i32 1
  %1561 = call i32 %1559(ptr noundef %11, i32 noundef 25, i32 noundef 1, ptr noundef %1560) #6
  %1562 = load ptr, ptr %39, align 4
  %1563 = icmp eq ptr %1562, %39
  br i1 %1563, label %1578, label %1564

1564:                                             ; preds = %1573, %1557
  %1565 = phi ptr [ %1574, %1573 ], [ %1562, %1557 ]
  %1566 = getelementptr i8, ptr %1565, i32 -28
  %1567 = load i32, ptr %1566, align 4
  %1568 = icmp eq i32 %1567, 25
  br i1 %1568, label %1569, label %1573

1569:                                             ; preds = %1564
  %1570 = getelementptr i8, ptr %1565, i32 -24
  %1571 = load i32, ptr %1570, align 4
  %1572 = icmp eq i32 %1571, 1
  br i1 %1572, label %1576, label %1573

1573:                                             ; preds = %1569, %1564
  %1574 = load ptr, ptr %1565, align 4
  %1575 = icmp eq ptr %1574, %39
  br i1 %1575, label %1578, label %1564

1576:                                             ; preds = %1569
  %1577 = getelementptr i8, ptr %1565, i32 -36
  br label %1578

1578:                                             ; preds = %1576, %1573, %1557
  %1579 = phi ptr [ %1577, %1576 ], [ null, %1557 ], [ null, %1573 ]
  store ptr %1579, ptr %13, align 4
  %1580 = icmp eq i32 %1561, 0
  br i1 %1580, label %1583, label %1581

1581:                                             ; preds = %1578
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1560, align 4
  %1582 = icmp eq i32 %1561, -19
  br i1 %1582, label %1585, label %1538

1583:                                             ; preds = %1578
  %1584 = getelementptr inbounds %struct.nvkm_subdev, ptr %1579, i32 0, i32 7
  store ptr %1560, ptr %1584, align 4
  br label %1585

1585:                                             ; preds = %1583, %1581, %1553
  %1586 = load ptr, ptr %318, align 4
  %1587 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1586, i32 0, i32 26
  %1588 = load i32, ptr %1587, align 4
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1624, label %1590

1590:                                             ; preds = %1585
  %1591 = and i32 %1588, 4
  %1592 = icmp eq i32 %1591, 0
  %1593 = or i1 %1508, %1592
  br i1 %1593, label %1622, label %1594

1594:                                             ; preds = %1590
  %1595 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1586, i32 0, i32 26, i32 1
  %1596 = load ptr, ptr %1595, align 4
  %1597 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 45, i32 2
  %1598 = call i32 %1596(ptr noundef %11, i32 noundef 25, i32 noundef 2, ptr noundef %1597) #6
  %1599 = load ptr, ptr %39, align 4
  %1600 = icmp eq ptr %1599, %39
  br i1 %1600, label %1615, label %1601

1601:                                             ; preds = %1610, %1594
  %1602 = phi ptr [ %1611, %1610 ], [ %1599, %1594 ]
  %1603 = getelementptr i8, ptr %1602, i32 -28
  %1604 = load i32, ptr %1603, align 4
  %1605 = icmp eq i32 %1604, 25
  br i1 %1605, label %1606, label %1610

1606:                                             ; preds = %1601
  %1607 = getelementptr i8, ptr %1602, i32 -24
  %1608 = load i32, ptr %1607, align 4
  %1609 = icmp eq i32 %1608, 2
  br i1 %1609, label %1613, label %1610

1610:                                             ; preds = %1606, %1601
  %1611 = load ptr, ptr %1602, align 4
  %1612 = icmp eq ptr %1611, %39
  br i1 %1612, label %1615, label %1601

1613:                                             ; preds = %1606
  %1614 = getelementptr i8, ptr %1602, i32 -36
  br label %1615

1615:                                             ; preds = %1613, %1610, %1594
  %1616 = phi ptr [ %1614, %1613 ], [ null, %1594 ], [ null, %1610 ]
  store ptr %1616, ptr %13, align 4
  %1617 = icmp eq i32 %1598, 0
  br i1 %1617, label %1620, label %1618

1618:                                             ; preds = %1615
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1597, align 4
  %1619 = icmp eq i32 %1598, -19
  br i1 %1619, label %1622, label %1538

1620:                                             ; preds = %1615
  %1621 = getelementptr inbounds %struct.nvkm_subdev, ptr %1616, i32 0, i32 7
  store ptr %1597, ptr %1621, align 4
  br label %1622

1622:                                             ; preds = %1620, %1618, %1590
  %1623 = load ptr, ptr %318, align 4
  br label %1624

1624:                                             ; preds = %1622, %1585, %1548, %1502
  %1625 = phi ptr [ %1504, %1502 ], [ %1549, %1548 ], [ %1586, %1585 ], [ %1623, %1622 ]
  %1626 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1625, i32 0, i32 27
  %1627 = load i32, ptr %1626, align 4
  %1628 = icmp eq i32 %1627, 0
  %1629 = and i64 %10, 67108864
  %1630 = icmp eq i64 %1629, 0
  %1631 = or i1 %1630, %1628
  br i1 %1631, label %1671, label %1632

1632:                                             ; preds = %1624
  %1633 = icmp eq i32 %1627, 1
  br i1 %1633, label %1636, label %1634, !prof !15

1634:                                             ; preds = %1632
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  %1635 = load ptr, ptr %318, align 4
  br label %1636

1636:                                             ; preds = %1634, %1632
  %1637 = phi ptr [ %1635, %1634 ], [ %1625, %1632 ]
  %1638 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1637, i32 0, i32 27, i32 1
  %1639 = load ptr, ptr %1638, align 4
  %1640 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 46
  %1641 = call i32 %1639(ptr noundef %11, i32 noundef 26, i32 noundef -1, ptr noundef %1640) #6
  %1642 = load ptr, ptr %39, align 4
  %1643 = icmp eq ptr %1642, %39
  br i1 %1643, label %1658, label %1644

1644:                                             ; preds = %1653, %1636
  %1645 = phi ptr [ %1654, %1653 ], [ %1642, %1636 ]
  %1646 = getelementptr i8, ptr %1645, i32 -28
  %1647 = load i32, ptr %1646, align 4
  %1648 = icmp eq i32 %1647, 26
  br i1 %1648, label %1649, label %1653

1649:                                             ; preds = %1644
  %1650 = getelementptr i8, ptr %1645, i32 -24
  %1651 = load i32, ptr %1650, align 4
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1656, label %1653

1653:                                             ; preds = %1649, %1644
  %1654 = load ptr, ptr %1645, align 4
  %1655 = icmp eq ptr %1654, %39
  br i1 %1655, label %1658, label %1644

1656:                                             ; preds = %1649
  %1657 = getelementptr i8, ptr %1645, i32 -36
  br label %1658

1658:                                             ; preds = %1656, %1653, %1636
  %1659 = phi ptr [ %1657, %1656 ], [ null, %1636 ], [ null, %1653 ]
  store ptr %1659, ptr %13, align 4
  %1660 = icmp eq i32 %1641, 0
  br i1 %1660, label %1669, label %1661

1661:                                             ; preds = %1658
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1640, align 4
  %1662 = icmp eq i32 %1641, -19
  br i1 %1662, label %1671, label %1663

1663:                                             ; preds = %1661
  %1664 = load i32, ptr %38, align 8
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %2921, label %1666

1666:                                             ; preds = %1663
  %1667 = load ptr, ptr %27, align 8
  %1668 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 26), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1667, ptr noundef nonnull @.str.20, ptr noundef %1668, i32 noundef %1641) #7
  br label %2921

1669:                                             ; preds = %1658
  %1670 = getelementptr inbounds %struct.nvkm_subdev, ptr %1659, i32 0, i32 7
  store ptr %1640, ptr %1670, align 4
  br label %1671

1671:                                             ; preds = %1669, %1661, %1624
  %1672 = load ptr, ptr %318, align 4
  %1673 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1672, i32 0, i32 28
  %1674 = load i32, ptr %1673, align 4
  %1675 = icmp eq i32 %1674, 0
  %1676 = and i64 %10, 134217728
  %1677 = icmp eq i64 %1676, 0
  %1678 = or i1 %1677, %1675
  br i1 %1678, label %1718, label %1679

1679:                                             ; preds = %1671
  %1680 = icmp eq i32 %1674, 1
  br i1 %1680, label %1683, label %1681, !prof !15

1681:                                             ; preds = %1679
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 30, i32 noundef 9, ptr noundef null) #6
  %1682 = load ptr, ptr %318, align 4
  br label %1683

1683:                                             ; preds = %1681, %1679
  %1684 = phi ptr [ %1682, %1681 ], [ %1672, %1679 ]
  %1685 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1684, i32 0, i32 28, i32 1
  %1686 = load ptr, ptr %1685, align 4
  %1687 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 47
  %1688 = call i32 %1686(ptr noundef %11, i32 noundef 27, i32 noundef -1, ptr noundef %1687) #6
  %1689 = load ptr, ptr %39, align 4
  %1690 = icmp eq ptr %1689, %39
  br i1 %1690, label %1705, label %1691

1691:                                             ; preds = %1700, %1683
  %1692 = phi ptr [ %1701, %1700 ], [ %1689, %1683 ]
  %1693 = getelementptr i8, ptr %1692, i32 -28
  %1694 = load i32, ptr %1693, align 4
  %1695 = icmp eq i32 %1694, 27
  br i1 %1695, label %1696, label %1700

1696:                                             ; preds = %1691
  %1697 = getelementptr i8, ptr %1692, i32 -24
  %1698 = load i32, ptr %1697, align 4
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1703, label %1700

1700:                                             ; preds = %1696, %1691
  %1701 = load ptr, ptr %1692, align 4
  %1702 = icmp eq ptr %1701, %39
  br i1 %1702, label %1705, label %1691

1703:                                             ; preds = %1696
  %1704 = getelementptr i8, ptr %1692, i32 -36
  br label %1705

1705:                                             ; preds = %1703, %1700, %1683
  %1706 = phi ptr [ %1704, %1703 ], [ null, %1683 ], [ null, %1700 ]
  store ptr %1706, ptr %13, align 4
  %1707 = icmp eq i32 %1688, 0
  br i1 %1707, label %1716, label %1708

1708:                                             ; preds = %1705
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1687, align 8
  %1709 = icmp eq i32 %1688, -19
  br i1 %1709, label %1718, label %1710

1710:                                             ; preds = %1708
  %1711 = load i32, ptr %38, align 8
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %2921, label %1713

1713:                                             ; preds = %1710
  %1714 = load ptr, ptr %27, align 8
  %1715 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 27), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1714, ptr noundef nonnull @.str.20, ptr noundef %1715, i32 noundef %1688) #7
  br label %2921

1716:                                             ; preds = %1705
  %1717 = getelementptr inbounds %struct.nvkm_subdev, ptr %1706, i32 0, i32 7
  store ptr %1687, ptr %1717, align 4
  br label %1718

1718:                                             ; preds = %1716, %1708, %1671
  %1719 = load ptr, ptr %318, align 4
  %1720 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1719, i32 0, i32 29
  %1721 = load i32, ptr %1720, align 4
  %1722 = icmp ult i32 %1721, 1024
  br i1 %1722, label %1727, label %1723, !prof !15

1723:                                             ; preds = %1718
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 31, i32 noundef 9, ptr noundef null) #6
  %1724 = load ptr, ptr %318, align 4
  %1725 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1724, i32 0, i32 29
  %1726 = load i32, ptr %1725, align 4
  br label %1727

1727:                                             ; preds = %1723, %1718
  %1728 = phi i32 [ %1726, %1723 ], [ %1721, %1718 ]
  %1729 = phi ptr [ %1724, %1723 ], [ %1719, %1718 ]
  %1730 = icmp eq i32 %1728, 0
  br i1 %1730, label %1784, label %1731

1731:                                             ; preds = %1727
  %1732 = and i64 %10, 268435456
  %1733 = icmp eq i64 %1732, 0
  br label %1734

1734:                                             ; preds = %1776, %1731
  %1735 = phi i32 [ %1728, %1731 ], [ %1780, %1776 ]
  %1736 = phi ptr [ %1729, %1731 ], [ %1778, %1776 ]
  %1737 = phi i32 [ 0, %1731 ], [ %1777, %1776 ]
  %1738 = shl nuw nsw i32 1, %1737
  %1739 = and i32 %1735, %1738
  %1740 = icmp eq i32 %1739, 0
  %1741 = or i1 %1733, %1740
  br i1 %1741, label %1776, label %1742

1742:                                             ; preds = %1734
  %1743 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1736, i32 0, i32 29, i32 1
  %1744 = load ptr, ptr %1743, align 4
  %1745 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 48, i32 %1737
  %1746 = call i32 %1744(ptr noundef %11, i32 noundef 28, i32 noundef %1737, ptr noundef %1745) #6
  %1747 = load ptr, ptr %39, align 4
  %1748 = icmp eq ptr %1747, %39
  br i1 %1748, label %1763, label %1749

1749:                                             ; preds = %1758, %1742
  %1750 = phi ptr [ %1759, %1758 ], [ %1747, %1742 ]
  %1751 = getelementptr i8, ptr %1750, i32 -28
  %1752 = load i32, ptr %1751, align 4
  %1753 = icmp eq i32 %1752, 28
  br i1 %1753, label %1754, label %1758

1754:                                             ; preds = %1749
  %1755 = getelementptr i8, ptr %1750, i32 -24
  %1756 = load i32, ptr %1755, align 4
  %1757 = icmp eq i32 %1756, %1737
  br i1 %1757, label %1761, label %1758

1758:                                             ; preds = %1754, %1749
  %1759 = load ptr, ptr %1750, align 4
  %1760 = icmp eq ptr %1759, %39
  br i1 %1760, label %1763, label %1749

1761:                                             ; preds = %1754
  %1762 = getelementptr i8, ptr %1750, i32 -36
  br label %1763

1763:                                             ; preds = %1761, %1758, %1742
  %1764 = phi ptr [ %1762, %1761 ], [ null, %1742 ], [ null, %1758 ]
  store ptr %1764, ptr %13, align 4
  %1765 = icmp eq i32 %1746, 0
  br i1 %1765, label %1774, label %1766

1766:                                             ; preds = %1763
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1745, align 4
  %1767 = icmp eq i32 %1746, -19
  br i1 %1767, label %1776, label %1768

1768:                                             ; preds = %1766
  %1769 = load i32, ptr %38, align 8
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %2921, label %1771

1771:                                             ; preds = %1768
  %1772 = load ptr, ptr %27, align 8
  %1773 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 28), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1772, ptr noundef nonnull @.str.21, ptr noundef %1773, i32 noundef %1737, i32 noundef %1746) #7
  br label %2921

1774:                                             ; preds = %1763
  %1775 = getelementptr inbounds %struct.nvkm_subdev, ptr %1764, i32 0, i32 7
  store ptr %1745, ptr %1775, align 4
  br label %1776

1776:                                             ; preds = %1774, %1766, %1734
  %1777 = add nuw nsw i32 %1737, 1
  %1778 = load ptr, ptr %318, align 4
  %1779 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1778, i32 0, i32 29
  %1780 = load i32, ptr %1779, align 4
  %1781 = icmp ne i32 %1780, 0
  %1782 = icmp ult i32 %1737, 9
  %1783 = select i1 %1781, i1 %1782, i1 false
  br i1 %1783, label %1734, label %1784

1784:                                             ; preds = %1776, %1727
  %1785 = phi ptr [ %1729, %1727 ], [ %1778, %1776 ]
  %1786 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1785, i32 0, i32 30
  %1787 = load i32, ptr %1786, align 4
  %1788 = icmp eq i32 %1787, 0
  %1789 = and i64 %10, 536870912
  %1790 = icmp eq i64 %1789, 0
  %1791 = or i1 %1790, %1788
  br i1 %1791, label %1831, label %1792

1792:                                             ; preds = %1784
  %1793 = icmp eq i32 %1787, 1
  br i1 %1793, label %1796, label %1794, !prof !15

1794:                                             ; preds = %1792
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 32, i32 noundef 9, ptr noundef null) #6
  %1795 = load ptr, ptr %318, align 4
  br label %1796

1796:                                             ; preds = %1794, %1792
  %1797 = phi ptr [ %1795, %1794 ], [ %1785, %1792 ]
  %1798 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1797, i32 0, i32 30, i32 1
  %1799 = load ptr, ptr %1798, align 4
  %1800 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 49
  %1801 = call i32 %1799(ptr noundef %11, i32 noundef 29, i32 noundef -1, ptr noundef %1800) #6
  %1802 = load ptr, ptr %39, align 4
  %1803 = icmp eq ptr %1802, %39
  br i1 %1803, label %1818, label %1804

1804:                                             ; preds = %1813, %1796
  %1805 = phi ptr [ %1814, %1813 ], [ %1802, %1796 ]
  %1806 = getelementptr i8, ptr %1805, i32 -28
  %1807 = load i32, ptr %1806, align 4
  %1808 = icmp eq i32 %1807, 29
  br i1 %1808, label %1809, label %1813

1809:                                             ; preds = %1804
  %1810 = getelementptr i8, ptr %1805, i32 -24
  %1811 = load i32, ptr %1810, align 4
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1816, label %1813

1813:                                             ; preds = %1809, %1804
  %1814 = load ptr, ptr %1805, align 4
  %1815 = icmp eq ptr %1814, %39
  br i1 %1815, label %1818, label %1804

1816:                                             ; preds = %1809
  %1817 = getelementptr i8, ptr %1805, i32 -36
  br label %1818

1818:                                             ; preds = %1816, %1813, %1796
  %1819 = phi ptr [ %1817, %1816 ], [ null, %1796 ], [ null, %1813 ]
  store ptr %1819, ptr %13, align 4
  %1820 = icmp eq i32 %1801, 0
  br i1 %1820, label %1829, label %1821

1821:                                             ; preds = %1818
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1800, align 4
  %1822 = icmp eq i32 %1801, -19
  br i1 %1822, label %1831, label %1823

1823:                                             ; preds = %1821
  %1824 = load i32, ptr %38, align 8
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %2921, label %1826

1826:                                             ; preds = %1823
  %1827 = load ptr, ptr %27, align 8
  %1828 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 29), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1827, ptr noundef nonnull @.str.20, ptr noundef %1828, i32 noundef %1801) #7
  br label %2921

1829:                                             ; preds = %1818
  %1830 = getelementptr inbounds %struct.nvkm_subdev, ptr %1819, i32 0, i32 7
  store ptr %1800, ptr %1830, align 4
  br label %1831

1831:                                             ; preds = %1829, %1821, %1784
  %1832 = load ptr, ptr %318, align 4
  %1833 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1832, i32 0, i32 31
  %1834 = load i32, ptr %1833, align 4
  %1835 = icmp eq i32 %1834, 0
  %1836 = and i64 %10, 1073741824
  %1837 = icmp eq i64 %1836, 0
  %1838 = or i1 %1837, %1835
  br i1 %1838, label %1878, label %1839

1839:                                             ; preds = %1831
  %1840 = icmp eq i32 %1834, 1
  br i1 %1840, label %1843, label %1841, !prof !15

1841:                                             ; preds = %1839
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 33, i32 noundef 9, ptr noundef null) #6
  %1842 = load ptr, ptr %318, align 4
  br label %1843

1843:                                             ; preds = %1841, %1839
  %1844 = phi ptr [ %1842, %1841 ], [ %1832, %1839 ]
  %1845 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1844, i32 0, i32 31, i32 1
  %1846 = load ptr, ptr %1845, align 4
  %1847 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 50
  %1848 = call i32 %1846(ptr noundef %11, i32 noundef 30, i32 noundef -1, ptr noundef %1847) #6
  %1849 = load ptr, ptr %39, align 4
  %1850 = icmp eq ptr %1849, %39
  br i1 %1850, label %1865, label %1851

1851:                                             ; preds = %1860, %1843
  %1852 = phi ptr [ %1861, %1860 ], [ %1849, %1843 ]
  %1853 = getelementptr i8, ptr %1852, i32 -28
  %1854 = load i32, ptr %1853, align 4
  %1855 = icmp eq i32 %1854, 30
  br i1 %1855, label %1856, label %1860

1856:                                             ; preds = %1851
  %1857 = getelementptr i8, ptr %1852, i32 -24
  %1858 = load i32, ptr %1857, align 4
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1863, label %1860

1860:                                             ; preds = %1856, %1851
  %1861 = load ptr, ptr %1852, align 4
  %1862 = icmp eq ptr %1861, %39
  br i1 %1862, label %1865, label %1851

1863:                                             ; preds = %1856
  %1864 = getelementptr i8, ptr %1852, i32 -36
  br label %1865

1865:                                             ; preds = %1863, %1860, %1843
  %1866 = phi ptr [ %1864, %1863 ], [ null, %1843 ], [ null, %1860 ]
  store ptr %1866, ptr %13, align 4
  %1867 = icmp eq i32 %1848, 0
  br i1 %1867, label %1876, label %1868

1868:                                             ; preds = %1865
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1847, align 8
  %1869 = icmp eq i32 %1848, -19
  br i1 %1869, label %1878, label %1870

1870:                                             ; preds = %1868
  %1871 = load i32, ptr %38, align 8
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %2921, label %1873

1873:                                             ; preds = %1870
  %1874 = load ptr, ptr %27, align 8
  %1875 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 30), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1874, ptr noundef nonnull @.str.20, ptr noundef %1875, i32 noundef %1848) #7
  br label %2921

1876:                                             ; preds = %1865
  %1877 = getelementptr inbounds %struct.nvkm_subdev, ptr %1866, i32 0, i32 7
  store ptr %1847, ptr %1877, align 4
  br label %1878

1878:                                             ; preds = %1876, %1868, %1831
  %1879 = load ptr, ptr %318, align 4
  %1880 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1879, i32 0, i32 32
  %1881 = load i32, ptr %1880, align 4
  %1882 = icmp eq i32 %1881, 0
  %1883 = and i64 %10, 2147483648
  %1884 = icmp eq i64 %1883, 0
  %1885 = or i1 %1884, %1882
  br i1 %1885, label %1925, label %1886

1886:                                             ; preds = %1878
  %1887 = icmp eq i32 %1881, 1
  br i1 %1887, label %1890, label %1888, !prof !15

1888:                                             ; preds = %1886
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 34, i32 noundef 9, ptr noundef null) #6
  %1889 = load ptr, ptr %318, align 4
  br label %1890

1890:                                             ; preds = %1888, %1886
  %1891 = phi ptr [ %1889, %1888 ], [ %1879, %1886 ]
  %1892 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1891, i32 0, i32 32, i32 1
  %1893 = load ptr, ptr %1892, align 4
  %1894 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 51
  %1895 = call i32 %1893(ptr noundef %11, i32 noundef 31, i32 noundef -1, ptr noundef %1894) #6
  %1896 = load ptr, ptr %39, align 4
  %1897 = icmp eq ptr %1896, %39
  br i1 %1897, label %1912, label %1898

1898:                                             ; preds = %1907, %1890
  %1899 = phi ptr [ %1908, %1907 ], [ %1896, %1890 ]
  %1900 = getelementptr i8, ptr %1899, i32 -28
  %1901 = load i32, ptr %1900, align 4
  %1902 = icmp eq i32 %1901, 31
  br i1 %1902, label %1903, label %1907

1903:                                             ; preds = %1898
  %1904 = getelementptr i8, ptr %1899, i32 -24
  %1905 = load i32, ptr %1904, align 4
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1910, label %1907

1907:                                             ; preds = %1903, %1898
  %1908 = load ptr, ptr %1899, align 4
  %1909 = icmp eq ptr %1908, %39
  br i1 %1909, label %1912, label %1898

1910:                                             ; preds = %1903
  %1911 = getelementptr i8, ptr %1899, i32 -36
  br label %1912

1912:                                             ; preds = %1910, %1907, %1890
  %1913 = phi ptr [ %1911, %1910 ], [ null, %1890 ], [ null, %1907 ]
  store ptr %1913, ptr %13, align 4
  %1914 = icmp eq i32 %1895, 0
  br i1 %1914, label %1923, label %1915

1915:                                             ; preds = %1912
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1894, align 4
  %1916 = icmp eq i32 %1895, -19
  br i1 %1916, label %1925, label %1917

1917:                                             ; preds = %1915
  %1918 = load i32, ptr %38, align 8
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %2921, label %1920

1920:                                             ; preds = %1917
  %1921 = load ptr, ptr %27, align 8
  %1922 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 31), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1921, ptr noundef nonnull @.str.20, ptr noundef %1922, i32 noundef %1895) #7
  br label %2921

1923:                                             ; preds = %1912
  %1924 = getelementptr inbounds %struct.nvkm_subdev, ptr %1913, i32 0, i32 7
  store ptr %1894, ptr %1924, align 4
  br label %1925

1925:                                             ; preds = %1923, %1915, %1878
  %1926 = load ptr, ptr %318, align 4
  %1927 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1926, i32 0, i32 33
  %1928 = load i32, ptr %1927, align 4
  %1929 = icmp eq i32 %1928, 0
  %1930 = and i64 %10, 4294967296
  %1931 = icmp eq i64 %1930, 0
  %1932 = or i1 %1931, %1929
  br i1 %1932, label %1972, label %1933

1933:                                             ; preds = %1925
  %1934 = icmp eq i32 %1928, 1
  br i1 %1934, label %1937, label %1935, !prof !15

1935:                                             ; preds = %1933
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 35, i32 noundef 9, ptr noundef null) #6
  %1936 = load ptr, ptr %318, align 4
  br label %1937

1937:                                             ; preds = %1935, %1933
  %1938 = phi ptr [ %1936, %1935 ], [ %1926, %1933 ]
  %1939 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1938, i32 0, i32 33, i32 1
  %1940 = load ptr, ptr %1939, align 4
  %1941 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 52
  %1942 = call i32 %1940(ptr noundef %11, i32 noundef 32, i32 noundef -1, ptr noundef %1941) #6
  %1943 = load ptr, ptr %39, align 4
  %1944 = icmp eq ptr %1943, %39
  br i1 %1944, label %1959, label %1945

1945:                                             ; preds = %1954, %1937
  %1946 = phi ptr [ %1955, %1954 ], [ %1943, %1937 ]
  %1947 = getelementptr i8, ptr %1946, i32 -28
  %1948 = load i32, ptr %1947, align 4
  %1949 = icmp eq i32 %1948, 32
  br i1 %1949, label %1950, label %1954

1950:                                             ; preds = %1945
  %1951 = getelementptr i8, ptr %1946, i32 -24
  %1952 = load i32, ptr %1951, align 4
  %1953 = icmp eq i32 %1952, 0
  br i1 %1953, label %1957, label %1954

1954:                                             ; preds = %1950, %1945
  %1955 = load ptr, ptr %1946, align 4
  %1956 = icmp eq ptr %1955, %39
  br i1 %1956, label %1959, label %1945

1957:                                             ; preds = %1950
  %1958 = getelementptr i8, ptr %1946, i32 -36
  br label %1959

1959:                                             ; preds = %1957, %1954, %1937
  %1960 = phi ptr [ %1958, %1957 ], [ null, %1937 ], [ null, %1954 ]
  store ptr %1960, ptr %13, align 4
  %1961 = icmp eq i32 %1942, 0
  br i1 %1961, label %1970, label %1962

1962:                                             ; preds = %1959
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1941, align 8
  %1963 = icmp eq i32 %1942, -19
  br i1 %1963, label %1972, label %1964

1964:                                             ; preds = %1962
  %1965 = load i32, ptr %38, align 8
  %1966 = icmp eq i32 %1965, 0
  br i1 %1966, label %2921, label %1967

1967:                                             ; preds = %1964
  %1968 = load ptr, ptr %27, align 8
  %1969 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 32), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1968, ptr noundef nonnull @.str.20, ptr noundef %1969, i32 noundef %1942) #7
  br label %2921

1970:                                             ; preds = %1959
  %1971 = getelementptr inbounds %struct.nvkm_subdev, ptr %1960, i32 0, i32 7
  store ptr %1941, ptr %1971, align 4
  br label %1972

1972:                                             ; preds = %1970, %1962, %1925
  %1973 = load ptr, ptr %318, align 4
  %1974 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1973, i32 0, i32 34
  %1975 = load i32, ptr %1974, align 4
  %1976 = icmp eq i32 %1975, 0
  %1977 = and i64 %10, 8589934592
  %1978 = icmp eq i64 %1977, 0
  %1979 = or i1 %1978, %1976
  br i1 %1979, label %2019, label %1980

1980:                                             ; preds = %1972
  %1981 = icmp eq i32 %1975, 1
  br i1 %1981, label %1984, label %1982, !prof !15

1982:                                             ; preds = %1980
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 36, i32 noundef 9, ptr noundef null) #6
  %1983 = load ptr, ptr %318, align 4
  br label %1984

1984:                                             ; preds = %1982, %1980
  %1985 = phi ptr [ %1983, %1982 ], [ %1973, %1980 ]
  %1986 = getelementptr inbounds %struct.nvkm_device_chip, ptr %1985, i32 0, i32 34, i32 1
  %1987 = load ptr, ptr %1986, align 4
  %1988 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 53
  %1989 = call i32 %1987(ptr noundef %11, i32 noundef 33, i32 noundef -1, ptr noundef %1988) #6
  %1990 = load ptr, ptr %39, align 4
  %1991 = icmp eq ptr %1990, %39
  br i1 %1991, label %2006, label %1992

1992:                                             ; preds = %2001, %1984
  %1993 = phi ptr [ %2002, %2001 ], [ %1990, %1984 ]
  %1994 = getelementptr i8, ptr %1993, i32 -28
  %1995 = load i32, ptr %1994, align 4
  %1996 = icmp eq i32 %1995, 33
  br i1 %1996, label %1997, label %2001

1997:                                             ; preds = %1992
  %1998 = getelementptr i8, ptr %1993, i32 -24
  %1999 = load i32, ptr %1998, align 4
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2004, label %2001

2001:                                             ; preds = %1997, %1992
  %2002 = load ptr, ptr %1993, align 4
  %2003 = icmp eq ptr %2002, %39
  br i1 %2003, label %2006, label %1992

2004:                                             ; preds = %1997
  %2005 = getelementptr i8, ptr %1993, i32 -36
  br label %2006

2006:                                             ; preds = %2004, %2001, %1984
  %2007 = phi ptr [ %2005, %2004 ], [ null, %1984 ], [ null, %2001 ]
  store ptr %2007, ptr %13, align 4
  %2008 = icmp eq i32 %1989, 0
  br i1 %2008, label %2017, label %2009

2009:                                             ; preds = %2006
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %1988, align 4
  %2010 = icmp eq i32 %1989, -19
  br i1 %2010, label %2019, label %2011

2011:                                             ; preds = %2009
  %2012 = load i32, ptr %38, align 8
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2921, label %2014

2014:                                             ; preds = %2011
  %2015 = load ptr, ptr %27, align 8
  %2016 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 33), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2015, ptr noundef nonnull @.str.20, ptr noundef %2016, i32 noundef %1989) #7
  br label %2921

2017:                                             ; preds = %2006
  %2018 = getelementptr inbounds %struct.nvkm_subdev, ptr %2007, i32 0, i32 7
  store ptr %1988, ptr %2018, align 4
  br label %2019

2019:                                             ; preds = %2017, %2009, %1972
  %2020 = load ptr, ptr %318, align 4
  %2021 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2020, i32 0, i32 35
  %2022 = load i32, ptr %2021, align 4
  %2023 = icmp eq i32 %2022, 0
  %2024 = and i64 %10, 17179869184
  %2025 = icmp eq i64 %2024, 0
  %2026 = or i1 %2025, %2023
  br i1 %2026, label %2066, label %2027

2027:                                             ; preds = %2019
  %2028 = icmp eq i32 %2022, 1
  br i1 %2028, label %2031, label %2029, !prof !15

2029:                                             ; preds = %2027
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  %2030 = load ptr, ptr %318, align 4
  br label %2031

2031:                                             ; preds = %2029, %2027
  %2032 = phi ptr [ %2030, %2029 ], [ %2020, %2027 ]
  %2033 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2032, i32 0, i32 35, i32 1
  %2034 = load ptr, ptr %2033, align 4
  %2035 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 54
  %2036 = call i32 %2034(ptr noundef %11, i32 noundef 34, i32 noundef -1, ptr noundef %2035) #6
  %2037 = load ptr, ptr %39, align 4
  %2038 = icmp eq ptr %2037, %39
  br i1 %2038, label %2053, label %2039

2039:                                             ; preds = %2048, %2031
  %2040 = phi ptr [ %2049, %2048 ], [ %2037, %2031 ]
  %2041 = getelementptr i8, ptr %2040, i32 -28
  %2042 = load i32, ptr %2041, align 4
  %2043 = icmp eq i32 %2042, 34
  br i1 %2043, label %2044, label %2048

2044:                                             ; preds = %2039
  %2045 = getelementptr i8, ptr %2040, i32 -24
  %2046 = load i32, ptr %2045, align 4
  %2047 = icmp eq i32 %2046, 0
  br i1 %2047, label %2051, label %2048

2048:                                             ; preds = %2044, %2039
  %2049 = load ptr, ptr %2040, align 4
  %2050 = icmp eq ptr %2049, %39
  br i1 %2050, label %2053, label %2039

2051:                                             ; preds = %2044
  %2052 = getelementptr i8, ptr %2040, i32 -36
  br label %2053

2053:                                             ; preds = %2051, %2048, %2031
  %2054 = phi ptr [ %2052, %2051 ], [ null, %2031 ], [ null, %2048 ]
  store ptr %2054, ptr %13, align 4
  %2055 = icmp eq i32 %2036, 0
  br i1 %2055, label %2064, label %2056

2056:                                             ; preds = %2053
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2035, align 8
  %2057 = icmp eq i32 %2036, -19
  br i1 %2057, label %2066, label %2058

2058:                                             ; preds = %2056
  %2059 = load i32, ptr %38, align 8
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2921, label %2061

2061:                                             ; preds = %2058
  %2062 = load ptr, ptr %27, align 8
  %2063 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 34), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2062, ptr noundef nonnull @.str.20, ptr noundef %2063, i32 noundef %2036) #7
  br label %2921

2064:                                             ; preds = %2053
  %2065 = getelementptr inbounds %struct.nvkm_subdev, ptr %2054, i32 0, i32 7
  store ptr %2035, ptr %2065, align 4
  br label %2066

2066:                                             ; preds = %2064, %2056, %2019
  %2067 = load ptr, ptr %318, align 4
  %2068 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2067, i32 0, i32 36
  %2069 = load i32, ptr %2068, align 4
  %2070 = icmp eq i32 %2069, 0
  %2071 = and i64 %10, 34359738368
  %2072 = icmp eq i64 %2071, 0
  %2073 = or i1 %2072, %2070
  br i1 %2073, label %2113, label %2074

2074:                                             ; preds = %2066
  %2075 = icmp eq i32 %2069, 1
  br i1 %2075, label %2078, label %2076, !prof !15

2076:                                             ; preds = %2074
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 38, i32 noundef 9, ptr noundef null) #6
  %2077 = load ptr, ptr %318, align 4
  br label %2078

2078:                                             ; preds = %2076, %2074
  %2079 = phi ptr [ %2077, %2076 ], [ %2067, %2074 ]
  %2080 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2079, i32 0, i32 36, i32 1
  %2081 = load ptr, ptr %2080, align 4
  %2082 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 55
  %2083 = call i32 %2081(ptr noundef %11, i32 noundef 35, i32 noundef -1, ptr noundef %2082) #6
  %2084 = load ptr, ptr %39, align 4
  %2085 = icmp eq ptr %2084, %39
  br i1 %2085, label %2100, label %2086

2086:                                             ; preds = %2095, %2078
  %2087 = phi ptr [ %2096, %2095 ], [ %2084, %2078 ]
  %2088 = getelementptr i8, ptr %2087, i32 -28
  %2089 = load i32, ptr %2088, align 4
  %2090 = icmp eq i32 %2089, 35
  br i1 %2090, label %2091, label %2095

2091:                                             ; preds = %2086
  %2092 = getelementptr i8, ptr %2087, i32 -24
  %2093 = load i32, ptr %2092, align 4
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2098, label %2095

2095:                                             ; preds = %2091, %2086
  %2096 = load ptr, ptr %2087, align 4
  %2097 = icmp eq ptr %2096, %39
  br i1 %2097, label %2100, label %2086

2098:                                             ; preds = %2091
  %2099 = getelementptr i8, ptr %2087, i32 -36
  br label %2100

2100:                                             ; preds = %2098, %2095, %2078
  %2101 = phi ptr [ %2099, %2098 ], [ null, %2078 ], [ null, %2095 ]
  store ptr %2101, ptr %13, align 4
  %2102 = icmp eq i32 %2083, 0
  br i1 %2102, label %2111, label %2103

2103:                                             ; preds = %2100
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2082, align 4
  %2104 = icmp eq i32 %2083, -19
  br i1 %2104, label %2113, label %2105

2105:                                             ; preds = %2103
  %2106 = load i32, ptr %38, align 8
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2921, label %2108

2108:                                             ; preds = %2105
  %2109 = load ptr, ptr %27, align 8
  %2110 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 35), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2109, ptr noundef nonnull @.str.20, ptr noundef %2110, i32 noundef %2083) #7
  br label %2921

2111:                                             ; preds = %2100
  %2112 = getelementptr inbounds %struct.nvkm_subdev, ptr %2101, i32 0, i32 7
  store ptr %2082, ptr %2112, align 4
  br label %2113

2113:                                             ; preds = %2111, %2103, %2066
  %2114 = load ptr, ptr %318, align 4
  %2115 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2114, i32 0, i32 37
  %2116 = load i32, ptr %2115, align 4
  %2117 = icmp eq i32 %2116, 0
  %2118 = and i64 %10, 68719476736
  %2119 = icmp eq i64 %2118, 0
  %2120 = or i1 %2119, %2117
  br i1 %2120, label %2160, label %2121

2121:                                             ; preds = %2113
  %2122 = icmp eq i32 %2116, 1
  br i1 %2122, label %2125, label %2123, !prof !15

2123:                                             ; preds = %2121
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 39, i32 noundef 9, ptr noundef null) #6
  %2124 = load ptr, ptr %318, align 4
  br label %2125

2125:                                             ; preds = %2123, %2121
  %2126 = phi ptr [ %2124, %2123 ], [ %2114, %2121 ]
  %2127 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2126, i32 0, i32 37, i32 1
  %2128 = load ptr, ptr %2127, align 4
  %2129 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 56
  %2130 = call i32 %2128(ptr noundef %11, i32 noundef 36, i32 noundef -1, ptr noundef %2129) #6
  %2131 = load ptr, ptr %39, align 4
  %2132 = icmp eq ptr %2131, %39
  br i1 %2132, label %2147, label %2133

2133:                                             ; preds = %2142, %2125
  %2134 = phi ptr [ %2143, %2142 ], [ %2131, %2125 ]
  %2135 = getelementptr i8, ptr %2134, i32 -28
  %2136 = load i32, ptr %2135, align 4
  %2137 = icmp eq i32 %2136, 36
  br i1 %2137, label %2138, label %2142

2138:                                             ; preds = %2133
  %2139 = getelementptr i8, ptr %2134, i32 -24
  %2140 = load i32, ptr %2139, align 4
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2145, label %2142

2142:                                             ; preds = %2138, %2133
  %2143 = load ptr, ptr %2134, align 4
  %2144 = icmp eq ptr %2143, %39
  br i1 %2144, label %2147, label %2133

2145:                                             ; preds = %2138
  %2146 = getelementptr i8, ptr %2134, i32 -36
  br label %2147

2147:                                             ; preds = %2145, %2142, %2125
  %2148 = phi ptr [ %2146, %2145 ], [ null, %2125 ], [ null, %2142 ]
  store ptr %2148, ptr %13, align 4
  %2149 = icmp eq i32 %2130, 0
  br i1 %2149, label %2158, label %2150

2150:                                             ; preds = %2147
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2129, align 8
  %2151 = icmp eq i32 %2130, -19
  br i1 %2151, label %2160, label %2152

2152:                                             ; preds = %2150
  %2153 = load i32, ptr %38, align 8
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2921, label %2155

2155:                                             ; preds = %2152
  %2156 = load ptr, ptr %27, align 8
  %2157 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 36), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2156, ptr noundef nonnull @.str.20, ptr noundef %2157, i32 noundef %2130) #7
  br label %2921

2158:                                             ; preds = %2147
  %2159 = getelementptr inbounds %struct.nvkm_subdev, ptr %2148, i32 0, i32 7
  store ptr %2129, ptr %2159, align 4
  br label %2160

2160:                                             ; preds = %2158, %2150, %2113
  %2161 = load ptr, ptr %318, align 4
  %2162 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2161, i32 0, i32 38
  %2163 = load i32, ptr %2162, align 4
  %2164 = icmp eq i32 %2163, 0
  %2165 = and i64 %10, 137438953472
  %2166 = icmp eq i64 %2165, 0
  %2167 = or i1 %2166, %2164
  br i1 %2167, label %2207, label %2168

2168:                                             ; preds = %2160
  %2169 = icmp eq i32 %2163, 1
  br i1 %2169, label %2172, label %2170, !prof !15

2170:                                             ; preds = %2168
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 40, i32 noundef 9, ptr noundef null) #6
  %2171 = load ptr, ptr %318, align 4
  br label %2172

2172:                                             ; preds = %2170, %2168
  %2173 = phi ptr [ %2171, %2170 ], [ %2161, %2168 ]
  %2174 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2173, i32 0, i32 38, i32 1
  %2175 = load ptr, ptr %2174, align 4
  %2176 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 57
  %2177 = call i32 %2175(ptr noundef %11, i32 noundef 37, i32 noundef -1, ptr noundef %2176) #6
  %2178 = load ptr, ptr %39, align 4
  %2179 = icmp eq ptr %2178, %39
  br i1 %2179, label %2194, label %2180

2180:                                             ; preds = %2189, %2172
  %2181 = phi ptr [ %2190, %2189 ], [ %2178, %2172 ]
  %2182 = getelementptr i8, ptr %2181, i32 -28
  %2183 = load i32, ptr %2182, align 4
  %2184 = icmp eq i32 %2183, 37
  br i1 %2184, label %2185, label %2189

2185:                                             ; preds = %2180
  %2186 = getelementptr i8, ptr %2181, i32 -24
  %2187 = load i32, ptr %2186, align 4
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2192, label %2189

2189:                                             ; preds = %2185, %2180
  %2190 = load ptr, ptr %2181, align 4
  %2191 = icmp eq ptr %2190, %39
  br i1 %2191, label %2194, label %2180

2192:                                             ; preds = %2185
  %2193 = getelementptr i8, ptr %2181, i32 -36
  br label %2194

2194:                                             ; preds = %2192, %2189, %2172
  %2195 = phi ptr [ %2193, %2192 ], [ null, %2172 ], [ null, %2189 ]
  store ptr %2195, ptr %13, align 4
  %2196 = icmp eq i32 %2177, 0
  br i1 %2196, label %2205, label %2197

2197:                                             ; preds = %2194
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2176, align 4
  %2198 = icmp eq i32 %2177, -19
  br i1 %2198, label %2207, label %2199

2199:                                             ; preds = %2197
  %2200 = load i32, ptr %38, align 8
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2921, label %2202

2202:                                             ; preds = %2199
  %2203 = load ptr, ptr %27, align 8
  %2204 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 37), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2203, ptr noundef nonnull @.str.20, ptr noundef %2204, i32 noundef %2177) #7
  br label %2921

2205:                                             ; preds = %2194
  %2206 = getelementptr inbounds %struct.nvkm_subdev, ptr %2195, i32 0, i32 7
  store ptr %2176, ptr %2206, align 4
  br label %2207

2207:                                             ; preds = %2205, %2197, %2160
  %2208 = load ptr, ptr %318, align 4
  %2209 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2208, i32 0, i32 39
  %2210 = load i32, ptr %2209, align 4
  %2211 = icmp eq i32 %2210, 0
  %2212 = and i64 %10, 274877906944
  %2213 = icmp eq i64 %2212, 0
  %2214 = or i1 %2213, %2211
  br i1 %2214, label %2254, label %2215

2215:                                             ; preds = %2207
  %2216 = icmp eq i32 %2210, 1
  br i1 %2216, label %2219, label %2217, !prof !15

2217:                                             ; preds = %2215
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 41, i32 noundef 9, ptr noundef null) #6
  %2218 = load ptr, ptr %318, align 4
  br label %2219

2219:                                             ; preds = %2217, %2215
  %2220 = phi ptr [ %2218, %2217 ], [ %2208, %2215 ]
  %2221 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2220, i32 0, i32 39, i32 1
  %2222 = load ptr, ptr %2221, align 4
  %2223 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 58
  %2224 = call i32 %2222(ptr noundef %11, i32 noundef 38, i32 noundef -1, ptr noundef %2223) #6
  %2225 = load ptr, ptr %39, align 4
  %2226 = icmp eq ptr %2225, %39
  br i1 %2226, label %2241, label %2227

2227:                                             ; preds = %2236, %2219
  %2228 = phi ptr [ %2237, %2236 ], [ %2225, %2219 ]
  %2229 = getelementptr i8, ptr %2228, i32 -28
  %2230 = load i32, ptr %2229, align 4
  %2231 = icmp eq i32 %2230, 38
  br i1 %2231, label %2232, label %2236

2232:                                             ; preds = %2227
  %2233 = getelementptr i8, ptr %2228, i32 -24
  %2234 = load i32, ptr %2233, align 4
  %2235 = icmp eq i32 %2234, 0
  br i1 %2235, label %2239, label %2236

2236:                                             ; preds = %2232, %2227
  %2237 = load ptr, ptr %2228, align 4
  %2238 = icmp eq ptr %2237, %39
  br i1 %2238, label %2241, label %2227

2239:                                             ; preds = %2232
  %2240 = getelementptr i8, ptr %2228, i32 -36
  br label %2241

2241:                                             ; preds = %2239, %2236, %2219
  %2242 = phi ptr [ %2240, %2239 ], [ null, %2219 ], [ null, %2236 ]
  store ptr %2242, ptr %13, align 4
  %2243 = icmp eq i32 %2224, 0
  br i1 %2243, label %2252, label %2244

2244:                                             ; preds = %2241
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2223, align 8
  %2245 = icmp eq i32 %2224, -19
  br i1 %2245, label %2254, label %2246

2246:                                             ; preds = %2244
  %2247 = load i32, ptr %38, align 8
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2921, label %2249

2249:                                             ; preds = %2246
  %2250 = load ptr, ptr %27, align 8
  %2251 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 38), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2250, ptr noundef nonnull @.str.20, ptr noundef %2251, i32 noundef %2224) #7
  br label %2921

2252:                                             ; preds = %2241
  %2253 = getelementptr inbounds %struct.nvkm_subdev, ptr %2242, i32 0, i32 7
  store ptr %2223, ptr %2253, align 4
  br label %2254

2254:                                             ; preds = %2252, %2244, %2207
  %2255 = load ptr, ptr %318, align 4
  %2256 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2255, i32 0, i32 40
  %2257 = load i32, ptr %2256, align 4
  %2258 = icmp eq i32 %2257, 0
  %2259 = and i64 %10, 549755813888
  %2260 = icmp eq i64 %2259, 0
  %2261 = or i1 %2260, %2258
  br i1 %2261, label %2301, label %2262

2262:                                             ; preds = %2254
  %2263 = icmp eq i32 %2257, 1
  br i1 %2263, label %2266, label %2264, !prof !15

2264:                                             ; preds = %2262
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 42, i32 noundef 9, ptr noundef null) #6
  %2265 = load ptr, ptr %318, align 4
  br label %2266

2266:                                             ; preds = %2264, %2262
  %2267 = phi ptr [ %2265, %2264 ], [ %2255, %2262 ]
  %2268 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2267, i32 0, i32 40, i32 1
  %2269 = load ptr, ptr %2268, align 4
  %2270 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 59
  %2271 = call i32 %2269(ptr noundef %11, i32 noundef 39, i32 noundef -1, ptr noundef %2270) #6
  %2272 = load ptr, ptr %39, align 4
  %2273 = icmp eq ptr %2272, %39
  br i1 %2273, label %2288, label %2274

2274:                                             ; preds = %2283, %2266
  %2275 = phi ptr [ %2284, %2283 ], [ %2272, %2266 ]
  %2276 = getelementptr i8, ptr %2275, i32 -28
  %2277 = load i32, ptr %2276, align 4
  %2278 = icmp eq i32 %2277, 39
  br i1 %2278, label %2279, label %2283

2279:                                             ; preds = %2274
  %2280 = getelementptr i8, ptr %2275, i32 -24
  %2281 = load i32, ptr %2280, align 4
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2286, label %2283

2283:                                             ; preds = %2279, %2274
  %2284 = load ptr, ptr %2275, align 4
  %2285 = icmp eq ptr %2284, %39
  br i1 %2285, label %2288, label %2274

2286:                                             ; preds = %2279
  %2287 = getelementptr i8, ptr %2275, i32 -36
  br label %2288

2288:                                             ; preds = %2286, %2283, %2266
  %2289 = phi ptr [ %2287, %2286 ], [ null, %2266 ], [ null, %2283 ]
  store ptr %2289, ptr %13, align 4
  %2290 = icmp eq i32 %2271, 0
  br i1 %2290, label %2299, label %2291

2291:                                             ; preds = %2288
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2270, align 4
  %2292 = icmp eq i32 %2271, -19
  br i1 %2292, label %2301, label %2293

2293:                                             ; preds = %2291
  %2294 = load i32, ptr %38, align 8
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2921, label %2296

2296:                                             ; preds = %2293
  %2297 = load ptr, ptr %27, align 8
  %2298 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 39), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2297, ptr noundef nonnull @.str.20, ptr noundef %2298, i32 noundef %2271) #7
  br label %2921

2299:                                             ; preds = %2288
  %2300 = getelementptr inbounds %struct.nvkm_subdev, ptr %2289, i32 0, i32 7
  store ptr %2270, ptr %2300, align 4
  br label %2301

2301:                                             ; preds = %2299, %2291, %2254
  %2302 = load ptr, ptr %318, align 4
  %2303 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2302, i32 0, i32 41
  %2304 = load i32, ptr %2303, align 4
  %2305 = icmp eq i32 %2304, 0
  %2306 = and i64 %10, 1099511627776
  %2307 = icmp eq i64 %2306, 0
  %2308 = or i1 %2307, %2305
  br i1 %2308, label %2348, label %2309

2309:                                             ; preds = %2301
  %2310 = icmp eq i32 %2304, 1
  br i1 %2310, label %2313, label %2311, !prof !15

2311:                                             ; preds = %2309
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 43, i32 noundef 9, ptr noundef null) #6
  %2312 = load ptr, ptr %318, align 4
  br label %2313

2313:                                             ; preds = %2311, %2309
  %2314 = phi ptr [ %2312, %2311 ], [ %2302, %2309 ]
  %2315 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2314, i32 0, i32 41, i32 1
  %2316 = load ptr, ptr %2315, align 4
  %2317 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 60
  %2318 = call i32 %2316(ptr noundef %11, i32 noundef 40, i32 noundef -1, ptr noundef %2317) #6
  %2319 = load ptr, ptr %39, align 4
  %2320 = icmp eq ptr %2319, %39
  br i1 %2320, label %2335, label %2321

2321:                                             ; preds = %2330, %2313
  %2322 = phi ptr [ %2331, %2330 ], [ %2319, %2313 ]
  %2323 = getelementptr i8, ptr %2322, i32 -28
  %2324 = load i32, ptr %2323, align 4
  %2325 = icmp eq i32 %2324, 40
  br i1 %2325, label %2326, label %2330

2326:                                             ; preds = %2321
  %2327 = getelementptr i8, ptr %2322, i32 -24
  %2328 = load i32, ptr %2327, align 4
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2333, label %2330

2330:                                             ; preds = %2326, %2321
  %2331 = load ptr, ptr %2322, align 4
  %2332 = icmp eq ptr %2331, %39
  br i1 %2332, label %2335, label %2321

2333:                                             ; preds = %2326
  %2334 = getelementptr i8, ptr %2322, i32 -36
  br label %2335

2335:                                             ; preds = %2333, %2330, %2313
  %2336 = phi ptr [ %2334, %2333 ], [ null, %2313 ], [ null, %2330 ]
  store ptr %2336, ptr %13, align 4
  %2337 = icmp eq i32 %2318, 0
  br i1 %2337, label %2346, label %2338

2338:                                             ; preds = %2335
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2317, align 8
  %2339 = icmp eq i32 %2318, -19
  br i1 %2339, label %2348, label %2340

2340:                                             ; preds = %2338
  %2341 = load i32, ptr %38, align 8
  %2342 = icmp eq i32 %2341, 0
  br i1 %2342, label %2921, label %2343

2343:                                             ; preds = %2340
  %2344 = load ptr, ptr %27, align 8
  %2345 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 40), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2344, ptr noundef nonnull @.str.20, ptr noundef %2345, i32 noundef %2318) #7
  br label %2921

2346:                                             ; preds = %2335
  %2347 = getelementptr inbounds %struct.nvkm_subdev, ptr %2336, i32 0, i32 7
  store ptr %2317, ptr %2347, align 4
  br label %2348

2348:                                             ; preds = %2346, %2338, %2301
  %2349 = load ptr, ptr %318, align 4
  %2350 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2349, i32 0, i32 42
  %2351 = load i32, ptr %2350, align 4
  %2352 = icmp ult i32 %2351, 32
  br i1 %2352, label %2357, label %2353, !prof !15

2353:                                             ; preds = %2348
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  %2354 = load ptr, ptr %318, align 4
  %2355 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2354, i32 0, i32 42
  %2356 = load i32, ptr %2355, align 4
  br label %2357

2357:                                             ; preds = %2353, %2348
  %2358 = phi i32 [ %2356, %2353 ], [ %2351, %2348 ]
  %2359 = phi ptr [ %2354, %2353 ], [ %2349, %2348 ]
  %2360 = icmp eq i32 %2358, 0
  br i1 %2360, label %2414, label %2361

2361:                                             ; preds = %2357
  %2362 = and i64 %10, 2199023255552
  %2363 = icmp eq i64 %2362, 0
  br label %2364

2364:                                             ; preds = %2406, %2361
  %2365 = phi i32 [ %2358, %2361 ], [ %2410, %2406 ]
  %2366 = phi ptr [ %2359, %2361 ], [ %2408, %2406 ]
  %2367 = phi i32 [ 0, %2361 ], [ %2407, %2406 ]
  %2368 = shl nuw nsw i32 1, %2367
  %2369 = and i32 %2365, %2368
  %2370 = icmp eq i32 %2369, 0
  %2371 = or i1 %2363, %2370
  br i1 %2371, label %2406, label %2372

2372:                                             ; preds = %2364
  %2373 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2366, i32 0, i32 42, i32 1
  %2374 = load ptr, ptr %2373, align 4
  %2375 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 61, i32 %2367
  %2376 = call i32 %2374(ptr noundef %11, i32 noundef 41, i32 noundef %2367, ptr noundef %2375) #6
  %2377 = load ptr, ptr %39, align 4
  %2378 = icmp eq ptr %2377, %39
  br i1 %2378, label %2393, label %2379

2379:                                             ; preds = %2388, %2372
  %2380 = phi ptr [ %2389, %2388 ], [ %2377, %2372 ]
  %2381 = getelementptr i8, ptr %2380, i32 -28
  %2382 = load i32, ptr %2381, align 4
  %2383 = icmp eq i32 %2382, 41
  br i1 %2383, label %2384, label %2388

2384:                                             ; preds = %2379
  %2385 = getelementptr i8, ptr %2380, i32 -24
  %2386 = load i32, ptr %2385, align 4
  %2387 = icmp eq i32 %2386, %2367
  br i1 %2387, label %2391, label %2388

2388:                                             ; preds = %2384, %2379
  %2389 = load ptr, ptr %2380, align 4
  %2390 = icmp eq ptr %2389, %39
  br i1 %2390, label %2393, label %2379

2391:                                             ; preds = %2384
  %2392 = getelementptr i8, ptr %2380, i32 -36
  br label %2393

2393:                                             ; preds = %2391, %2388, %2372
  %2394 = phi ptr [ %2392, %2391 ], [ null, %2372 ], [ null, %2388 ]
  store ptr %2394, ptr %13, align 4
  %2395 = icmp eq i32 %2376, 0
  br i1 %2395, label %2404, label %2396

2396:                                             ; preds = %2393
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2375, align 4
  %2397 = icmp eq i32 %2376, -19
  br i1 %2397, label %2406, label %2398

2398:                                             ; preds = %2396
  %2399 = load i32, ptr %38, align 8
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2921, label %2401

2401:                                             ; preds = %2398
  %2402 = load ptr, ptr %27, align 8
  %2403 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 41), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2402, ptr noundef nonnull @.str.21, ptr noundef %2403, i32 noundef %2367, i32 noundef %2376) #7
  br label %2921

2404:                                             ; preds = %2393
  %2405 = getelementptr inbounds %struct.nvkm_subdev, ptr %2394, i32 0, i32 7
  store ptr %2375, ptr %2405, align 4
  br label %2406

2406:                                             ; preds = %2404, %2396, %2364
  %2407 = add nuw nsw i32 %2367, 1
  %2408 = load ptr, ptr %318, align 4
  %2409 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2408, i32 0, i32 42
  %2410 = load i32, ptr %2409, align 4
  %2411 = icmp ne i32 %2410, 0
  %2412 = icmp ult i32 %2367, 4
  %2413 = select i1 %2411, i1 %2412, i1 false
  br i1 %2413, label %2364, label %2414

2414:                                             ; preds = %2406, %2357
  %2415 = phi ptr [ %2359, %2357 ], [ %2408, %2406 ]
  %2416 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2415, i32 0, i32 43
  %2417 = load i32, ptr %2416, align 4
  %2418 = icmp ult i32 %2417, 8
  br i1 %2418, label %2423, label %2419, !prof !15

2419:                                             ; preds = %2414
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  %2420 = load ptr, ptr %318, align 4
  %2421 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2420, i32 0, i32 43
  %2422 = load i32, ptr %2421, align 4
  br label %2423

2423:                                             ; preds = %2419, %2414
  %2424 = phi i32 [ %2422, %2419 ], [ %2417, %2414 ]
  %2425 = phi ptr [ %2420, %2419 ], [ %2415, %2414 ]
  %2426 = icmp eq i32 %2424, 0
  br i1 %2426, label %2545, label %2427

2427:                                             ; preds = %2423
  %2428 = and i64 %10, 4398046511104
  %2429 = icmp eq i64 %2428, 0
  %2430 = and i32 %2424, 1
  %2431 = icmp eq i32 %2430, 0
  %2432 = or i1 %2429, %2431
  br i1 %2432, label %2469, label %2433

2433:                                             ; preds = %2427
  %2434 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2425, i32 0, i32 43, i32 1
  %2435 = load ptr, ptr %2434, align 4
  %2436 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 62, i32 0
  %2437 = call i32 %2435(ptr noundef %11, i32 noundef 42, i32 noundef 0, ptr noundef %2436) #6
  %2438 = load ptr, ptr %39, align 4
  %2439 = icmp eq ptr %2438, %39
  br i1 %2439, label %2454, label %2440

2440:                                             ; preds = %2449, %2433
  %2441 = phi ptr [ %2450, %2449 ], [ %2438, %2433 ]
  %2442 = getelementptr i8, ptr %2441, i32 -28
  %2443 = load i32, ptr %2442, align 4
  %2444 = icmp eq i32 %2443, 42
  br i1 %2444, label %2445, label %2449

2445:                                             ; preds = %2440
  %2446 = getelementptr i8, ptr %2441, i32 -24
  %2447 = load i32, ptr %2446, align 4
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2452, label %2449

2449:                                             ; preds = %2445, %2440
  %2450 = load ptr, ptr %2441, align 4
  %2451 = icmp eq ptr %2450, %39
  br i1 %2451, label %2454, label %2440

2452:                                             ; preds = %2445
  %2453 = getelementptr i8, ptr %2441, i32 -36
  br label %2454

2454:                                             ; preds = %2452, %2449, %2433
  %2455 = phi ptr [ %2453, %2452 ], [ null, %2433 ], [ null, %2449 ]
  store ptr %2455, ptr %13, align 4
  %2456 = icmp eq i32 %2437, 0
  br i1 %2456, label %2467, label %2457

2457:                                             ; preds = %2454
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2436, align 4
  %2458 = icmp eq i32 %2437, -19
  br i1 %2458, label %2469, label %2459

2459:                                             ; preds = %2539, %2502, %2457
  %2460 = phi i32 [ 0, %2457 ], [ 1, %2502 ], [ 2, %2539 ]
  %2461 = phi i32 [ %2437, %2457 ], [ %2482, %2502 ], [ %2519, %2539 ]
  %2462 = load i32, ptr %38, align 8
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2921, label %2464

2464:                                             ; preds = %2459
  %2465 = load ptr, ptr %27, align 8
  %2466 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 42), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2465, ptr noundef nonnull @.str.21, ptr noundef %2466, i32 noundef %2460, i32 noundef %2461) #7
  br label %2921

2467:                                             ; preds = %2454
  %2468 = getelementptr inbounds %struct.nvkm_subdev, ptr %2455, i32 0, i32 7
  store ptr %2436, ptr %2468, align 4
  br label %2469

2469:                                             ; preds = %2467, %2457, %2427
  %2470 = load ptr, ptr %318, align 4
  %2471 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2470, i32 0, i32 43
  %2472 = load i32, ptr %2471, align 4
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2545, label %2474

2474:                                             ; preds = %2469
  %2475 = and i32 %2472, 2
  %2476 = icmp eq i32 %2475, 0
  %2477 = or i1 %2429, %2476
  br i1 %2477, label %2506, label %2478

2478:                                             ; preds = %2474
  %2479 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2470, i32 0, i32 43, i32 1
  %2480 = load ptr, ptr %2479, align 4
  %2481 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 62, i32 1
  %2482 = call i32 %2480(ptr noundef %11, i32 noundef 42, i32 noundef 1, ptr noundef %2481) #6
  %2483 = load ptr, ptr %39, align 4
  %2484 = icmp eq ptr %2483, %39
  br i1 %2484, label %2499, label %2485

2485:                                             ; preds = %2494, %2478
  %2486 = phi ptr [ %2495, %2494 ], [ %2483, %2478 ]
  %2487 = getelementptr i8, ptr %2486, i32 -28
  %2488 = load i32, ptr %2487, align 4
  %2489 = icmp eq i32 %2488, 42
  br i1 %2489, label %2490, label %2494

2490:                                             ; preds = %2485
  %2491 = getelementptr i8, ptr %2486, i32 -24
  %2492 = load i32, ptr %2491, align 4
  %2493 = icmp eq i32 %2492, 1
  br i1 %2493, label %2497, label %2494

2494:                                             ; preds = %2490, %2485
  %2495 = load ptr, ptr %2486, align 4
  %2496 = icmp eq ptr %2495, %39
  br i1 %2496, label %2499, label %2485

2497:                                             ; preds = %2490
  %2498 = getelementptr i8, ptr %2486, i32 -36
  br label %2499

2499:                                             ; preds = %2497, %2494, %2478
  %2500 = phi ptr [ %2498, %2497 ], [ null, %2478 ], [ null, %2494 ]
  store ptr %2500, ptr %13, align 4
  %2501 = icmp eq i32 %2482, 0
  br i1 %2501, label %2504, label %2502

2502:                                             ; preds = %2499
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2481, align 4
  %2503 = icmp eq i32 %2482, -19
  br i1 %2503, label %2506, label %2459

2504:                                             ; preds = %2499
  %2505 = getelementptr inbounds %struct.nvkm_subdev, ptr %2500, i32 0, i32 7
  store ptr %2481, ptr %2505, align 4
  br label %2506

2506:                                             ; preds = %2504, %2502, %2474
  %2507 = load ptr, ptr %318, align 4
  %2508 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2507, i32 0, i32 43
  %2509 = load i32, ptr %2508, align 4
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2545, label %2511

2511:                                             ; preds = %2506
  %2512 = and i32 %2509, 4
  %2513 = icmp eq i32 %2512, 0
  %2514 = or i1 %2429, %2513
  br i1 %2514, label %2543, label %2515

2515:                                             ; preds = %2511
  %2516 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2507, i32 0, i32 43, i32 1
  %2517 = load ptr, ptr %2516, align 4
  %2518 = getelementptr %struct.nvkm_device, ptr %11, i32 0, i32 62, i32 2
  %2519 = call i32 %2517(ptr noundef %11, i32 noundef 42, i32 noundef 2, ptr noundef %2518) #6
  %2520 = load ptr, ptr %39, align 4
  %2521 = icmp eq ptr %2520, %39
  br i1 %2521, label %2536, label %2522

2522:                                             ; preds = %2531, %2515
  %2523 = phi ptr [ %2532, %2531 ], [ %2520, %2515 ]
  %2524 = getelementptr i8, ptr %2523, i32 -28
  %2525 = load i32, ptr %2524, align 4
  %2526 = icmp eq i32 %2525, 42
  br i1 %2526, label %2527, label %2531

2527:                                             ; preds = %2522
  %2528 = getelementptr i8, ptr %2523, i32 -24
  %2529 = load i32, ptr %2528, align 4
  %2530 = icmp eq i32 %2529, 2
  br i1 %2530, label %2534, label %2531

2531:                                             ; preds = %2527, %2522
  %2532 = load ptr, ptr %2523, align 4
  %2533 = icmp eq ptr %2532, %39
  br i1 %2533, label %2536, label %2522

2534:                                             ; preds = %2527
  %2535 = getelementptr i8, ptr %2523, i32 -36
  br label %2536

2536:                                             ; preds = %2534, %2531, %2515
  %2537 = phi ptr [ %2535, %2534 ], [ null, %2515 ], [ null, %2531 ]
  store ptr %2537, ptr %13, align 4
  %2538 = icmp eq i32 %2519, 0
  br i1 %2538, label %2541, label %2539

2539:                                             ; preds = %2536
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2518, align 4
  %2540 = icmp eq i32 %2519, -19
  br i1 %2540, label %2543, label %2459

2541:                                             ; preds = %2536
  %2542 = getelementptr inbounds %struct.nvkm_subdev, ptr %2537, i32 0, i32 7
  store ptr %2518, ptr %2542, align 4
  br label %2543

2543:                                             ; preds = %2541, %2539, %2511
  %2544 = load ptr, ptr %318, align 4
  br label %2545

2545:                                             ; preds = %2543, %2506, %2469, %2423
  %2546 = phi ptr [ %2425, %2423 ], [ %2470, %2469 ], [ %2507, %2506 ], [ %2544, %2543 ]
  %2547 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2546, i32 0, i32 44
  %2548 = load i32, ptr %2547, align 4
  %2549 = icmp eq i32 %2548, 0
  %2550 = and i64 %10, 8796093022208
  %2551 = icmp eq i64 %2550, 0
  %2552 = or i1 %2551, %2549
  br i1 %2552, label %2592, label %2553

2553:                                             ; preds = %2545
  %2554 = icmp eq i32 %2548, 1
  br i1 %2554, label %2557, label %2555, !prof !15

2555:                                             ; preds = %2553
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 46, i32 noundef 9, ptr noundef null) #6
  %2556 = load ptr, ptr %318, align 4
  br label %2557

2557:                                             ; preds = %2555, %2553
  %2558 = phi ptr [ %2556, %2555 ], [ %2546, %2553 ]
  %2559 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2558, i32 0, i32 44, i32 1
  %2560 = load ptr, ptr %2559, align 4
  %2561 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 63
  %2562 = call i32 %2560(ptr noundef %11, i32 noundef 43, i32 noundef -1, ptr noundef %2561) #6
  %2563 = load ptr, ptr %39, align 4
  %2564 = icmp eq ptr %2563, %39
  br i1 %2564, label %2579, label %2565

2565:                                             ; preds = %2574, %2557
  %2566 = phi ptr [ %2575, %2574 ], [ %2563, %2557 ]
  %2567 = getelementptr i8, ptr %2566, i32 -28
  %2568 = load i32, ptr %2567, align 4
  %2569 = icmp eq i32 %2568, 43
  br i1 %2569, label %2570, label %2574

2570:                                             ; preds = %2565
  %2571 = getelementptr i8, ptr %2566, i32 -24
  %2572 = load i32, ptr %2571, align 4
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2577, label %2574

2574:                                             ; preds = %2570, %2565
  %2575 = load ptr, ptr %2566, align 4
  %2576 = icmp eq ptr %2575, %39
  br i1 %2576, label %2579, label %2565

2577:                                             ; preds = %2570
  %2578 = getelementptr i8, ptr %2566, i32 -36
  br label %2579

2579:                                             ; preds = %2577, %2574, %2557
  %2580 = phi ptr [ %2578, %2577 ], [ null, %2557 ], [ null, %2574 ]
  store ptr %2580, ptr %13, align 4
  %2581 = icmp eq i32 %2562, 0
  br i1 %2581, label %2590, label %2582

2582:                                             ; preds = %2579
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2561, align 4
  %2583 = icmp eq i32 %2562, -19
  br i1 %2583, label %2592, label %2584

2584:                                             ; preds = %2582
  %2585 = load i32, ptr %38, align 8
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2921, label %2587

2587:                                             ; preds = %2584
  %2588 = load ptr, ptr %27, align 8
  %2589 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 43), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2588, ptr noundef nonnull @.str.20, ptr noundef %2589, i32 noundef %2562) #7
  br label %2921

2590:                                             ; preds = %2579
  %2591 = getelementptr inbounds %struct.nvkm_subdev, ptr %2580, i32 0, i32 7
  store ptr %2561, ptr %2591, align 4
  br label %2592

2592:                                             ; preds = %2590, %2582, %2545
  %2593 = load ptr, ptr %318, align 4
  %2594 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2593, i32 0, i32 45
  %2595 = load i32, ptr %2594, align 4
  %2596 = icmp eq i32 %2595, 0
  %2597 = and i64 %10, 17592186044416
  %2598 = icmp eq i64 %2597, 0
  %2599 = or i1 %2598, %2596
  br i1 %2599, label %2639, label %2600

2600:                                             ; preds = %2592
  %2601 = icmp eq i32 %2595, 1
  br i1 %2601, label %2604, label %2602, !prof !15

2602:                                             ; preds = %2600
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 47, i32 noundef 9, ptr noundef null) #6
  %2603 = load ptr, ptr %318, align 4
  br label %2604

2604:                                             ; preds = %2602, %2600
  %2605 = phi ptr [ %2603, %2602 ], [ %2593, %2600 ]
  %2606 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2605, i32 0, i32 45, i32 1
  %2607 = load ptr, ptr %2606, align 4
  %2608 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 64
  %2609 = call i32 %2607(ptr noundef %11, i32 noundef 44, i32 noundef -1, ptr noundef %2608) #6
  %2610 = load ptr, ptr %39, align 4
  %2611 = icmp eq ptr %2610, %39
  br i1 %2611, label %2626, label %2612

2612:                                             ; preds = %2621, %2604
  %2613 = phi ptr [ %2622, %2621 ], [ %2610, %2604 ]
  %2614 = getelementptr i8, ptr %2613, i32 -28
  %2615 = load i32, ptr %2614, align 4
  %2616 = icmp eq i32 %2615, 44
  br i1 %2616, label %2617, label %2621

2617:                                             ; preds = %2612
  %2618 = getelementptr i8, ptr %2613, i32 -24
  %2619 = load i32, ptr %2618, align 4
  %2620 = icmp eq i32 %2619, 0
  br i1 %2620, label %2624, label %2621

2621:                                             ; preds = %2617, %2612
  %2622 = load ptr, ptr %2613, align 4
  %2623 = icmp eq ptr %2622, %39
  br i1 %2623, label %2626, label %2612

2624:                                             ; preds = %2617
  %2625 = getelementptr i8, ptr %2613, i32 -36
  br label %2626

2626:                                             ; preds = %2624, %2621, %2604
  %2627 = phi ptr [ %2625, %2624 ], [ null, %2604 ], [ null, %2621 ]
  store ptr %2627, ptr %13, align 4
  %2628 = icmp eq i32 %2609, 0
  br i1 %2628, label %2637, label %2629

2629:                                             ; preds = %2626
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2608, align 8
  %2630 = icmp eq i32 %2609, -19
  br i1 %2630, label %2639, label %2631

2631:                                             ; preds = %2629
  %2632 = load i32, ptr %38, align 8
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2921, label %2634

2634:                                             ; preds = %2631
  %2635 = load ptr, ptr %27, align 8
  %2636 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 44), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2635, ptr noundef nonnull @.str.20, ptr noundef %2636, i32 noundef %2609) #7
  br label %2921

2637:                                             ; preds = %2626
  %2638 = getelementptr inbounds %struct.nvkm_subdev, ptr %2627, i32 0, i32 7
  store ptr %2608, ptr %2638, align 4
  br label %2639

2639:                                             ; preds = %2637, %2629, %2592
  %2640 = load ptr, ptr %318, align 4
  %2641 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2640, i32 0, i32 46
  %2642 = load i32, ptr %2641, align 4
  %2643 = icmp eq i32 %2642, 0
  %2644 = and i64 %10, 35184372088832
  %2645 = icmp eq i64 %2644, 0
  %2646 = or i1 %2645, %2643
  br i1 %2646, label %2686, label %2647

2647:                                             ; preds = %2639
  %2648 = icmp eq i32 %2642, 1
  br i1 %2648, label %2651, label %2649, !prof !15

2649:                                             ; preds = %2647
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 48, i32 noundef 9, ptr noundef null) #6
  %2650 = load ptr, ptr %318, align 4
  br label %2651

2651:                                             ; preds = %2649, %2647
  %2652 = phi ptr [ %2650, %2649 ], [ %2640, %2647 ]
  %2653 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2652, i32 0, i32 46, i32 1
  %2654 = load ptr, ptr %2653, align 4
  %2655 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 65
  %2656 = call i32 %2654(ptr noundef %11, i32 noundef 45, i32 noundef -1, ptr noundef %2655) #6
  %2657 = load ptr, ptr %39, align 4
  %2658 = icmp eq ptr %2657, %39
  br i1 %2658, label %2673, label %2659

2659:                                             ; preds = %2668, %2651
  %2660 = phi ptr [ %2669, %2668 ], [ %2657, %2651 ]
  %2661 = getelementptr i8, ptr %2660, i32 -28
  %2662 = load i32, ptr %2661, align 4
  %2663 = icmp eq i32 %2662, 45
  br i1 %2663, label %2664, label %2668

2664:                                             ; preds = %2659
  %2665 = getelementptr i8, ptr %2660, i32 -24
  %2666 = load i32, ptr %2665, align 4
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %2671, label %2668

2668:                                             ; preds = %2664, %2659
  %2669 = load ptr, ptr %2660, align 4
  %2670 = icmp eq ptr %2669, %39
  br i1 %2670, label %2673, label %2659

2671:                                             ; preds = %2664
  %2672 = getelementptr i8, ptr %2660, i32 -36
  br label %2673

2673:                                             ; preds = %2671, %2668, %2651
  %2674 = phi ptr [ %2672, %2671 ], [ null, %2651 ], [ null, %2668 ]
  store ptr %2674, ptr %13, align 4
  %2675 = icmp eq i32 %2656, 0
  br i1 %2675, label %2684, label %2676

2676:                                             ; preds = %2673
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2655, align 4
  %2677 = icmp eq i32 %2656, -19
  br i1 %2677, label %2686, label %2678

2678:                                             ; preds = %2676
  %2679 = load i32, ptr %38, align 8
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2921, label %2681

2681:                                             ; preds = %2678
  %2682 = load ptr, ptr %27, align 8
  %2683 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 45), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2682, ptr noundef nonnull @.str.20, ptr noundef %2683, i32 noundef %2656) #7
  br label %2921

2684:                                             ; preds = %2673
  %2685 = getelementptr inbounds %struct.nvkm_subdev, ptr %2674, i32 0, i32 7
  store ptr %2655, ptr %2685, align 4
  br label %2686

2686:                                             ; preds = %2684, %2676, %2639
  %2687 = load ptr, ptr %318, align 4
  %2688 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2687, i32 0, i32 47
  %2689 = load i32, ptr %2688, align 4
  %2690 = icmp eq i32 %2689, 0
  %2691 = and i64 %10, 70368744177664
  %2692 = icmp eq i64 %2691, 0
  %2693 = or i1 %2692, %2690
  br i1 %2693, label %2733, label %2694

2694:                                             ; preds = %2686
  %2695 = icmp eq i32 %2689, 1
  br i1 %2695, label %2698, label %2696, !prof !15

2696:                                             ; preds = %2694
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 49, i32 noundef 9, ptr noundef null) #6
  %2697 = load ptr, ptr %318, align 4
  br label %2698

2698:                                             ; preds = %2696, %2694
  %2699 = phi ptr [ %2697, %2696 ], [ %2687, %2694 ]
  %2700 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2699, i32 0, i32 47, i32 1
  %2701 = load ptr, ptr %2700, align 4
  %2702 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 66
  %2703 = call i32 %2701(ptr noundef %11, i32 noundef 46, i32 noundef -1, ptr noundef %2702) #6
  %2704 = load ptr, ptr %39, align 4
  %2705 = icmp eq ptr %2704, %39
  br i1 %2705, label %2720, label %2706

2706:                                             ; preds = %2715, %2698
  %2707 = phi ptr [ %2716, %2715 ], [ %2704, %2698 ]
  %2708 = getelementptr i8, ptr %2707, i32 -28
  %2709 = load i32, ptr %2708, align 4
  %2710 = icmp eq i32 %2709, 46
  br i1 %2710, label %2711, label %2715

2711:                                             ; preds = %2706
  %2712 = getelementptr i8, ptr %2707, i32 -24
  %2713 = load i32, ptr %2712, align 4
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2718, label %2715

2715:                                             ; preds = %2711, %2706
  %2716 = load ptr, ptr %2707, align 4
  %2717 = icmp eq ptr %2716, %39
  br i1 %2717, label %2720, label %2706

2718:                                             ; preds = %2711
  %2719 = getelementptr i8, ptr %2707, i32 -36
  br label %2720

2720:                                             ; preds = %2718, %2715, %2698
  %2721 = phi ptr [ %2719, %2718 ], [ null, %2698 ], [ null, %2715 ]
  store ptr %2721, ptr %13, align 4
  %2722 = icmp eq i32 %2703, 0
  br i1 %2722, label %2731, label %2723

2723:                                             ; preds = %2720
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2702, align 8
  %2724 = icmp eq i32 %2703, -19
  br i1 %2724, label %2733, label %2725

2725:                                             ; preds = %2723
  %2726 = load i32, ptr %38, align 8
  %2727 = icmp eq i32 %2726, 0
  br i1 %2727, label %2921, label %2728

2728:                                             ; preds = %2725
  %2729 = load ptr, ptr %27, align 8
  %2730 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 46), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2729, ptr noundef nonnull @.str.20, ptr noundef %2730, i32 noundef %2703) #7
  br label %2921

2731:                                             ; preds = %2720
  %2732 = getelementptr inbounds %struct.nvkm_subdev, ptr %2721, i32 0, i32 7
  store ptr %2702, ptr %2732, align 4
  br label %2733

2733:                                             ; preds = %2731, %2723, %2686
  %2734 = load ptr, ptr %318, align 4
  %2735 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2734, i32 0, i32 48
  %2736 = load i32, ptr %2735, align 4
  %2737 = icmp eq i32 %2736, 0
  %2738 = and i64 %10, 140737488355328
  %2739 = icmp eq i64 %2738, 0
  %2740 = or i1 %2739, %2737
  br i1 %2740, label %2780, label %2741

2741:                                             ; preds = %2733
  %2742 = icmp eq i32 %2736, 1
  br i1 %2742, label %2745, label %2743, !prof !15

2743:                                             ; preds = %2741
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 50, i32 noundef 9, ptr noundef null) #6
  %2744 = load ptr, ptr %318, align 4
  br label %2745

2745:                                             ; preds = %2743, %2741
  %2746 = phi ptr [ %2744, %2743 ], [ %2734, %2741 ]
  %2747 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2746, i32 0, i32 48, i32 1
  %2748 = load ptr, ptr %2747, align 4
  %2749 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 67
  %2750 = call i32 %2748(ptr noundef %11, i32 noundef 47, i32 noundef -1, ptr noundef %2749) #6
  %2751 = load ptr, ptr %39, align 4
  %2752 = icmp eq ptr %2751, %39
  br i1 %2752, label %2767, label %2753

2753:                                             ; preds = %2762, %2745
  %2754 = phi ptr [ %2763, %2762 ], [ %2751, %2745 ]
  %2755 = getelementptr i8, ptr %2754, i32 -28
  %2756 = load i32, ptr %2755, align 4
  %2757 = icmp eq i32 %2756, 47
  br i1 %2757, label %2758, label %2762

2758:                                             ; preds = %2753
  %2759 = getelementptr i8, ptr %2754, i32 -24
  %2760 = load i32, ptr %2759, align 4
  %2761 = icmp eq i32 %2760, 0
  br i1 %2761, label %2765, label %2762

2762:                                             ; preds = %2758, %2753
  %2763 = load ptr, ptr %2754, align 4
  %2764 = icmp eq ptr %2763, %39
  br i1 %2764, label %2767, label %2753

2765:                                             ; preds = %2758
  %2766 = getelementptr i8, ptr %2754, i32 -36
  br label %2767

2767:                                             ; preds = %2765, %2762, %2745
  %2768 = phi ptr [ %2766, %2765 ], [ null, %2745 ], [ null, %2762 ]
  store ptr %2768, ptr %13, align 4
  %2769 = icmp eq i32 %2750, 0
  br i1 %2769, label %2778, label %2770

2770:                                             ; preds = %2767
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2749, align 4
  %2771 = icmp eq i32 %2750, -19
  br i1 %2771, label %2780, label %2772

2772:                                             ; preds = %2770
  %2773 = load i32, ptr %38, align 8
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2921, label %2775

2775:                                             ; preds = %2772
  %2776 = load ptr, ptr %27, align 8
  %2777 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 47), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2776, ptr noundef nonnull @.str.20, ptr noundef %2777, i32 noundef %2750) #7
  br label %2921

2778:                                             ; preds = %2767
  %2779 = getelementptr inbounds %struct.nvkm_subdev, ptr %2768, i32 0, i32 7
  store ptr %2749, ptr %2779, align 4
  br label %2780

2780:                                             ; preds = %2778, %2770, %2733
  %2781 = load ptr, ptr %318, align 4
  %2782 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2781, i32 0, i32 49
  %2783 = load i32, ptr %2782, align 4
  %2784 = icmp eq i32 %2783, 0
  %2785 = and i64 %10, 281474976710656
  %2786 = icmp eq i64 %2785, 0
  %2787 = or i1 %2786, %2784
  br i1 %2787, label %2827, label %2788

2788:                                             ; preds = %2780
  %2789 = icmp eq i32 %2783, 1
  br i1 %2789, label %2792, label %2790, !prof !15

2790:                                             ; preds = %2788
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 51, i32 noundef 9, ptr noundef null) #6
  %2791 = load ptr, ptr %318, align 4
  br label %2792

2792:                                             ; preds = %2790, %2788
  %2793 = phi ptr [ %2791, %2790 ], [ %2781, %2788 ]
  %2794 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2793, i32 0, i32 49, i32 1
  %2795 = load ptr, ptr %2794, align 4
  %2796 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 68
  %2797 = call i32 %2795(ptr noundef %11, i32 noundef 48, i32 noundef -1, ptr noundef %2796) #6
  %2798 = load ptr, ptr %39, align 4
  %2799 = icmp eq ptr %2798, %39
  br i1 %2799, label %2814, label %2800

2800:                                             ; preds = %2809, %2792
  %2801 = phi ptr [ %2810, %2809 ], [ %2798, %2792 ]
  %2802 = getelementptr i8, ptr %2801, i32 -28
  %2803 = load i32, ptr %2802, align 4
  %2804 = icmp eq i32 %2803, 48
  br i1 %2804, label %2805, label %2809

2805:                                             ; preds = %2800
  %2806 = getelementptr i8, ptr %2801, i32 -24
  %2807 = load i32, ptr %2806, align 4
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2812, label %2809

2809:                                             ; preds = %2805, %2800
  %2810 = load ptr, ptr %2801, align 4
  %2811 = icmp eq ptr %2810, %39
  br i1 %2811, label %2814, label %2800

2812:                                             ; preds = %2805
  %2813 = getelementptr i8, ptr %2801, i32 -36
  br label %2814

2814:                                             ; preds = %2812, %2809, %2792
  %2815 = phi ptr [ %2813, %2812 ], [ null, %2792 ], [ null, %2809 ]
  store ptr %2815, ptr %13, align 4
  %2816 = icmp eq i32 %2797, 0
  br i1 %2816, label %2825, label %2817

2817:                                             ; preds = %2814
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2796, align 8
  %2818 = icmp eq i32 %2797, -19
  br i1 %2818, label %2827, label %2819

2819:                                             ; preds = %2817
  %2820 = load i32, ptr %38, align 8
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2921, label %2822

2822:                                             ; preds = %2819
  %2823 = load ptr, ptr %27, align 8
  %2824 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 48), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2823, ptr noundef nonnull @.str.20, ptr noundef %2824, i32 noundef %2797) #7
  br label %2921

2825:                                             ; preds = %2814
  %2826 = getelementptr inbounds %struct.nvkm_subdev, ptr %2815, i32 0, i32 7
  store ptr %2796, ptr %2826, align 4
  br label %2827

2827:                                             ; preds = %2825, %2817, %2780
  %2828 = load ptr, ptr %318, align 4
  %2829 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2828, i32 0, i32 50
  %2830 = load i32, ptr %2829, align 4
  %2831 = icmp eq i32 %2830, 0
  %2832 = and i64 %10, 562949953421312
  %2833 = icmp eq i64 %2832, 0
  %2834 = or i1 %2833, %2831
  br i1 %2834, label %2874, label %2835

2835:                                             ; preds = %2827
  %2836 = icmp eq i32 %2830, 1
  br i1 %2836, label %2839, label %2837, !prof !15

2837:                                             ; preds = %2835
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  %2838 = load ptr, ptr %318, align 4
  br label %2839

2839:                                             ; preds = %2837, %2835
  %2840 = phi ptr [ %2838, %2837 ], [ %2828, %2835 ]
  %2841 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2840, i32 0, i32 50, i32 1
  %2842 = load ptr, ptr %2841, align 4
  %2843 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 69
  %2844 = call i32 %2842(ptr noundef %11, i32 noundef 49, i32 noundef -1, ptr noundef %2843) #6
  %2845 = load ptr, ptr %39, align 4
  %2846 = icmp eq ptr %2845, %39
  br i1 %2846, label %2861, label %2847

2847:                                             ; preds = %2856, %2839
  %2848 = phi ptr [ %2857, %2856 ], [ %2845, %2839 ]
  %2849 = getelementptr i8, ptr %2848, i32 -28
  %2850 = load i32, ptr %2849, align 4
  %2851 = icmp eq i32 %2850, 49
  br i1 %2851, label %2852, label %2856

2852:                                             ; preds = %2847
  %2853 = getelementptr i8, ptr %2848, i32 -24
  %2854 = load i32, ptr %2853, align 4
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %2859, label %2856

2856:                                             ; preds = %2852, %2847
  %2857 = load ptr, ptr %2848, align 4
  %2858 = icmp eq ptr %2857, %39
  br i1 %2858, label %2861, label %2847

2859:                                             ; preds = %2852
  %2860 = getelementptr i8, ptr %2848, i32 -36
  br label %2861

2861:                                             ; preds = %2859, %2856, %2839
  %2862 = phi ptr [ %2860, %2859 ], [ null, %2839 ], [ null, %2856 ]
  store ptr %2862, ptr %13, align 4
  %2863 = icmp eq i32 %2844, 0
  br i1 %2863, label %2872, label %2864

2864:                                             ; preds = %2861
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2843, align 4
  %2865 = icmp eq i32 %2844, -19
  br i1 %2865, label %2874, label %2866

2866:                                             ; preds = %2864
  %2867 = load i32, ptr %38, align 8
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2921, label %2869

2869:                                             ; preds = %2866
  %2870 = load ptr, ptr %27, align 8
  %2871 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 49), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2870, ptr noundef nonnull @.str.20, ptr noundef %2871, i32 noundef %2844) #7
  br label %2921

2872:                                             ; preds = %2861
  %2873 = getelementptr inbounds %struct.nvkm_subdev, ptr %2862, i32 0, i32 7
  store ptr %2843, ptr %2873, align 4
  br label %2874

2874:                                             ; preds = %2872, %2864, %2827
  %2875 = load ptr, ptr %318, align 4
  %2876 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2875, i32 0, i32 51
  %2877 = load i32, ptr %2876, align 4
  %2878 = icmp eq i32 %2877, 0
  %2879 = and i64 %10, 1125899906842624
  %2880 = icmp eq i64 %2879, 0
  %2881 = or i1 %2880, %2878
  br i1 %2881, label %2921, label %2882

2882:                                             ; preds = %2874
  %2883 = icmp eq i32 %2877, 1
  br i1 %2883, label %2886, label %2884, !prof !15

2884:                                             ; preds = %2882
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  %2885 = load ptr, ptr %318, align 4
  br label %2886

2886:                                             ; preds = %2884, %2882
  %2887 = phi ptr [ %2885, %2884 ], [ %2875, %2882 ]
  %2888 = getelementptr inbounds %struct.nvkm_device_chip, ptr %2887, i32 0, i32 51, i32 1
  %2889 = load ptr, ptr %2888, align 4
  %2890 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 70
  %2891 = call i32 %2889(ptr noundef %11, i32 noundef 50, i32 noundef -1, ptr noundef %2890) #6
  %2892 = load ptr, ptr %39, align 4
  %2893 = icmp eq ptr %2892, %39
  br i1 %2893, label %2908, label %2894

2894:                                             ; preds = %2903, %2886
  %2895 = phi ptr [ %2904, %2903 ], [ %2892, %2886 ]
  %2896 = getelementptr i8, ptr %2895, i32 -28
  %2897 = load i32, ptr %2896, align 4
  %2898 = icmp eq i32 %2897, 50
  br i1 %2898, label %2899, label %2903

2899:                                             ; preds = %2894
  %2900 = getelementptr i8, ptr %2895, i32 -24
  %2901 = load i32, ptr %2900, align 4
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2906, label %2903

2903:                                             ; preds = %2899, %2894
  %2904 = load ptr, ptr %2895, align 4
  %2905 = icmp eq ptr %2904, %39
  br i1 %2905, label %2908, label %2894

2906:                                             ; preds = %2899
  %2907 = getelementptr i8, ptr %2895, i32 -36
  br label %2908

2908:                                             ; preds = %2906, %2903, %2886
  %2909 = phi ptr [ %2907, %2906 ], [ null, %2886 ], [ null, %2903 ]
  store ptr %2909, ptr %13, align 4
  %2910 = icmp eq i32 %2891, 0
  br i1 %2910, label %2919, label %2911

2911:                                             ; preds = %2908
  call void @nvkm_subdev_del(ptr noundef nonnull %13) #6
  store ptr null, ptr %2890, align 8
  %2912 = icmp eq i32 %2891, -19
  br i1 %2912, label %2921, label %2913

2913:                                             ; preds = %2911
  %2914 = load i32, ptr %38, align 8
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %2921, label %2916

2916:                                             ; preds = %2913
  %2917 = load ptr, ptr %27, align 8
  %2918 = load ptr, ptr getelementptr inbounds ([51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 50), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2917, ptr noundef nonnull @.str.20, ptr noundef %2918, i32 noundef %2891) #7
  br label %2921

2919:                                             ; preds = %2908
  %2920 = getelementptr inbounds %struct.nvkm_subdev, ptr %2909, i32 0, i32 7
  store ptr %2890, ptr %2920, align 4
  br label %2921

2921:                                             ; preds = %2919, %2916, %2913, %2911, %2874, %2869, %2866, %2822, %2819, %2775, %2772, %2728, %2725, %2681, %2678, %2634, %2631, %2587, %2584, %2464, %2459, %2401, %2398, %2343, %2340, %2296, %2293, %2249, %2246, %2202, %2199, %2155, %2152, %2108, %2105, %2061, %2058, %2014, %2011, %1967, %1964, %1920, %1917, %1873, %1870, %1826, %1823, %1771, %1768, %1713, %1710, %1666, %1663, %1543, %1538, %1488, %1485, %1441, %1438, %1394, %1391, %1347, %1344, %1300, %1297, %1253, %1250, %1206, %1203, %1159, %1156, %1112, %1109, %1065, %1062, %1018, %1015, %971, %968, %924, %921, %877, %874, %830, %827, %783, %780, %736, %733, %689, %686, %642, %639, %595, %592, %548, %545, %501, %498, %454, %451, %407, %404, %360, %357, %280, %277, %255, %252, %61, %58, %25, %22
  %2922 = phi i32 [ -17, %22 ], [ %42, %25 ], [ -12, %61 ], [ -12, %58 ], [ -19, %255 ], [ -19, %252 ], [ -19, %280 ], [ -19, %277 ], [ %335, %360 ], [ %335, %357 ], [ %382, %407 ], [ %382, %404 ], [ %429, %454 ], [ %429, %451 ], [ %476, %501 ], [ %476, %498 ], [ %523, %548 ], [ %523, %545 ], [ %570, %595 ], [ %570, %592 ], [ %617, %642 ], [ %617, %639 ], [ %664, %689 ], [ %664, %686 ], [ %711, %736 ], [ %711, %733 ], [ %758, %783 ], [ %758, %780 ], [ %805, %830 ], [ %805, %827 ], [ %852, %877 ], [ %852, %874 ], [ %899, %924 ], [ %899, %921 ], [ %946, %971 ], [ %946, %968 ], [ %993, %1018 ], [ %993, %1015 ], [ %1040, %1065 ], [ %1040, %1062 ], [ %1087, %1112 ], [ %1087, %1109 ], [ %1134, %1159 ], [ %1134, %1156 ], [ %1181, %1206 ], [ %1181, %1203 ], [ %1228, %1253 ], [ %1228, %1250 ], [ %1275, %1300 ], [ %1275, %1297 ], [ %1322, %1347 ], [ %1322, %1344 ], [ %1369, %1394 ], [ %1369, %1391 ], [ %1416, %1441 ], [ %1416, %1438 ], [ %1463, %1488 ], [ %1463, %1485 ], [ %1540, %1543 ], [ %1540, %1538 ], [ %1641, %1666 ], [ %1641, %1663 ], [ %1688, %1713 ], [ %1688, %1710 ], [ %1746, %1771 ], [ %1746, %1768 ], [ %1801, %1826 ], [ %1801, %1823 ], [ %1848, %1873 ], [ %1848, %1870 ], [ %1895, %1920 ], [ %1895, %1917 ], [ %1942, %1967 ], [ %1942, %1964 ], [ %1989, %2014 ], [ %1989, %2011 ], [ %2036, %2061 ], [ %2036, %2058 ], [ %2083, %2108 ], [ %2083, %2105 ], [ %2130, %2155 ], [ %2130, %2152 ], [ %2177, %2202 ], [ %2177, %2199 ], [ %2224, %2249 ], [ %2224, %2246 ], [ %2271, %2296 ], [ %2271, %2293 ], [ %2318, %2343 ], [ %2318, %2340 ], [ %2376, %2401 ], [ %2376, %2398 ], [ %2461, %2464 ], [ %2461, %2459 ], [ %2562, %2587 ], [ %2562, %2584 ], [ %2609, %2634 ], [ %2609, %2631 ], [ %2656, %2681 ], [ %2656, %2678 ], [ %2703, %2728 ], [ %2703, %2725 ], [ %2750, %2775 ], [ %2750, %2772 ], [ %2797, %2822 ], [ %2797, %2819 ], [ %2844, %2869 ], [ %2844, %2866 ], [ %2891, %2916 ], [ %2891, %2913 ], [ 0, %2919 ], [ 0, %2911 ], [ 0, %2874 ]
  %2923 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %2924 = load ptr, ptr %2923, align 4
  %2925 = icmp eq ptr %2924, null
  br i1 %2925, label %2931, label %2926

2926:                                             ; preds = %2921
  %2927 = xor i1 %9, true
  %2928 = icmp ne i32 %2922, 0
  %2929 = select i1 %2927, i1 true, i1 %2928
  br i1 %2929, label %2930, label %2931

2930:                                             ; preds = %2926
  call void @iounmap(ptr noundef nonnull %2924) #6
  store ptr null, ptr %2923, align 4
  br label %2931

2931:                                             ; preds = %2930, %2926, %2921
  call void @mutex_unlock(ptr noundef nonnull @nv_devices_mutex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  ret i32 %2922
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_preinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_devinit_post(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_device_event_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %7, label %6, !prof !15

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2675, i32 noundef 9, ptr noundef null) #6
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ -22, %6 ], [ 0, %7 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_bios_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_bus_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_timer_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_instmem_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dma_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_sw_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv05_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_gpio_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv11_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv15_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_sw_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv1a_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv1a_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv25_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv25_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv2a_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv30_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv30_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv31_bus_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv31_mpeg_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv34_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv35_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv35_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv36_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_timer_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_instmem_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_volt_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_mpeg_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv41_timer_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv41_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv41_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv44_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv44_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv44_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv44_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv44_mpeg_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv46_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv46_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv47_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv49_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv4c_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv4e_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv4e_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gpio_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fuse_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_mxm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bus_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_instmem_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dma_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_mpeg_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_sw_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_bsp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_cipher_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_mpeg_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_vp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g92_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_gpio_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_bus_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g98_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g98_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g98_mspdec_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g98_msppp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g98_msvld_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g98_sec_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt200_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt200_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt200_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_mspdec_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_msppp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_msvld_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp77_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp77_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp77_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp77_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp79_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp89_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp89_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp89_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp89_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp89_msvld_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_privring_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fuse_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_bus_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_volt_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_iccsense_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_dma_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mspdec_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_msppp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_msvld_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_sw_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf106_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf108_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf108_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf108_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf104_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf110_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf117_privring_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_gpio_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf117_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf117_volt_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_dma_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf117_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf117_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_top_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_privring_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_gpio_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_volt_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_mspdec_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_msvld_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_pm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_privring_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_timer_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_instmem_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_volt_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk110b_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk208_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk208_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk208_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_fuse_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_nvdec_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_nvenc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_privring_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_i2c_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_acr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_volt_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_clk_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_pci_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_fault_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_therm_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp104_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp107_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp108_acr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp108_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp108_sec2_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_privring_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_ltc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_fault_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_acr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_pmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp10b_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fault_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_gsp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_dma_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_mmu_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_bar_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fault_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_acr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_ce_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_gr_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_sec2_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga100_devinit_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga100_top_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga102_gpio_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga100_mc_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga102_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga102_disp_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga102_fifo_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ga100_fb_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 747748, i64 747775, i64 747797, i64 747825}
!9 = !{i64 748156, i64 748183, i64 748216, i64 748237, i64 748264, i64 748290}
!10 = !{!"auto-init"}
!11 = !{i64 4055565}
!12 = !{i64 2151595018}
!13 = !{i64 2151596240}
!14 = !{i64 4055147}
!15 = !{!"branch_weights", i32 2000, i32 1}
