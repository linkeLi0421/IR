; ModuleID = '/llk/IR/drivers/soc/fsl/guts.c_pt.bc'
source_filename = "../drivers/soc/fsl/guts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_soc_die_attr = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.guts = type { ptr, i8 }
%struct.ccsr_guts = type { i32, i32, i32, i32, i32, i32, [8 x i8], i32, [12 x i8], i32, [12 x i8], i32, [12 x i8], i32, [12 x i8], i32, i32, i32, [4 x i8], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], i32, [12 x i8], i32, [60 x i8], [16 x i32], [228 x i8], i32, i32, [984 x i8], i32, [504 x i8], i32, [252 x i8], i32, [4 x i8], i32, [8 x i8], i32, [520 x i8], i32, i32, i32, [724 x i8], i32, [12 x i8], i32, [12 x i8], i32, i32, [220 x i8], i32, i32, [32 x i8], i32, [16 x i8], i32, i32 }

@__initcall__kmod_guts__166_252_fsl_guts_init1 = internal global ptr @fsl_guts_init, section ".initcall1.init", align 4
@fsl_guts_driver = internal global %struct.platform_driver { ptr @fsl_guts_probe, ptr @fsl_guts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_guts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_fsl_guts_exit = internal global ptr @fsl_guts_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [9 x i8] c"fsl-guts\00", align 1
@fsl_guts_of_match = internal constant [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-device-config-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-device-config-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1010-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1020-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1021-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1022-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1023-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p2020-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,bsc9131-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,bsc9132-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8536-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8544-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8548-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8568-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8569-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8572-guts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-dcfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@guts = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@soc_dev_attr = internal global %struct.soc_device_attribute zeroinitializer, align 4
@fsl_soc_die = internal unnamed_addr constant [14 x %struct.fsl_soc_die_attr] [%struct.fsl_soc_die_attr { ptr @.str.12, i32 -2109734912, i32 -1048576 }, %struct.fsl_soc_die_attr { ptr @.str.13, i32 -2061500416, i32 -1048576 }, %struct.fsl_soc_die_attr { ptr @.str.14, i32 -2060451840, i32 -1048576 }, %struct.fsl_soc_die_attr { ptr @.str.15, i32 -2059403264, i32 -1048576 }, %struct.fsl_soc_die_attr { ptr @.str.16, i32 -2020474880, i32 -65536 }, %struct.fsl_soc_die_attr { ptr @.str.17, i32 -2029977600, i32 -12648448 }, %struct.fsl_soc_die_attr { ptr @.str.18, i32 -2029846528, i32 -12648448 }, %struct.fsl_soc_die_attr { ptr @.str.19, i32 -2029780992, i32 -65536 }, %struct.fsl_soc_die_attr { ptr @.str.20, i32 -2029584384, i32 -65536 }, %struct.fsl_soc_die_attr { ptr @.str.21, i32 -2029453312, i32 -12648448 }, %struct.fsl_soc_die_attr { ptr @.str.22, i32 -2030043136, i32 -589824 }, %struct.fsl_soc_die_attr { ptr @.str.23, i32 -2026504192, i32 -12648448 }, %struct.fsl_soc_die_attr { ptr @.str.24, i32 -2029322240, i32 -12648448 }, %struct.fsl_soc_die_attr zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"QorIQ %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"QorIQ\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"svr:0x%08x\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@soc_dev = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"\016Machine: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\016SoC family: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\016SoC ID: %s, Revision: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"T4240\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"T1040\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"T2080\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"T1024\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"LS1043A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LS2080A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"LS1088A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"LS1012A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"LS1046A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"LS2088A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"LS1021A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"LX2160A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"LS1028A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__exitcall_fsl_guts_exit, ptr @__initcall__kmod_guts__166_252_fsl_guts_init1, ptr @fsl_guts_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fsl_guts_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_guts_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fsl_guts_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_guts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_guts_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #6
  store ptr %6, ptr @guts, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %10 = icmp ne ptr %9, null
  %11 = load ptr, ptr @guts, align 4
  %12 = getelementptr inbounds %struct.guts, ptr %11, i32 0, i32 1
  %13 = zext i1 %10 to i8
  store i8 %13, ptr %12, align 4
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %15 = load ptr, ptr @guts, align 4
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = ptrtoint ptr %14 to i32
  br label %101

19:                                               ; preds = %8
  %20 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.2, ptr noundef null) #6
  %21 = call i32 @of_property_read_string(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 @of_property_read_string_helper(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %2, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef nonnull %26, i32 noundef 3264) #6
  store ptr %29, ptr @soc_dev_attr, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @of_node_put(ptr noundef %20) #6
  br label %101

32:                                               ; preds = %28, %25
  call void @of_node_put(ptr noundef %20) #6
  %33 = load ptr, ptr @guts, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %72, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.guts, ptr %33, i32 0, i32 1
  %40 = load i8, ptr %39, align 4, !range !9
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.ccsr_guts, ptr %36, i32 0, i32 32
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6
  br i1 %41, label %45, label %44

44:                                               ; preds = %38
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %47

45:                                               ; preds = %38
  %46 = call i32 @llvm.bswap.i32(i32 %43) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ %43, %44 ], [ %46, %45 ]
  %49 = and i32 %48, -1048576
  switch i32 %49, label %50 [
    i32 -2109734912, label %68
    i32 -2061500416, label %62
    i32 -2060451840, label %63
    i32 -2059403264, label %64
  ]

50:                                               ; preds = %47
  %51 = and i32 %48, -65536
  %52 = icmp eq i32 %51, -2020474880
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = and i32 %48, -12648448
  switch i32 %54, label %55 [
    i32 -2029977600, label %68
    i32 -2029846528, label %65
  ]

55:                                               ; preds = %53
  switch i32 %51, label %56 [
    i32 -2029780992, label %68
    i32 -2029584384, label %66
  ]

56:                                               ; preds = %55
  %57 = icmp eq i32 %54, -2029453312
  br i1 %57, label %68, label %58

58:                                               ; preds = %56
  %59 = and i32 %48, -589824
  %60 = icmp eq i32 %59, -2030043136
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  switch i32 %54, label %72 [
    i32 -2029322240, label %68
    i32 -2026504192, label %67
  ]

62:                                               ; preds = %47
  br label %68

63:                                               ; preds = %47
  br label %68

64:                                               ; preds = %47
  br label %68

65:                                               ; preds = %53
  br label %68

66:                                               ; preds = %55
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %66, %65, %64, %63, %62, %61, %58, %56, %55, %53, %50, %47
  %69 = phi ptr [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 12), %61 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 8), %66 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 6), %65 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 3), %64 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 2), %63 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 1), %62 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 10), %58 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 9), %56 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 7), %55 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 5), %53 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 4), %50 ], [ @fsl_soc_die, %47 ], [ getelementptr inbounds ([14 x %struct.fsl_soc_die_attr], ptr @fsl_soc_die, i32 0, i32 11), %67 ]
  %70 = load ptr, ptr %69, align 4
  %71 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %70) #6
  br label %75

72:                                               ; preds = %61, %35, %32
  %73 = phi i32 [ 0, %32 ], [ 0, %35 ], [ %48, %61 ]
  %74 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.6) #6
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i32 [ %73, %72 ], [ %48, %68 ]
  %77 = phi ptr [ %74, %72 ], [ %71, %68 ]
  store ptr %77, ptr getelementptr inbounds (%struct.soc_device_attribute, ptr @soc_dev_attr, i32 0, i32 1), align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %75
  %80 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %76) #6
  store ptr %80, ptr getelementptr inbounds (%struct.soc_device_attribute, ptr @soc_dev_attr, i32 0, i32 4), align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %79
  %83 = lshr i32 %76, 4
  %84 = and i32 %83, 15
  %85 = and i32 %76, 15
  %86 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.8, i32 noundef %84, i32 noundef %85) #6
  store ptr %86, ptr getelementptr inbounds (%struct.soc_device_attribute, ptr @soc_dev_attr, i32 0, i32 2), align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %82
  %89 = call ptr @soc_device_register(ptr noundef nonnull @soc_dev_attr) #6
  store ptr %89, ptr @soc_dev, align 4
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = ptrtoint ptr %89 to i32
  br label %101

93:                                               ; preds = %88
  %94 = load ptr, ptr @soc_dev_attr, align 4
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %94) #7
  %96 = load ptr, ptr getelementptr inbounds (%struct.soc_device_attribute, ptr @soc_dev_attr, i32 0, i32 1), align 4
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %96) #7
  %98 = load ptr, ptr getelementptr inbounds (%struct.soc_device_attribute, ptr @soc_dev_attr, i32 0, i32 4), align 4
  %99 = load ptr, ptr getelementptr inbounds (%struct.soc_device_attribute, ptr @soc_dev_attr, i32 0, i32 2), align 4
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %98, ptr noundef %99) #7
  br label %101

101:                                              ; preds = %93, %91, %82, %79, %75, %31, %17, %1
  %102 = phi i32 [ %18, %17 ], [ %92, %91 ], [ 0, %93 ], [ -12, %31 ], [ -12, %1 ], [ -12, %75 ], [ -12, %79 ], [ -12, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_guts_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @soc_dev, align 4
  tail call void @soc_device_unregister(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc_device_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2148577350}
!11 = !{i64 2151423483}
