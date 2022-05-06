; ModuleID = '/llk/IR/drivers/soc/amlogic/meson-ee-pwrc.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-ee-pwrc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_ee_pwrc_domain_data = type { i32, ptr }
%struct.meson_ee_pwrc_domain_desc = type { ptr, i32, i32, ptr, i32, ptr, ptr }
%struct.meson_ee_pwrc_top_domain = type { i32, i32, i32, i32 }
%struct.meson_ee_pwrc_mem_domain = type { i32, i32 }
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
%struct.meson_ee_pwrc = type { ptr, ptr, ptr, %struct.genpd_onecell_data }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.meson_ee_pwrc_domain = type { %struct.generic_pm_domain, i8, ptr, %struct.meson_ee_pwrc_domain_desc, ptr, i32, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }

@__initcall__kmod_meson_ee_pwrc__162_615_meson_ee_pwrc_driver_init6 = internal global ptr @meson_ee_pwrc_driver_init, section ".initcall6.init", align 4
@meson_ee_pwrc_driver = internal global %struct.platform_driver { ptr @meson_ee_pwrc_probe, ptr null, ptr @meson_ee_pwrc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_ee_pwrc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson_ee_pwrc_driver_exit = internal global ptr @meson_ee_pwrc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [53 x i8] c"meson_ee_pwrc.file=drivers/soc/amlogic/meson-ee-pwrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [29 x i8] c"meson_ee_pwrc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"meson_ee_pwrc\00", align 1
@meson_ee_pwrc_match_table = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_m8_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_m8b_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_m8b_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_axg_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_gxbb_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_g12a_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_sm1_pwrc_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get HHI regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"amlogic,ao-sysctrl\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get AO regmap\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Invalid resets count %d for domain %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid clocks count %d for domain %s\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_ee_m8_pwrc_data = internal global %struct.meson_ee_pwrc_domain_data { i32 3, ptr @meson8_pwrc_domains }, align 4
@meson_ee_m8b_pwrc_data = internal global %struct.meson_ee_pwrc_domain_data { i32 3, ptr @meson8b_pwrc_domains }, align 4
@meson_ee_axg_pwrc_data = internal global %struct.meson_ee_pwrc_domain_data { i32 3, ptr @axg_pwrc_domains }, align 4
@meson_ee_gxbb_pwrc_data = internal global %struct.meson_ee_pwrc_domain_data { i32 2, ptr @gxbb_pwrc_domains }, align 4
@meson_ee_g12a_pwrc_data = internal global %struct.meson_ee_pwrc_domain_data { i32 2, ptr @g12a_pwrc_domains }, align 4
@meson_ee_sm1_pwrc_data = internal global %struct.meson_ee_pwrc_domain_data { i32 7, ptr @sm1_pwrc_domains }, align 4
@meson8_pwrc_domains = internal global [3 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.7, i32 0, i32 1, ptr @meson8_pwrc_vpu, i32 40, ptr @meson8_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.8, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.9, i32 0, i32 0, ptr null, i32 1, ptr @meson8_pwrc_audio_dsp_mem, ptr null }], align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"VPU\00", align 1
@meson8_pwrc_vpu = internal global %struct.meson_ee_pwrc_top_domain { i32 8, i32 256, i32 8, i32 512 }, align 4
@meson8_pwrc_mem_vpu = internal global [40 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"ETHERNET_MEM\00", align 1
@meson_pwrc_mem_eth = internal global [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 12 }], align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"AUDIO_DSP_MEM\00", align 1
@meson8_pwrc_audio_dsp_mem = internal global [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 3 }], align 4
@meson8b_pwrc_domains = internal global [3 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.7, i32 11, i32 1, ptr @meson8_pwrc_vpu, i32 40, ptr @meson8_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.8, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.9, i32 0, i32 0, ptr null, i32 1, ptr @meson8_pwrc_audio_dsp_mem, ptr null }], align 4
@axg_pwrc_domains = internal global [3 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.7, i32 5, i32 2, ptr @gx_pwrc_vpu, i32 24, ptr @axg_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.10, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.11, i32 0, i32 0, ptr null, i32 1, ptr @axg_pwrc_mem_audio, ptr null }], align 4
@gx_pwrc_vpu = internal global %struct.meson_ee_pwrc_top_domain { i32 232, i32 256, i32 232, i32 512 }, align 4
@axg_pwrc_mem_vpu = internal global [24 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ETH\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@axg_pwrc_mem_audio = internal global [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 48 }], align 4
@gxbb_pwrc_domains = internal global [2 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.7, i32 12, i32 2, ptr @gx_pwrc_vpu, i32 40, ptr @gxbb_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.10, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }], align 4
@gxbb_pwrc_mem_vpu = internal global [40 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], align 4
@g12a_pwrc_domains = internal global [2 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.7, i32 11, i32 2, ptr @gx_pwrc_vpu, i32 56, ptr @g12a_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.10, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }], align 4
@g12a_pwrc_mem_vpu = internal global [56 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], align 4
@sm1_pwrc_domains = internal global [7 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.7, i32 11, i32 2, ptr @sm1_pwrc_vpu, i32 76, ptr @sm1_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.12, i32 0, i32 0, ptr @sm1_pwrc_nna, i32 2, ptr @sm1_pwrc_mem_nna, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.13, i32 0, i32 0, ptr @sm1_pwrc_usb, i32 1, ptr @sm1_pwrc_mem_usb, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.14, i32 0, i32 0, ptr @sm1_pwrc_pci, i32 1, ptr @sm1_pwrc_mem_pcie, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.15, i32 0, i32 0, ptr @sm1_pwrc_ge2d, i32 1, ptr @sm1_pwrc_mem_ge2d, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.11, i32 0, i32 0, ptr null, i32 13, ptr @sm1_pwrc_mem_audio, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.10, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }], align 4
@sm1_pwrc_vpu = internal global %struct.meson_ee_pwrc_top_domain { i32 232, i32 256, i32 236, i32 256 }, align 4
@sm1_pwrc_mem_vpu = internal global [76 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"NNA\00", align 1
@sm1_pwrc_nna = internal global %struct.meson_ee_pwrc_top_domain { i32 232, i32 65536, i32 236, i32 65536 }, align 4
@sm1_pwrc_mem_nna = internal global [2 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 280, i32 255 }, %struct.meson_ee_pwrc_mem_domain { i32 284, i32 255 }], align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@sm1_pwrc_usb = internal global %struct.meson_ee_pwrc_top_domain { i32 232, i32 131072, i32 236, i32 131072 }, align 4
@sm1_pwrc_mem_usb = internal global [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 -1073741824 }], align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@sm1_pwrc_pci = internal global %struct.meson_ee_pwrc_top_domain { i32 232, i32 262144, i32 236, i32 262144 }, align 4
@sm1_pwrc_mem_pcie = internal global [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 1006632960 }], align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"GE2D\00", align 1
@sm1_pwrc_ge2d = internal global %struct.meson_ee_pwrc_top_domain { i32 232, i32 524288, i32 236, i32 524288 }, align 4
@sm1_pwrc_mem_ge2d = internal global [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 66846720 }], align 4
@sm1_pwrc_mem_audio = internal global [13 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 201326592 }], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_meson_ee_pwrc_driver_exit, ptr @__initcall__kmod_meson_ee_pwrc__162_615_meson_ee_pwrc_driver_init6, ptr @meson_ee_pwrc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_ee_pwrc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_ee_pwrc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_ee_pwrc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %146

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %146, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %7, i32 0, i32 3
  store ptr null, ptr %14, align 4
  br label %146

15:                                               ; preds = %9
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %16, i32 noundef 3520) #7
  %18 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %7, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %146, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 856) #7
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %7, i32 0, i32 2
  store ptr null, ptr %25, align 4
  br label %146

26:                                               ; preds = %20
  %27 = extractvalue { i32, i1 } %22, 0
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %27, i32 noundef 3520) #7
  %29 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %7, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %146, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %7, i32 0, i32 3, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @of_get_parent(ptr noundef %35) #7
  %37 = tail call ptr @syscon_node_to_regmap(ptr noundef %36) #7
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %40 = ptrtoint ptr %37 to i32
  br label %146

41:                                               ; preds = %31
  %42 = load ptr, ptr %34, align 8
  %43 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %42, ptr noundef nonnull @.str.3) #7
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %46 = ptrtoint ptr %43 to i32
  br label %146

47:                                               ; preds = %41
  store ptr %43, ptr %7, align 4
  %48 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %7, i32 0, i32 1
  store ptr %37, ptr %48, align 4
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %49, align 8
  %50 = load i32, ptr %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %143, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, ptr %3, i32 0, i32 1
  br label %54

54:                                               ; preds = %141, %52
  %55 = phi ptr [ %28, %52 ], [ %142, %141 ]
  %56 = phi i32 [ 0, %52 ], [ %138, %141 ]
  %57 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56
  %58 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 3
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr %struct.meson_ee_pwrc_domain_desc, ptr %59, i32 %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %58, ptr noundef align 4 dereferenceable(28) %60, i32 28, i1 false)
  %61 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 2
  store ptr %7, ptr %61, align 4
  %62 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 3, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 7
  store i32 %63, ptr %64, align 8
  %65 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 3, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 5
  store i32 %66, ptr %67, align 8
  %68 = icmp eq i32 %63, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %54
  %70 = tail call i32 @reset_control_get_count(ptr noundef %2) #7
  %71 = load i32, ptr %64, align 8
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %70, ptr noundef %74) #8
  br label %75

75:                                               ; preds = %73, %69
  %76 = tail call ptr @devm_reset_control_array_get(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %77 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 6
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %133, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %67, align 8
  br label %81

81:                                               ; preds = %79, %54
  %82 = phi i32 [ %80, %79 ], [ %66, %54 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load ptr, ptr %58, align 8
  %86 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 10
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 19
  store ptr @meson_ee_pwrc_on, ptr %87, align 8
  %88 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 18
  store ptr @meson_ee_pwrc_off, ptr %88, align 4
  br label %123

89:                                               ; preds = %81
  %90 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 4
  %91 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %2, ptr noundef %90) #7
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %146, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %67, align 8
  %95 = icmp eq i32 %94, %91
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %91, ptr noundef %97) #8
  store i32 %91, ptr %67, align 8
  br label %98

98:                                               ; preds = %96, %93
  %99 = load ptr, ptr %58, align 8
  %100 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 10
  store ptr %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 19
  store ptr @meson_ee_pwrc_on, ptr %101, align 8
  %102 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 18
  store ptr @meson_ee_pwrc_off, ptr %102, align 4
  %103 = icmp eq i32 %91, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %98
  %105 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 3, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %104
  %109 = tail call zeroext i1 %106(ptr noundef %57) #7
  br i1 %109, label %123, label %110

110:                                              ; preds = %108
  %111 = load i32, ptr %67, align 8
  %112 = load ptr, ptr %90, align 4
  %113 = tail call i32 @clk_bulk_prepare(i32 noundef %111, ptr noundef %112) #7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %110
  %116 = tail call i32 @clk_bulk_enable(i32 noundef %111, ptr noundef %112) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void @clk_bulk_unprepare(i32 noundef %111, ptr noundef %112) #7
  br label %146

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.generic_pm_domain, ptr %57, i32 0, i32 32
  store i32 4, ptr %120, align 4
  %121 = tail call i32 @pm_genpd_init(ptr noundef %57, ptr noundef null, i1 noundef zeroext false) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %135, label %146

123:                                              ; preds = %108, %104, %98, %84
  %124 = getelementptr %struct.meson_ee_pwrc_domain, ptr %55, i32 %56, i32 3, i32 6
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = tail call zeroext i1 %125(ptr noundef %57) #7
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i1 [ %128, %127 ], [ true, %123 ]
  %131 = tail call i32 @pm_genpd_init(ptr noundef %57, ptr noundef null, i1 noundef zeroext %130) #7
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %146

133:                                              ; preds = %75
  %134 = ptrtoint ptr %76 to i32
  br label %146

135:                                              ; preds = %129, %119
  %136 = load ptr, ptr %18, align 4
  %137 = getelementptr ptr, ptr %136, i32 %56
  store ptr %57, ptr %137, align 4
  %138 = add nuw i32 %56, 1
  %139 = load i32, ptr %3, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load ptr, ptr %29, align 4
  br label %54

143:                                              ; preds = %135, %47
  %144 = load ptr, ptr %34, align 8
  %145 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %144, ptr noundef %18) #7
  br label %146

146:                                              ; preds = %143, %133, %129, %119, %118, %110, %89, %45, %39, %26, %24, %15, %13, %6, %5
  %147 = phi i32 [ %40, %39 ], [ %46, %45 ], [ %145, %143 ], [ -19, %5 ], [ -12, %6 ], [ -12, %15 ], [ -12, %26 ], [ -12, %13 ], [ -12, %24 ], [ %116, %118 ], [ %134, %133 ], [ %121, %119 ], [ %131, %129 ], [ %91, %89 ], [ %113, %110 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_ee_pwrc_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %3, i32 0, i32 3, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %3, i32 0, i32 2
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.meson_ee_pwrc_domain, ptr %11, i32 %10
  %13 = getelementptr %struct.meson_ee_pwrc_domain, ptr %11, i32 %10, i32 3, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = tail call zeroext i1 %14(ptr noundef %12) #7
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @meson_ee_pwrc_off(ptr noundef %12)
  br label %20

20:                                               ; preds = %18, %16, %9
  %21 = add nuw i32 %10, 1
  %22 = load i32, ptr %4, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %9, label %24

24:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_get_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %9, i32 noundef %11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %13

13:                                               ; preds = %5, %1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #7
  %15 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 5
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %32, %21 ]
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %26, i32 %22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %26, i32 %22, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %28, i32 noundef %30, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = add nuw i32 %22, 1
  %33 = load i32, ptr %15, align 8
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %21, label %35

35:                                               ; preds = %21, %13
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 4294960) #7
  %37 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @reset_control_assert(ptr noundef %38) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load ptr, ptr %2, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %42, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %42, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %53

53:                                               ; preds = %44, %41
  %54 = load ptr, ptr %37, align 4
  %55 = tail call i32 @reset_control_deassert(ptr noundef %54) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @clk_bulk_prepare(i32 noundef %59, ptr noundef %61) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = tail call i32 @clk_bulk_enable(i32 noundef %59, ptr noundef %61) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @clk_bulk_unprepare(i32 noundef %59, ptr noundef %61) #7
  br label %68

68:                                               ; preds = %67, %64, %57, %53, %35
  %69 = phi i32 [ %39, %35 ], [ %55, %53 ], [ %62, %57 ], [ %65, %67 ], [ 0, %64 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %9, i32 noundef %11, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %13

13:                                               ; preds = %5, %1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #7
  %15 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 5
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %32, %21 ]
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %26, i32 %22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %26, i32 %22, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %28, i32 noundef %30, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = add nuw i32 %22, 1
  %33 = load i32, ptr %15, align 8
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %21, label %35

35:                                               ; preds = %21, %13
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 4294960) #7
  %37 = load ptr, ptr %2, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %37, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %37, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %48

48:                                               ; preds = %39, %35
  %49 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  tail call void @msleep(i32 noundef 20) #7
  %53 = load i32, ptr %49, align 8
  %54 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  tail call void @clk_bulk_disable(i32 noundef %53, ptr noundef %55) #7
  tail call void @clk_bulk_unprepare(i32 noundef %53, ptr noundef %55) #7
  br label %56

56:                                               ; preds = %52, %48
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @pwrc_ee_is_powered_off(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %0, i32 0, i32 3, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %5, i32 noundef %8, ptr noundef nonnull %2) #7
  %10 = load i32, ptr %2, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %10
  %15 = icmp ne i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
