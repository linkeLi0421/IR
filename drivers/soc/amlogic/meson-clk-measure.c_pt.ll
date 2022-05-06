; ModuleID = '/llk/IR/drivers/soc/amlogic/meson-clk-measure.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-clk-measure.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.meson_msr_id = type { ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_msr = type { ptr, [128 x %struct.meson_msr_id] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_meson_clk_measure__212_690_meson_msr_driver_init6 = internal global ptr @meson_msr_driver_init, section ".initcall6.init", align 4
@meson_msr_driver = internal global %struct.platform_driver { ptr @meson_msr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_msr_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson_msr_driver_exit = internal global ptr @meson_msr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file213 = internal constant [61 x i8] c"meson_clk_measure.file=drivers/soc/amlogic/meson-clk-measure\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [33 x i8] c"meson_clk_measure.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"meson_msr\00", align 1
@meson_msr_match_table = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_gx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_m8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_m8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_axg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_g12a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-clk-measure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_msr_sm1 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@meson_clk_msr_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"meson-clk-msr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"measure_summary\00", align 1
@clk_msr_summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_msr_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_msr_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_msr_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"  clock                     rate    precision\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" %-20s %10d    +/-%dHz\0A\00", align 1
@measure_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @measure_lock, i64 12), ptr getelementptr (i8, ptr @measure_lock, i64 12) } }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"%d\09+/-%dHz\0A\00", align 1
@clk_msr_g12a = internal global [128 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.9 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.10 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.11 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.146 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.13 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.14 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.15 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 10, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.147 }, %struct.meson_msr_id { ptr null, i32 12, ptr @.str.148 }, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.149 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.24 }, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.26 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.150 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.28 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.151 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.30 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.152 }, %struct.meson_msr_id { ptr null, i32 24, ptr @.str.153 }, %struct.meson_msr_id { ptr null, i32 25, ptr @.str.82 }, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.32 }, %struct.meson_msr_id { ptr null, i32 27, ptr @.str.154 }, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.33 }, %struct.meson_msr_id { ptr null, i32 29, ptr @.str.155 }, %struct.meson_msr_id { ptr null, i32 30, ptr @.str.156 }, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.34 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.35 }, %struct.meson_msr_id { ptr null, i32 33, ptr @.str.157 }, %struct.meson_msr_id { ptr null, i32 34, ptr @.str.158 }, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.36 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.37 }, %struct.meson_msr_id { ptr null, i32 37, ptr @.str.159 }, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.39 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.160 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.42 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.45 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.47 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.161 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 53, ptr @.str.54 }, %struct.meson_msr_id { ptr null, i32 54, ptr @.str.162 }, %struct.meson_msr_id { ptr null, i32 55, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 56, ptr @.str.163 }, %struct.meson_msr_id { ptr null, i32 57, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 58, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.59 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.61 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.164 }, %struct.meson_msr_id { ptr null, i32 63, ptr @.str.165 }, %struct.meson_msr_id { ptr null, i32 64, ptr @.str.166 }, %struct.meson_msr_id { ptr null, i32 65, ptr @.str.167 }, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.63 }, %struct.meson_msr_id { ptr null, i32 67, ptr @.str.168 }, %struct.meson_msr_id { ptr null, i32 68, ptr @.str.169 }, %struct.meson_msr_id { ptr null, i32 69, ptr @.str.170 }, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.65 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.67 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.171 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.70 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.75 }, %struct.meson_msr_id { ptr null, i32 83, ptr @.str.172 }, %struct.meson_msr_id { ptr null, i32 84, ptr @.str.173 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 89, ptr @.str.31 }, %struct.meson_msr_id { ptr null, i32 90, ptr @.str.27 }, %struct.meson_msr_id { ptr null, i32 91, ptr @.str.174 }, %struct.meson_msr_id { ptr null, i32 92, ptr @.str.175 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 94, ptr @.str.176 }, %struct.meson_msr_id { ptr null, i32 95, ptr @.str.177 }, %struct.meson_msr_id { ptr null, i32 96, ptr @.str.178 }, %struct.meson_msr_id { ptr null, i32 97, ptr @.str.179 }, %struct.meson_msr_id { ptr null, i32 98, ptr @.str.180 }, %struct.meson_msr_id { ptr null, i32 99, ptr @.str.181 }, %struct.meson_msr_id { ptr null, i32 100, ptr @.str.182 }, %struct.meson_msr_id { ptr null, i32 101, ptr @.str.183 }, %struct.meson_msr_id { ptr null, i32 102, ptr @.str.184 }, %struct.meson_msr_id { ptr null, i32 103, ptr @.str.185 }, %struct.meson_msr_id { ptr null, i32 104, ptr @.str.186 }, %struct.meson_msr_id { ptr null, i32 105, ptr @.str.187 }, %struct.meson_msr_id { ptr null, i32 106, ptr @.str.188 }, %struct.meson_msr_id { ptr null, i32 107, ptr @.str.189 }, %struct.meson_msr_id { ptr null, i32 108, ptr @.str.143 }, %struct.meson_msr_id { ptr null, i32 109, ptr @.str.144 }, %struct.meson_msr_id { ptr null, i32 110, ptr @.str.190 }, %struct.meson_msr_id { ptr null, i32 111, ptr @.str.191 }, %struct.meson_msr_id { ptr null, i32 112, ptr @.str.192 }, %struct.meson_msr_id { ptr null, i32 113, ptr @.str.193 }, %struct.meson_msr_id { ptr null, i32 114, ptr @.str.194 }, %struct.meson_msr_id { ptr null, i32 115, ptr @.str.195 }, %struct.meson_msr_id { ptr null, i32 116, ptr @.str.196 }, %struct.meson_msr_id { ptr null, i32 117, ptr @.str.119 }, %struct.meson_msr_id { ptr null, i32 118, ptr @.str.120 }, %struct.meson_msr_id { ptr null, i32 119, ptr @.str.197 }, %struct.meson_msr_id { ptr null, i32 120, ptr @.str.121 }, %struct.meson_msr_id { ptr null, i32 121, ptr @.str.122 }, %struct.meson_msr_id { ptr null, i32 122, ptr @.str.198 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer], align 4
@clk_msr_sm1 = internal global [128 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.9 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.10 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.11 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.181 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.13 }, %struct.meson_msr_id { ptr null, i32 5, ptr @.str.105 }, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.14 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.15 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 10, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.147 }, %struct.meson_msr_id { ptr null, i32 12, ptr @.str.148 }, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.149 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.24 }, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.26 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.150 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.28 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.151 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.30 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.152 }, %struct.meson_msr_id { ptr null, i32 24, ptr @.str.153 }, %struct.meson_msr_id { ptr null, i32 25, ptr @.str.82 }, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.32 }, %struct.meson_msr_id { ptr null, i32 27, ptr @.str.154 }, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.33 }, %struct.meson_msr_id { ptr null, i32 29, ptr @.str.155 }, %struct.meson_msr_id { ptr null, i32 30, ptr @.str.156 }, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.34 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.35 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 34, ptr @.str.158 }, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.36 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.37 }, %struct.meson_msr_id { ptr null, i32 37, ptr @.str.159 }, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.39 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.160 }, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.199 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.42 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.45 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.47 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.161 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 53, ptr @.str.54 }, %struct.meson_msr_id { ptr null, i32 54, ptr @.str.162 }, %struct.meson_msr_id { ptr null, i32 55, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 56, ptr @.str.163 }, %struct.meson_msr_id { ptr null, i32 57, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 58, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.59 }, %struct.meson_msr_id { ptr null, i32 60, ptr @.str.200 }, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.61 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.164 }, %struct.meson_msr_id { ptr null, i32 63, ptr @.str.165 }, %struct.meson_msr_id { ptr null, i32 64, ptr @.str.166 }, %struct.meson_msr_id { ptr null, i32 65, ptr @.str.167 }, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.63 }, %struct.meson_msr_id { ptr null, i32 67, ptr @.str.168 }, %struct.meson_msr_id { ptr null, i32 68, ptr @.str.169 }, %struct.meson_msr_id { ptr null, i32 69, ptr @.str.170 }, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.65 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.67 }, %struct.meson_msr_id { ptr null, i32 74, ptr @.str.201 }, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.171 }, %struct.meson_msr_id { ptr null, i32 76, ptr @.str.202 }, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.70 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.75 }, %struct.meson_msr_id { ptr null, i32 83, ptr @.str.172 }, %struct.meson_msr_id { ptr null, i32 84, ptr @.str.173 }, %struct.meson_msr_id { ptr null, i32 85, ptr @.str.203 }, %struct.meson_msr_id { ptr null, i32 86, ptr @.str.204 }, %struct.meson_msr_id { ptr null, i32 87, ptr @.str.205 }, %struct.meson_msr_id { ptr null, i32 88, ptr @.str.206 }, %struct.meson_msr_id { ptr null, i32 89, ptr @.str.31 }, %struct.meson_msr_id { ptr null, i32 90, ptr @.str.27 }, %struct.meson_msr_id { ptr null, i32 91, ptr @.str.207 }, %struct.meson_msr_id { ptr null, i32 92, ptr @.str.208 }, %struct.meson_msr_id { ptr null, i32 93, ptr @.str.209 }, %struct.meson_msr_id { ptr null, i32 94, ptr @.str.176 }, %struct.meson_msr_id { ptr null, i32 95, ptr @.str.177 }, %struct.meson_msr_id { ptr null, i32 96, ptr @.str.178 }, %struct.meson_msr_id { ptr null, i32 97, ptr @.str.179 }, %struct.meson_msr_id { ptr null, i32 98, ptr @.str.180 }, %struct.meson_msr_id { ptr null, i32 99, ptr @.str.210 }, %struct.meson_msr_id { ptr null, i32 100, ptr @.str.211 }, %struct.meson_msr_id { ptr null, i32 101, ptr @.str.212 }, %struct.meson_msr_id { ptr null, i32 102, ptr @.str.213 }, %struct.meson_msr_id { ptr null, i32 103, ptr @.str.214 }, %struct.meson_msr_id { ptr null, i32 104, ptr @.str.215 }, %struct.meson_msr_id { ptr null, i32 105, ptr @.str.216 }, %struct.meson_msr_id { ptr null, i32 106, ptr @.str.188 }, %struct.meson_msr_id { ptr null, i32 107, ptr @.str.189 }, %struct.meson_msr_id { ptr null, i32 108, ptr @.str.143 }, %struct.meson_msr_id { ptr null, i32 109, ptr @.str.144 }, %struct.meson_msr_id { ptr null, i32 110, ptr @.str.190 }, %struct.meson_msr_id { ptr null, i32 111, ptr @.str.191 }, %struct.meson_msr_id { ptr null, i32 112, ptr @.str.192 }, %struct.meson_msr_id { ptr null, i32 113, ptr @.str.193 }, %struct.meson_msr_id { ptr null, i32 114, ptr @.str.194 }, %struct.meson_msr_id { ptr null, i32 115, ptr @.str.195 }, %struct.meson_msr_id { ptr null, i32 116, ptr @.str.196 }, %struct.meson_msr_id { ptr null, i32 117, ptr @.str.119 }, %struct.meson_msr_id { ptr null, i32 118, ptr @.str.120 }, %struct.meson_msr_id { ptr null, i32 119, ptr @.str.197 }, %struct.meson_msr_id { ptr null, i32 120, ptr @.str.121 }, %struct.meson_msr_id { ptr null, i32 121, ptr @.str.122 }, %struct.meson_msr_id { ptr null, i32 122, ptr @.str.198 }, %struct.meson_msr_id { ptr null, i32 123, ptr @.str.217 }, %struct.meson_msr_id { ptr null, i32 124, ptr @.str.218 }, %struct.meson_msr_id { ptr null, i32 125, ptr @.str.219 }, %struct.meson_msr_id { ptr null, i32 126, ptr @.str.220 }, %struct.meson_msr_id { ptr null, i32 127, ptr @.str.221 }], align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_0\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_1\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_2\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"a53_ring_osc\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"gp0_pll\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"enci\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"clk81\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"encp\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"encl\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"vdac\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"rgmii_tx\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"pdm\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"amclk\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"fec_0\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"fec_1\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"fec_2\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"sys_pll_div16\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"sys_cpu_div16\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"hdmitx_sys\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"rtc_osc_out\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"i2s_in_src0\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"eth_phy_ref\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"hdmi_todig\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"sc_int\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"sar_adc\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"mpll_test_out\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"hdmi_tx_pixel\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"i958\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"vdin_meas\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pcm_sclk\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"pcm_mclk\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"eth_rx_or_rmii\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"mp0_out\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"fclk_div5\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"pwm_b\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"pwm_a\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"ddr_dpll_pt\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"mp1_out\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"mp2_out\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"mp3_out\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"nand_core\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"sd_emmc_b\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"sd_emmc_a\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"vid_pll_div_out\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"cci\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"wave420l_c\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"wave420l_b\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"hcodec\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"alt_32k\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"gpio_msr\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"hevc\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"vid_lock\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"pwm_f\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"pwm_e\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"pwm_d\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"pwm_c\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"aoclkx2_int\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"aoclk_int\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"rng_ring_osc_0\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"rng_ring_osc_1\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"rng_ring_osc_2\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"rng_ring_osc_3\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"vapb\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"ge2d\00", align 1
@clk_msr_gx = internal global <{ [83 x %struct.meson_msr_id], [45 x %struct.meson_msr_id] }> <{ [83 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.9 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.10 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.11 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.12 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.13 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.14 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.15 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.17 }, %struct.meson_msr_id { ptr null, i32 10, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.19 }, %struct.meson_msr_id { ptr null, i32 12, ptr @.str.20 }, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.21 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.22 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.23 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.24 }, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.26 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.27 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.28 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.29 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.30 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.31 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.32 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.33 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.34 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.35 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.36 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.37 }, %struct.meson_msr_id { ptr null, i32 37, ptr @.str.38 }, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.39 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.40 }, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.41 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.42 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.45 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.47 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.52 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.53 }, %struct.meson_msr_id { ptr null, i32 53, ptr @.str.54 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 55, ptr @.str.55 }, %struct.meson_msr_id { ptr null, i32 56, ptr @.str.56 }, %struct.meson_msr_id { ptr null, i32 57, ptr @.str.57 }, %struct.meson_msr_id { ptr null, i32 58, ptr @.str.58 }, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.59 }, %struct.meson_msr_id { ptr null, i32 60, ptr @.str.60 }, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.61 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.62 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.63 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.65 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.67 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.68 }, %struct.meson_msr_id { ptr null, i32 76, ptr @.str.69 }, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.70 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.75 }], [45 x %struct.meson_msr_id] zeroinitializer }>, align 4
@.str.77 = private unnamed_addr constant [17 x i8] c"ring_osc_out_ee0\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"ring_osc_out_ee1\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"ring_osc_out_ee2\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"a9_ring_osck\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"vid_pll\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"eth_rmii\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"fec_clk_0\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"fec_clk_1\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"fec_clk_2\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"a9_clk_div16\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"hdmi_sys\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"rtc_osc_clk_out\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"i2s_clk_in_src0\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"clk_rmii_from_pad\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"hdmi_ch0_tmds\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"lvds_fifo\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"sc_clk_int\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"mpll_clk_test_out\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"audac_clkpi\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"sdhc_rx\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"sdhc_sd\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"eth_rx_tx\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"pcm2_sclk\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"usb_32k_alt\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"vid2_pll\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"mipi_csi_cfg\00", align 1
@clk_msr_m8 = internal global <{ [64 x %struct.meson_msr_id], [64 x %struct.meson_msr_id] }> <{ [64 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.77 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.78 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.79 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.80 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 6, ptr @.str.81 }, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.15 }, %struct.meson_msr_id { ptr null, i32 8, ptr @.str.16 }, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.17 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 11, ptr @.str.82 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 13, ptr @.str.21 }, %struct.meson_msr_id { ptr null, i32 14, ptr @.str.83 }, %struct.meson_msr_id { ptr null, i32 15, ptr @.str.84 }, %struct.meson_msr_id { ptr null, i32 16, ptr @.str.85 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.86 }, %struct.meson_msr_id { ptr null, i32 19, ptr @.str.87 }, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.88 }, %struct.meson_msr_id { ptr null, i32 21, ptr @.str.89 }, %struct.meson_msr_id { ptr null, i32 22, ptr @.str.90 }, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.91 }, %struct.meson_msr_id { ptr null, i32 24, ptr @.str.92 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 26, ptr @.str.93 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.33 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 30, ptr @.str.94 }, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.95 }, %struct.meson_msr_id { ptr null, i32 32, ptr @.str.18 }, %struct.meson_msr_id { ptr null, i32 33, ptr @.str.96 }, %struct.meson_msr_id { ptr null, i32 34, ptr @.str.97 }, %struct.meson_msr_id { ptr null, i32 35, ptr @.str.36 }, %struct.meson_msr_id { ptr null, i32 36, ptr @.str.37 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 38, ptr @.str.39 }, %struct.meson_msr_id { ptr null, i32 39, ptr @.str.40 }, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.41 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.98 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.67 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.45 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.99 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.64 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.65 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 59, ptr @.str.59 }, %struct.meson_msr_id { ptr null, i32 60, ptr @.str.100 }, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.101 }, %struct.meson_msr_id { ptr null, i32 62, ptr @.str.102 }, %struct.meson_msr_id { ptr null, i32 63, ptr @.str.103 }], [64 x %struct.meson_msr_id] zeroinitializer }>, align 4
@.str.105 = private unnamed_addr constant [8 x i8] c"gp1_pll\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"mmc_clk\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"mod_eth_tx_clk\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"mod_eth_rx_clk_rmii\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"sd_emmm_c\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"audio_slv_lrclk_c\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"audio_slv_lrclk_b\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"audio_slv_lrclk_a\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"audio_slv_sclk_c\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"audio_slv_sclk_b\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"audio_slv_sclk_a\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"wifi_beacon\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"tdmin_lb_lrcl\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"tdmin_lb_sclk\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"audio_resample\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"audio_pdm_sys\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"audio_spdifout\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"audio_spdifin\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"audio_lrclk_f\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"audio_lrclk_e\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"audio_lrclk_d\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"audio_lrclk_c\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"audio_lrclk_b\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"audio_lrclk_a\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"audio_sclk_f\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"audio_sclk_e\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"audio_sclk_d\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"audio_sclk_c\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"audio_sclk_b\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"audio_sclk_a\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"audio_mclk_f\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"audio_mclk_e\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"audio_mclk_d\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"audio_mclk_c\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"audio_mclk_b\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"audio_mclk_a\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"pcie_refclk_n\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"pcie_refclk_p\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"audio_locker_out\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"audio_locker_in\00", align 1
@clk_msr_axg = internal global <{ [110 x %struct.meson_msr_id], [18 x %struct.meson_msr_id] }> <{ [110 x %struct.meson_msr_id] [%struct.meson_msr_id { ptr null, i32 0, ptr @.str.9 }, %struct.meson_msr_id { ptr null, i32 1, ptr @.str.10 }, %struct.meson_msr_id { ptr null, i32 2, ptr @.str.11 }, %struct.meson_msr_id { ptr null, i32 3, ptr @.str.12 }, %struct.meson_msr_id { ptr null, i32 4, ptr @.str.13 }, %struct.meson_msr_id { ptr null, i32 5, ptr @.str.105 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 7, ptr @.str.15 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 9, ptr @.str.17 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 17, ptr @.str.25 }, %struct.meson_msr_id { ptr null, i32 18, ptr @.str.26 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 20, ptr @.str.28 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 23, ptr @.str.106 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 28, ptr @.str.33 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 31, ptr @.str.34 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 40, ptr @.str.107 }, %struct.meson_msr_id { ptr null, i32 41, ptr @.str.108 }, %struct.meson_msr_id { ptr null, i32 42, ptr @.str.43 }, %struct.meson_msr_id { ptr null, i32 43, ptr @.str.44 }, %struct.meson_msr_id { ptr null, i32 44, ptr @.str.45 }, %struct.meson_msr_id { ptr null, i32 45, ptr @.str.46 }, %struct.meson_msr_id { ptr null, i32 46, ptr @.str.47 }, %struct.meson_msr_id { ptr null, i32 47, ptr @.str.48 }, %struct.meson_msr_id { ptr null, i32 48, ptr @.str.49 }, %struct.meson_msr_id { ptr null, i32 49, ptr @.str.50 }, %struct.meson_msr_id { ptr null, i32 50, ptr @.str.51 }, %struct.meson_msr_id { ptr null, i32 51, ptr @.str.109 }, %struct.meson_msr_id { ptr null, i32 52, ptr @.str.53 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 61, ptr @.str.61 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 66, ptr @.str.110 }, %struct.meson_msr_id { ptr null, i32 67, ptr @.str.111 }, %struct.meson_msr_id { ptr null, i32 68, ptr @.str.112 }, %struct.meson_msr_id { ptr null, i32 69, ptr @.str.113 }, %struct.meson_msr_id { ptr null, i32 70, ptr @.str.114 }, %struct.meson_msr_id { ptr null, i32 71, ptr @.str.115 }, %struct.meson_msr_id { ptr null, i32 72, ptr @.str.66 }, %struct.meson_msr_id { ptr null, i32 73, ptr @.str.67 }, %struct.meson_msr_id { ptr null, i32 74, ptr @.str.116 }, %struct.meson_msr_id { ptr null, i32 75, ptr @.str.117 }, %struct.meson_msr_id { ptr null, i32 76, ptr @.str.118 }, %struct.meson_msr_id { ptr null, i32 77, ptr @.str.70 }, %struct.meson_msr_id { ptr null, i32 78, ptr @.str.71 }, %struct.meson_msr_id { ptr null, i32 79, ptr @.str.72 }, %struct.meson_msr_id { ptr null, i32 80, ptr @.str.73 }, %struct.meson_msr_id { ptr null, i32 81, ptr @.str.74 }, %struct.meson_msr_id { ptr null, i32 82, ptr @.str.75 }, %struct.meson_msr_id zeroinitializer, %struct.meson_msr_id { ptr null, i32 84, ptr @.str.119 }, %struct.meson_msr_id { ptr null, i32 85, ptr @.str.120 }, %struct.meson_msr_id { ptr null, i32 86, ptr @.str.121 }, %struct.meson_msr_id { ptr null, i32 87, ptr @.str.122 }, %struct.meson_msr_id { ptr null, i32 88, ptr @.str.123 }, %struct.meson_msr_id { ptr null, i32 89, ptr @.str.124 }, %struct.meson_msr_id { ptr null, i32 90, ptr @.str.125 }, %struct.meson_msr_id { ptr null, i32 91, ptr @.str.126 }, %struct.meson_msr_id { ptr null, i32 92, ptr @.str.127 }, %struct.meson_msr_id { ptr null, i32 93, ptr @.str.128 }, %struct.meson_msr_id { ptr null, i32 94, ptr @.str.129 }, %struct.meson_msr_id { ptr null, i32 95, ptr @.str.130 }, %struct.meson_msr_id { ptr null, i32 96, ptr @.str.131 }, %struct.meson_msr_id { ptr null, i32 97, ptr @.str.132 }, %struct.meson_msr_id { ptr null, i32 98, ptr @.str.133 }, %struct.meson_msr_id { ptr null, i32 99, ptr @.str.134 }, %struct.meson_msr_id { ptr null, i32 100, ptr @.str.135 }, %struct.meson_msr_id { ptr null, i32 101, ptr @.str.136 }, %struct.meson_msr_id { ptr null, i32 102, ptr @.str.137 }, %struct.meson_msr_id { ptr null, i32 103, ptr @.str.138 }, %struct.meson_msr_id { ptr null, i32 104, ptr @.str.139 }, %struct.meson_msr_id { ptr null, i32 105, ptr @.str.140 }, %struct.meson_msr_id { ptr null, i32 106, ptr @.str.141 }, %struct.meson_msr_id { ptr null, i32 107, ptr @.str.142 }, %struct.meson_msr_id { ptr null, i32 108, ptr @.str.143 }, %struct.meson_msr_id { ptr null, i32 109, ptr @.str.144 }], [18 x %struct.meson_msr_id] zeroinitializer }>, align 4
@.str.146 = private unnamed_addr constant [17 x i8] c"sys_cpu_ring_osc\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"eth_tx\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"hifi_pll\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"mod_tcon\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"lcd_an_ph2\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"lcd_an_ph3\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"mpll_50m\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"eth_125m\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"in_mac\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"pcie_inp\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"pcie_inn\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"sys_cpu_ring_osc_1\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"eth_mpll_50m\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"cdac\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"bt656\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"sd_emmc_c\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"vpu_clkc\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"wave420l_a\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"hevcb\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"dsi_meas\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"spicc_1\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"spicc_0\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"dsi_phy\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"hdcp22_esm\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"hdcp22_skp\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"hevcf\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"co_rx\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"co_tx\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"sys_cpub_div16\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"sys_pll_cpub_div16\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"eth_phy_rx\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"eth_phy_pll\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"vpu_b\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"cpu_b_tmp\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_3\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_4\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_5\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_6\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_7\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_8\00", align 1
@.str.187 = private unnamed_addr constant [18 x i8] c"ring_osc_out_ee_9\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"ephy_test\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"au_dac_g128x\00", align 1
@.str.190 = private unnamed_addr constant [20 x i8] c"audio_tdmout_c_sclk\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c"audio_tdmout_b_sclk\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"audio_tdmout_a_sclk\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"audio_tdmin_lb_sclk\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"audio_tdmin_c_sclk\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c"audio_tdmin_b_sclk\00", align 1
@.str.196 = private unnamed_addr constant [19 x i8] c"audio_tdmin_a_sclk\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"audio_spdifout_b\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"audio_pdm_dclk\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"arm_ring_osc_out_4\00", align 1
@.str.200 = private unnamed_addr constant [19 x i8] c"arm_ring_osc_out_5\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"arm_ring_osc_out_6\00", align 1
@.str.202 = private unnamed_addr constant [19 x i8] c"arm_ring_osc_out_7\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"arm_ring_osc_out_8\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"arm_ring_osc_out_9\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"mipi_dsi_phy\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"cis2_adapt\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"nna_core\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"nna_axi\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"vad\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_10\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_11\00", align 1
@.str.212 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_12\00", align 1
@.str.213 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_13\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_14\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_15\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"arm_ring_osc_out_16\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"audio_resampled\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"earcrx_pll\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"earcrx_pll_test\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"csi_phy0\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"csi2_data\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_meson_msr_driver_exit, ptr @__initcall__kmod_meson_clk_measure__212_690_meson_msr_driver_init6, ptr @meson_msr_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_msr_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_msr_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_msr_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_msr_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_msr_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1540, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @device_get_match_data(ptr noundef %2) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %35

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.meson_msr, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1536) %10, ptr noundef nonnull align 4 dereferenceable(1536) %6, i32 1536, i1 false)
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  br label %35

15:                                               ; preds = %9
  %16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %11, ptr noundef nonnull @meson_clk_msr_regmap_config, ptr noundef null, ptr noundef null) #6
  store ptr %16, ptr %3, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %35

20:                                               ; preds = %15
  %21 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef null) #6
  %22 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %21) #6
  %23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %21, ptr noundef %10, ptr noundef nonnull @clk_msr_summary_fops) #6
  br label %24

24:                                               ; preds = %32, %20
  %25 = phi i32 [ 0, %20 ], [ %33, %32 ]
  %26 = getelementptr %struct.meson_msr, ptr %3, i32 0, i32 1, i32 %25, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.meson_msr, ptr %3, i32 0, i32 1, i32 %25
  store ptr %3, ptr %30, align 4
  %31 = tail call ptr @debugfs_create_file(ptr noundef nonnull %27, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %30, ptr noundef nonnull @clk_msr_fops) #6
  br label %32

32:                                               ; preds = %29, %24
  %33 = add nuw nsw i32 %25, 1
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %24

35:                                               ; preds = %32, %18, %13, %8, %1
  %36 = phi i32 [ %14, %13 ], [ %19, %18 ], [ -19, %8 ], [ -12, %1 ], [ 0, %32 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_msr_summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_msr_summary_show, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_msr_summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %8 = getelementptr %struct.meson_msr_id, ptr %5, i32 %7, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.meson_msr_id, ptr %5, i32 %7
  %13 = call fastcc i32 @meson_measure_best_id(ptr noundef %12, ptr noundef nonnull %3)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 4
  %17 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %16, i32 noundef %13, i32 noundef %17) #6
  br label %18

18:                                               ; preds = %15, %6
  %19 = add nuw nsw i32 %7, 1
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %6

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %13, %11 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_measure_best_id(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.meson_msr_id, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %78, %2
  %6 = phi i32 [ 640, %2 ], [ %80, %78 ]
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = call i32 @mutex_lock_interruptible(ptr noundef nonnull @measure_lock) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 4
  %12 = call i32 @regmap_write(ptr noundef %11, i32 noundef 4, i32 noundef 0) #6
  %13 = add nsw i32 %6, -1
  %14 = load ptr, ptr %7, align 4
  %15 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef 65535, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = load i32, ptr %4, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = shl i32 %16, 20
  %19 = and i32 %18, 133169152
  %20 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4, i32 noundef 133169152, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 589824, i32 noundef 589824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = call i64 @ktime_get() #6
  %24 = add i64 %23, 10000000
  %25 = load ptr, ptr %7, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 4, ptr noundef nonnull %3) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %37, %10
  %29 = load i32, ptr %3, align 4
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = call i64 @ktime_get() #6
  %33 = icmp sgt i64 %32, %24
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 4
  %36 = call i32 @regmap_read(ptr noundef %35, i32 noundef 4, ptr noundef nonnull %3) #6
  br label %41

37:                                               ; preds = %31
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %38 = load ptr, ptr %7, align 4
  %39 = call i32 @regmap_read(ptr noundef %38, i32 noundef 4, ptr noundef nonnull %3) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %28, label %41

41:                                               ; preds = %37, %34, %28, %10
  %42 = phi i32 [ %36, %34 ], [ %26, %10 ], [ %39, %37 ], [ 0, %28 ]
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr %3, align 4
  %45 = icmp sgt i32 %44, -1
  %46 = select i1 %43, i1 true, i1 %45
  %47 = select i1 %46, i32 0, i32 -110
  %48 = select i1 %43, i32 %42, i32 %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  call void @mutex_unlock(ptr noundef nonnull @measure_lock) #6
  br label %73

51:                                               ; preds = %41
  %52 = load ptr, ptr %7, align 4
  %53 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 4, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %54 = load ptr, ptr %7, align 4
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 12, ptr noundef nonnull %3) #6
  call void @mutex_unlock(ptr noundef nonnull @measure_lock) #6
  %56 = load i32, ptr %3, align 4
  %57 = icmp ugt i32 %56, 65534
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %78

59:                                               ; preds = %51
  %60 = zext i32 %56 to i64
  %61 = mul nuw nsw i64 %60, 1000000
  %62 = lshr exact i32 %6, 1
  %63 = zext i32 %62 to i64
  %64 = add nuw nsw i64 %61, %63
  %65 = icmp ult i64 %64, 4294967296
  br i1 %65, label %66, label %69, !prof !9

66:                                               ; preds = %59
  %67 = trunc i64 %64 to i32
  %68 = udiv i32 %67, %6
  br label %73

69:                                               ; preds = %59
  %70 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %64) #8, !srcloc !10
  %71 = extractvalue { i64, i64 } %70, 1
  %72 = trunc i64 %71 to i32
  br label %73

73:                                               ; preds = %69, %66, %50, %5
  %74 = phi i32 [ %48, %50 ], [ %8, %5 ], [ %68, %66 ], [ %72, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = udiv i32 2000000, %6
  store i32 %77, ptr %1, align 4
  br label %84

78:                                               ; preds = %73, %58
  %79 = phi i32 [ -22, %58 ], [ %74, %73 ]
  %80 = add nsw i32 %6, -32
  %81 = icmp ne i32 %80, 0
  %82 = icmp eq i32 %79, -22
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %5, label %84

84:                                               ; preds = %78, %76
  %85 = phi i32 [ %74, %76 ], [ %79, %78 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_msr_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_msr_show, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_msr_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  %6 = call fastcc i32 @meson_measure_best_id(ptr noundef %5, ptr noundef nonnull %3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %6, i32 noundef %9) #6
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ 0, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %11
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148639688, i64 2148639968, i64 2148640302, i64 2148640636}
