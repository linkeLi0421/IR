; ModuleID = '/llk/IR/drivers/usb/dwc2/params.c_pt.bc'
source_filename = "../drivers/usb/dwc2/params.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@dwc2_of_match_table = dso_local constant [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_bcm_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_his_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_rk_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,arx100-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_ltq_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_ltq_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_s3c6400_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amlogic_g12a_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amcc,dwc-otg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amcc_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,apm82181-dwc-otg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_amcc_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4x9-fsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32f4x9_fsotg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4x9-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32f7_hsotg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-fsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32mp15_fsotg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-hsotg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc2_set_stm32mp15_hsotg_params }, %struct.of_device_id zeroinitializer], align 4
@dwc2_acpi_match = dso_local local_unnamed_addr constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"BCM2848\00\00", i32 ptrtoint (ptr @dwc2_set_bcm_params to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"g-rx-fifo-size\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"g-np-tx-fifo-size\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"g-tx-fifo-size\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"disable-over-current\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: Invalid parameter %s=%d\0A\00", align 1
@__func__.dwc2_check_params = private unnamed_addr constant [18 x i8] c"dwc2_check_params\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"enable_dynamic_fifo\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"en_multiple_tx_fifo\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"i2c_enable\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ipg_isoc_en\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"acg_enable\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"reload_ctl\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"lpm\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"lpm_clock_gating\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"besl\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"hird_threshold_en\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"hird_threshold\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"service_interval\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"max_packet_count\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"max_transfer_size\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"host_dma\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"dma_desc_enable\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"dma_desc_fs_enable\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"host_ls_low_power_phy_clk\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"host_channels\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"host_rx_fifo_size\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"host_nperio_tx_fifo_size\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"host_perio_tx_fifo_size\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_dma\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"g_dma_desc\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"g_rx_fifo_size\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"g_np_tx_fifo_size\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"%s: Invalid parameter power_down=%d\0A\00", align 1
@__func__.dwc2_check_param_power_down = private unnamed_addr constant [28 x i8] c"dwc2_check_param_power_down\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"%s: Invalid parameter g-tx-fifo-size, setting to default average\0A\00", align 1
@__func__.dwc2_check_param_tx_fifo_sizes = private unnamed_addr constant [31 x i8] c"dwc2_check_param_tx_fifo_sizes\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"%s: Invalid parameter g_tx_fifo_size[%d]=%d\0A\00", align 1
@switch.table.dwc2_init_params.36 = private unnamed_addr constant [6 x i8] c"\01\00\00\00\00\00", align 1
@switch.table.dwc2_init_params.37 = private unnamed_addr constant [6 x i8] c"\01\01\00\01\00\01", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_bcm_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 774, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 27
  store i32 65535, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  store i16 511, ptr %4, align 2
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 16, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_his_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 512, ptr %5, align 2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 512, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 512, ptr %7, align 2
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 27
  store i32 65535, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  store i16 511, ptr %9, align 2
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  store i8 16, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  store i8 1, ptr %11, align 2
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 3
  store i8 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 8
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 12
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 46
  store i8 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 0, ptr %17, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_rk_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 525, ptr %4, align 2
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 128, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 256, ptr %6, align 2
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 14, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_ltq_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 288, ptr %4, align 2
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 128, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 96, ptr %6, align 2
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 27
  store i32 65535, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  store i16 511, ptr %8, align 2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 14, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_s3c6400_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 16
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 3
  store i8 8, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_amlogic_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 512, ptr %5, align 2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 500, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 500, ptr %7, align 2
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  store i8 16, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  store i8 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 0, ptr %11, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_amlogic_g12a_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 17
  store i32 0, ptr %2, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_amcc_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 14, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_stm32f4x9_fsotg_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  store i8 1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 128, ptr %5, align 2
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 96, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 96, ptr %7, align 2
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  store i16 256, ptr %8, align 2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 8
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 23
  store i8 1, ptr %11, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_stm32f7_hsotg_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 622, ptr %2, align 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 128, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 256, ptr %4, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwc2_set_stm32mp15_fsotg_params(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %4, align 1
  store i16 512, ptr %2, align 4
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 128, ptr %6, align 2
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 96, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 96, ptr %8, align 2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  store i16 256, ptr %9, align 2
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  store i8 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 8
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 23
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 24
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 34
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 35
  store i8 1, ptr %17, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_set_stm32mp15_hsotg_params(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 0, ptr %4, align 1
  store i16 512, ptr %2, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = tail call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str) #6
  %7 = xor i1 %6, true
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 24
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 440, ptr %10, align 2
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 256, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 256, ptr %12, align 2
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 14, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 17
  store i32 0, ptr %15, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_get_hwparams(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = load i8, ptr %7, align 8, !range !10
  %16 = icmp eq i8 %15, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 76
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %22 = load i8, ptr %7, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 80
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %29 = load i8, ptr %7, align 8, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %36 = load i8, ptr %7, align 8, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %39 = select i1 %37, i32 %35, i32 %38
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 6
  store i32 %11, ptr %40, align 4
  %41 = load i32, ptr %2, align 4
  %42 = and i32 %41, -16777216
  %43 = lshr i32 %18, 13
  %44 = and i32 %43, 64
  %45 = and i32 %18, 31
  %46 = or i32 %45, %44
  %47 = or i32 %46, %42
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %18, 3
  %51 = and i32 %50, 30720
  %52 = add nuw nsw i32 %51, 2048
  %53 = and i32 %49, -1073741824
  %54 = or i32 %53, %52
  %55 = shl i32 %18, 10
  %56 = and i32 %55, 196608
  %57 = or i32 %54, %56
  %58 = and i32 %55, 786432
  %59 = or i32 %57, %58
  %60 = shl i32 %18, 12
  %61 = and i32 %60, 62914560
  %62 = lshr i32 %18, 21
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %64 = load i64, ptr %63, align 4
  %65 = and i32 %62, 6
  %66 = zext i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 48
  %68 = and i64 %64, -576179277326712833
  %69 = or i64 %68, %67
  %70 = lshr i32 %18, 23
  %71 = and i32 %70, 6
  %72 = zext i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 51
  %74 = or i64 %69, %73
  %75 = lshr i32 %18, 26
  %76 = and i32 %75, 31
  %77 = zext i32 %76 to i64
  %78 = shl nuw nsw i64 %77, 54
  %79 = or i64 %74, %78
  store i64 %79, ptr %63, align 4
  %80 = and i32 %25, 15
  %81 = shl nuw nsw i32 2048, %80
  %82 = add nuw nsw i32 %81, 67108863
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %82, 67108863
  %86 = and i32 %84, -67108864
  %87 = or i32 %86, %85
  store i32 %87, ptr %83, align 4
  %88 = lshr i32 %25, 4
  %89 = and i32 %88, 7
  %90 = shl nuw nsw i32 16, %89
  %91 = add nuw nsw i32 %90, 2047
  %92 = and i32 %91, 2047
  %93 = shl i32 %25, 12
  %94 = and i32 %93, 1048576
  %95 = or i32 %92, %94
  %96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %25, 12
  %99 = and i32 %98, 1048560
  %100 = and i32 %97, -134217728
  %101 = shl i32 %25, 9
  %102 = and i32 %101, 16777216
  %103 = or i32 %102, %99
  %104 = or i32 %103, %100
  %105 = lshr i32 %32, 18
  %106 = and i32 %105, 128
  %107 = or i32 %47, %106
  %108 = and i32 %32, 15
  %109 = or i32 %104, %108
  %110 = and i32 %32, 1006632960
  %111 = lshr i32 %32, 25
  %112 = and i32 %111, 32
  %113 = or i32 %107, %112
  %114 = shl i32 %32, 16
  %115 = and i32 %114, 1048576
  %116 = shl i32 %32, 15
  %117 = and i32 %116, 2097152
  %118 = shl i32 %32, 8
  %119 = and i32 %118, 12582912
  %120 = or i32 %117, %115
  %121 = or i32 %120, %119
  %122 = or i32 %121, %109
  %123 = shl i32 %32, 9
  %124 = and i32 %123, 2097152
  %125 = or i32 %59, %61
  %126 = or i32 %95, %125
  %127 = or i32 %126, %110
  %128 = or i32 %127, %124
  store i32 %128, ptr %48, align 4
  %129 = shl i32 %32, 14
  %130 = and i32 %129, 33554432
  %131 = and i32 %114, 67108864
  %132 = or i32 %131, %130
  %133 = or i32 %132, %122
  store i32 %133, ptr %96, align 4
  %134 = shl i32 %39, 8
  %135 = and i32 %134, 16776960
  %136 = or i32 %113, %135
  store i32 %136, ptr %2, align 4
  %137 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %166, label %140

140:                                              ; preds = %1
  tail call void @dwc2_force_mode(ptr noundef %0, i1 noundef zeroext true) #6
  %141 = load ptr, ptr %3, align 4
  %142 = getelementptr i8, ptr %141, i32 40
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %144 = load i8, ptr %7, align 8, !range !10
  %145 = icmp eq i8 %144, 0
  %146 = tail call i32 @llvm.bswap.i32(i32 %143) #6
  %147 = select i1 %145, i32 %143, i32 %146
  %148 = load ptr, ptr %3, align 4
  %149 = getelementptr i8, ptr %148, i32 256
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %151 = load i8, ptr %7, align 8, !range !10
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #6
  %154 = select i1 %152, i32 %150, i32 %153
  %155 = lshr i32 %147, 16
  %156 = zext i32 %155 to i64
  %157 = load i64, ptr %63, align 4
  %158 = and i64 %157, -281470681808896
  %159 = or i64 %158, %156
  %160 = lshr i32 %154, 16
  %161 = zext i32 %160 to i64
  %162 = shl nuw nsw i64 %161, 32
  %163 = or i64 %162, %159
  store i64 %163, ptr %63, align 4
  %164 = load i32, ptr %137, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %197, label %166

166:                                              ; preds = %140, %1
  tail call void @dwc2_force_mode(ptr noundef %0, i1 noundef zeroext false) #6
  %167 = load ptr, ptr %3, align 4
  %168 = getelementptr i8, ptr %167, i32 40
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %170 = load i8, ptr %7, align 8, !range !10
  %171 = icmp eq i8 %170, 0
  %172 = tail call i32 @llvm.bswap.i32(i32 %169) #6
  %173 = select i1 %171, i32 %169, i32 %172
  %174 = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %0) #6
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %191, label %176

176:                                              ; preds = %176, %166
  %177 = phi i32 [ %189, %176 ], [ 1, %166 ]
  %178 = shl i32 %177, 2
  %179 = add i32 %178, 256
  %180 = load ptr, ptr %3, align 4
  %181 = getelementptr i8, ptr %180, i32 %179
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %183 = load i8, ptr %7, align 8, !range !10
  %184 = icmp eq i8 %183, 0
  %185 = tail call i32 @llvm.bswap.i32(i32 %182) #6
  %186 = select i1 %184, i32 %182, i32 %185
  %187 = lshr i32 %186, 16
  %188 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 7, i32 %177
  store i32 %187, ptr %188, align 4
  %189 = add i32 %177, 1
  %190 = icmp sgt i32 %189, %174
  br i1 %190, label %191, label %176

191:                                              ; preds = %176, %166
  %192 = and i32 %173, -65536
  %193 = load i64, ptr %63, align 4
  %194 = zext i32 %192 to i64
  %195 = and i64 %193, -4294901761
  %196 = or i64 %195, %194
  store i64 %196, ptr %63, align 4
  br label %197

197:                                              ; preds = %191, %140
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_init_params(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 24
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i8
  %7 = and i32 %3, 7
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.36, i32 0, i32 %7
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.37, i32 0, i32 %7
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i8 [ %11, %9 ], [ 0, %1 ]
  %16 = phi i8 [ %13, %9 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i8 %15, ptr %17, align 2
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i8 %16, ptr %18, align 1
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %20, 65536
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i8 2, i8 1
  %26 = select i1 %22, i8 0, i8 %25
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  store i8 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, -65536
  %31 = icmp eq i32 %30, 1429274624
  %32 = select i1 %31, i1 true, i1 %22
  %33 = icmp ne i32 %30, 1429340160
  %34 = select i1 %33, i1 %32, i1 false
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 12582912
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 8, i32 16
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 12
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %14
  %46 = getelementptr inbounds %struct.phy, ptr %43, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 8
  %49 = select i1 %48, i32 8, i32 %41
  br label %50

50:                                               ; preds = %45, %14
  %51 = phi i32 [ %41, %14 ], [ %49, %45 ]
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 3
  store i8 %52, ptr %53, align 8
  %54 = and i32 %38, 2097152
  %55 = icmp eq i32 %54, 0
  %56 = lshr i32 %38, 20
  %57 = and i32 %56, 1
  %58 = select i1 %55, i32 %57, i32 2
  %59 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 15
  store i32 %58, ptr %59, align 4
  %60 = and i32 %38, 16777216
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 17
  %63 = lshr exact i32 %60, 24
  %64 = trunc i32 %63 to i8
  store i8 %64, ptr %62, align 1
  br i1 %61, label %67, label %65

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 22
  store i8 4, ptr %66, align 2
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi i8 [ 1, %65 ], [ 0, %50 ]
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 18
  store i8 %68, ptr %69, align 2
  %70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 19
  store i8 %68, ptr %70, align 1
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 20
  store i8 %68, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 4
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 5
  store i8 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 6
  %75 = trunc i32 %3 to i8
  %76 = lshr i8 %75, 6
  %77 = and i8 %76, 1
  store i8 %77, ptr %74, align 1
  %78 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 7
  %79 = lshr i8 %75, 7
  store i8 %79, ptr %78, align 4
  %80 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 8
  %81 = lshr i32 %20, 20
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, ptr %80, align 1
  %84 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 9
  %85 = lshr i32 %20, 21
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, ptr %84, align 2
  %88 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 10
  store i8 0, ptr %88, align 1
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 11
  store i8 0, ptr %89, align 4
  %90 = icmp ugt i32 %29, 1330915625
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 12
  %92 = zext i1 %90 to i8
  store i8 %92, ptr %91, align 1
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  store i8 1, ptr %93, align 2
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 14
  store i8 0, ptr %94, align 1
  %95 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 25
  store i8 0, ptr %95, align 1
  %96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 21
  store i8 0, ptr %96, align 1
  %97 = trunc i32 %20 to i16
  %98 = and i16 %97, 2047
  %99 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 26
  store i16 %98, ptr %99, align 2
  %100 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 67108863
  %103 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 27
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 28
  store i32 2, ptr %104, align 4
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 29
  store i32 33333, ptr %105, align 4
  %106 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 30
  store i16 100, ptr %106, align 4
  %107 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  switch i32 %108, label %126 [
    i32 1, label %109
    i32 3, label %109
  ]

109:                                              ; preds = %67, %67
  %110 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  store i8 %6, ptr %110, align 2
  %111 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %112 = lshr i32 %20, 11
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 31
  %115 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  store i32 0, ptr %111, align 1
  store i8 %114, ptr %115, align 4
  %116 = lshr i32 %3, 8
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  store i16 %117, ptr %118, align 2
  %119 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %120 = load i64, ptr %119, align 4
  %121 = trunc i64 %120 to i16
  %122 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  store i16 %121, ptr %122, align 4
  %123 = lshr i64 %120, 32
  %124 = trunc i64 %123 to i16
  %125 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  store i16 %124, ptr %125, align 2
  br label %126

126:                                              ; preds = %109, %67
  %127 = and i32 %108, -2
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  store i8 %6, ptr %130, align 4
  %131 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %132 = lshr i8 %75, 5
  %133 = and i8 %132, 1
  store i8 %133, ptr %131, align 1
  %134 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 43
  store i32 2048, ptr %134, align 4
  %135 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 44
  store i32 1024, ptr %135, align 4
  %136 = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %0) #6
  %137 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %137, i8 0, i32 64, i1 false) #6
  %138 = tail call i32 @dwc2_hsotg_tx_fifo_average_depth(ptr noundef %0) #6
  %139 = icmp slt i32 %136, 1
  br i1 %139, label %145, label %140

140:                                              ; preds = %140, %129
  %141 = phi i32 [ %143, %140 ], [ 1, %129 ]
  %142 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45, i32 %141
  store i32 %138, ptr %142, align 4
  %143 = add i32 %141, 1
  %144 = icmp sgt i32 %143, %136
  br i1 %144, label %145, label %140

145:                                              ; preds = %140, %129, %126
  %146 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3
  %147 = load i32, ptr %107, align 4
  %148 = and i32 %147, -2
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %171

150:                                              ; preds = %145
  %151 = load ptr, ptr %0, align 8
  %152 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 43
  %153 = tail call i32 @device_property_read_u32_array(ptr noundef %151, ptr noundef nonnull @.str.1, ptr noundef %152, i32 noundef 1) #6
  %154 = load ptr, ptr %0, align 8
  %155 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 44
  %156 = tail call i32 @device_property_read_u32_array(ptr noundef %154, ptr noundef nonnull @.str.2, ptr noundef %155, i32 noundef 1) #6
  %157 = load ptr, ptr %0, align 8
  %158 = tail call i32 @device_property_read_u32_array(ptr noundef %157, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #6
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %150
  %161 = tail call i32 @llvm.smin.i32(i32 %158, i32 15) #6
  %162 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %162, i8 0, i32 64, i1 false) #6
  %163 = load ptr, ptr %0, align 8
  %164 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45, i32 1
  %165 = tail call i32 @device_property_read_u32_array(ptr noundef %163, ptr noundef nonnull @.str.3, ptr noundef %164, i32 noundef %161) #6
  br label %166

166:                                              ; preds = %160, %150
  %167 = load ptr, ptr %0, align 8
  %168 = getelementptr inbounds %struct.device, ptr %167, i32 0, i32 25
  %169 = load ptr, ptr %168, align 8
  %170 = tail call i32 @of_usb_update_otg_caps(ptr noundef %169, ptr noundef %146) #6
  br label %171

171:                                              ; preds = %166, %145
  %172 = load ptr, ptr %0, align 8
  %173 = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 25
  %174 = load ptr, ptr %173, align 8
  %175 = tail call ptr @of_find_property(ptr noundef %174, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 36
  store i8 1, ptr %178, align 1
  br label %179

179:                                              ; preds = %177, %171
  %180 = load ptr, ptr %0, align 8
  %181 = tail call ptr @of_match_device(ptr noundef nonnull @dwc2_of_match_table, ptr noundef %180) #6
  %182 = icmp eq ptr %181, null
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.of_device_id, ptr %181, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  tail call void %185(ptr noundef %0) #6
  br label %188

188:                                              ; preds = %187, %183, %179
  %189 = load i32, ptr %2, align 4
  %190 = and i32 %189, 24
  %191 = icmp eq i32 %190, 0
  %192 = load i8, ptr %17, align 2, !range !10
  %193 = icmp eq i8 %192, 0
  %194 = load i8, ptr %18, align 1, !range !10
  %195 = icmp eq i8 %194, 0
  br i1 %193, label %201, label %196

196:                                              ; preds = %188
  %197 = and i32 %189, 7
  %198 = xor i1 %195, true
  %199 = icmp eq i32 %197, 0
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %215, label %204

201:                                              ; preds = %188
  br i1 %195, label %215, label %202

202:                                              ; preds = %201
  %203 = and i32 %189, 7
  switch i32 %203, label %204 [
    i32 0, label %215
    i32 1, label %215
    i32 3, label %215
    i32 5, label %215
  ]

204:                                              ; preds = %202, %196
  %205 = phi i32 [ %203, %202 ], [ %197, %196 ]
  %206 = icmp ult i32 %205, 6
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.36, i32 0, i32 %205
  %209 = load i8, ptr %208, align 1
  %210 = getelementptr inbounds [6 x i8], ptr @switch.table.dwc2_init_params.37, i32 0, i32 %205
  %211 = load i8, ptr %210, align 1
  br label %212

212:                                              ; preds = %207, %204
  %213 = phi i8 [ %209, %207 ], [ 0, %204 ]
  %214 = phi i8 [ %211, %207 ], [ 0, %204 ]
  store i8 %213, ptr %17, align 2
  store i8 %214, ptr %18, align 1
  br label %215

215:                                              ; preds = %212, %202, %202, %202, %202, %201, %196
  %216 = load i32, ptr %19, align 8
  %217 = load i8, ptr %27, align 2
  switch i8 %217, label %227 [
    i8 0, label %218
    i8 1, label %221
    i8 2, label %224
  ]

218:                                              ; preds = %215
  %219 = and i32 %216, 786432
  %220 = icmp eq i32 %219, 262144
  br i1 %220, label %234, label %227

221:                                              ; preds = %215
  %222 = and i32 %216, 65536
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %234

224:                                              ; preds = %215
  %225 = and i32 %216, 65536
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224, %221, %218, %215
  %228 = and i32 %216, 196608
  %229 = icmp eq i32 %228, 0
  %230 = and i32 %216, 65536
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i8 2, i8 1
  %233 = select i1 %229, i8 0, i8 %232
  store i8 %233, ptr %27, align 2
  br label %234

234:                                              ; preds = %227, %224, %221, %218
  %235 = phi i8 [ 0, %218 ], [ 1, %221 ], [ 2, %224 ], [ %233, %227 ]
  %236 = load i8, ptr %36, align 1
  switch i8 %236, label %237 [
    i8 0, label %239
    i8 1, label %250
    i8 2, label %250
  ]

237:                                              ; preds = %234
  %238 = icmp eq i8 %235, 0
  br label %241

239:                                              ; preds = %234
  %240 = icmp eq i8 %235, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %239, %237
  %242 = phi i1 [ %238, %237 ], [ true, %239 ]
  %243 = load i32, ptr %28, align 8
  %244 = and i32 %243, -65536
  %245 = icmp eq i32 %244, 1429274624
  %246 = select i1 %245, i1 true, i1 %242
  %247 = icmp ne i32 %244, 1429340160
  %248 = select i1 %247, i1 %246, i1 false
  %249 = zext i1 %248 to i8
  store i8 %249, ptr %36, align 1
  br label %250

250:                                              ; preds = %241, %239, %234, %234
  %251 = load i8, ptr %53, align 8
  %252 = load i32, ptr %37, align 4
  %253 = lshr i32 %252, 22
  %254 = and i32 %253, 3
  switch i32 %254, label %260 [
    i32 0, label %258
    i32 1, label %255
    i32 2, label %257
  ]

255:                                              ; preds = %250
  %256 = icmp eq i8 %251, 16
  br i1 %256, label %274, label %260

257:                                              ; preds = %250
  switch i8 %251, label %260 [
    i8 16, label %274
    i8 8, label %274
  ]

258:                                              ; preds = %250
  %259 = icmp eq i8 %251, 8
  br i1 %259, label %274, label %260

260:                                              ; preds = %258, %257, %255, %250
  %261 = and i32 %252, 12582912
  %262 = icmp eq i32 %261, 0
  %263 = select i1 %262, i32 8, i32 16
  %264 = load ptr, ptr %42, align 8
  %265 = icmp eq ptr %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.phy, ptr %264, i32 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 8
  %270 = select i1 %269, i32 8, i32 %263
  br label %271

271:                                              ; preds = %266, %260
  %272 = phi i32 [ %263, %260 ], [ %270, %266 ]
  %273 = trunc i32 %272 to i8
  store i8 %273, ptr %53, align 8
  br label %274

274:                                              ; preds = %271, %258, %257, %257, %255
  %275 = load i32, ptr %59, align 4
  switch i32 %275, label %282 [
    i32 0, label %284
    i32 1, label %276
    i32 2, label %279
  ]

276:                                              ; preds = %274
  %277 = lshr i32 %252, 20
  %278 = and i32 %277, 1
  br label %284

279:                                              ; preds = %274
  %280 = lshr i32 %252, 20
  %281 = and i32 %280, 2
  br label %284

282:                                              ; preds = %274
  %283 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %283, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dwc2_check_param_power_down, i32 noundef %275) #7
  br label %284

284:                                              ; preds = %282, %279, %276, %274
  %285 = phi i32 [ 0, %282 ], [ %275, %274 ], [ %278, %276 ], [ %281, %279 ]
  store i32 %285, ptr %59, align 4
  %286 = load i8, ptr %74, align 1, !range !10
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %2, align 4
  %290 = and i32 %289, 64
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %293, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.6, i32 noundef 1) #7
  store i8 0, ptr %74, align 1
  br label %294

294:                                              ; preds = %292, %288, %284
  %295 = load i8, ptr %78, align 4, !range !10
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %2, align 4
  %299 = and i32 %298, 128
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %302, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.7, i32 noundef 1) #7
  store i8 0, ptr %78, align 4
  br label %303

303:                                              ; preds = %301, %297, %294
  %304 = load i8, ptr %80, align 1, !range !10
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  %307 = load i32, ptr %19, align 4
  %308 = and i32 %307, 1048576
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %311, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.8, i32 noundef 1) #7
  store i8 0, ptr %80, align 1
  br label %312

312:                                              ; preds = %310, %306, %303
  %313 = load i8, ptr %95, align 1, !range !10
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %37, align 4
  %317 = and i32 %316, 33554432
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %320, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.9, i32 noundef 1) #7
  store i8 0, ptr %95, align 1
  br label %321

321:                                              ; preds = %319, %315, %312
  %322 = load i8, ptr %84, align 2, !range !10
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %321
  %325 = load i32, ptr %19, align 4
  %326 = and i32 %325, 2097152
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %329, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.10, i32 noundef 1) #7
  store i8 0, ptr %84, align 2
  br label %330

330:                                              ; preds = %328, %324, %321
  %331 = load i8, ptr %91, align 1, !range !10
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %28, align 8
  %335 = icmp ugt i32 %334, 1330915626
  br i1 %335, label %338, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %337, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.11, i32 noundef 1) #7
  store i8 0, ptr %91, align 1
  br label %338

338:                                              ; preds = %336, %333, %330
  %339 = load i8, ptr %62, align 1, !range !10
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %350, label %341

341:                                              ; preds = %338
  %342 = load i32, ptr %28, align 8
  %343 = icmp ugt i32 %342, 1330915337
  br i1 %343, label %344, label %348

344:                                              ; preds = %341
  %345 = load i32, ptr %37, align 4
  %346 = and i32 %345, 16777216
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %344, %341
  %349 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %349, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.12, i32 noundef 1) #7
  store i8 0, ptr %62, align 1
  br label %350

350:                                              ; preds = %348, %338
  %351 = load i8, ptr %69, align 2, !range !10
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %354, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.13, i32 noundef 1) #7
  store i8 0, ptr %69, align 2
  br label %355

355:                                              ; preds = %353, %350, %344
  %356 = load i8, ptr %70, align 1, !range !10
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %366, label %358

358:                                              ; preds = %355
  %359 = load i8, ptr %62, align 1, !range !10
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %358
  %362 = load i32, ptr %28, align 8
  %363 = icmp ugt i32 %362, 1330917385
  br i1 %363, label %366, label %364

364:                                              ; preds = %361, %358
  %365 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %365, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.14, i32 noundef 1) #7
  store i8 0, ptr %70, align 1
  br label %366

366:                                              ; preds = %364, %361, %355
  %367 = phi i8 [ 0, %355 ], [ 1, %361 ], [ 0, %364 ]
  %368 = load i8, ptr %71, align 4, !range !10
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %366
  %371 = load i8, ptr %62, align 1, !range !10
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %374, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.15, i32 noundef 1) #7
  store i8 0, ptr %71, align 4
  %375 = load i8, ptr %70, align 1, !range !10
  br label %376

376:                                              ; preds = %373, %370, %366
  %377 = phi i8 [ %367, %366 ], [ %367, %370 ], [ %375, %373 ]
  %378 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 22
  %379 = load i8, ptr %378, align 2
  %380 = zext i8 %379 to i32
  %381 = icmp eq i8 %377, 0
  %382 = select i1 %381, i32 7, i32 12
  %383 = icmp ult i32 %382, %380
  br i1 %383, label %384, label %386

384:                                              ; preds = %376
  %385 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %385, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.16, i32 noundef %380) #7
  store i8 0, ptr %378, align 2
  br label %386

386:                                              ; preds = %384, %376
  %387 = load i8, ptr %96, align 1, !range !10
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %386
  %390 = load i32, ptr %37, align 4
  %391 = and i32 %390, 67108864
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %394, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.17, i32 noundef 1) #7
  store i8 0, ptr %96, align 1
  br label %395

395:                                              ; preds = %393, %389, %386
  %396 = load i16, ptr %99, align 2
  %397 = icmp ult i16 %396, 15
  %398 = zext i16 %396 to i32
  br i1 %397, label %403, label %399

399:                                              ; preds = %395
  %400 = load i32, ptr %19, align 4
  %401 = and i32 %400, 2047
  %402 = icmp ult i32 %401, %398
  br i1 %402, label %403, label %408

403:                                              ; preds = %399, %395
  %404 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %404, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.18, i32 noundef %398) #7
  %405 = load i32, ptr %19, align 4
  %406 = trunc i32 %405 to i16
  %407 = and i16 %406, 2047
  store i16 %407, ptr %99, align 2
  br label %408

408:                                              ; preds = %403, %399
  %409 = load i32, ptr %103, align 4
  %410 = icmp slt i32 %409, 2047
  br i1 %410, label %415, label %411

411:                                              ; preds = %408
  %412 = load i32, ptr %100, align 4
  %413 = and i32 %412, 67108863
  %414 = icmp ugt i32 %409, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %411, %408
  %416 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %416, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.19, i32 noundef %409) #7
  %417 = load i32, ptr %100, align 4
  %418 = and i32 %417, 67108863
  store i32 %418, ptr %103, align 4
  br label %419

419:                                              ; preds = %415, %411
  %420 = load i32, ptr %107, align 4
  switch i32 %420, label %522 [
    i32 1, label %421
    i32 3, label %421
  ]

421:                                              ; preds = %419, %419
  %422 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 31
  %423 = load i8, ptr %422, align 2, !range !10
  %424 = icmp eq i8 %423, 0
  %425 = xor i1 %191, true
  %426 = select i1 %424, i1 true, i1 %425
  br i1 %426, label %427, label %431

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %429 = load i8, ptr %428, align 1, !range !10
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %440, label %436

431:                                              ; preds = %421
  %432 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %432, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.20, i32 noundef 1) #7
  store i8 0, ptr %422, align 2
  %433 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %434 = load i8, ptr %433, align 1, !range !10
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %440, label %437

436:                                              ; preds = %427
  br i1 %424, label %437, label %446

437:                                              ; preds = %436, %431
  %438 = phi ptr [ %428, %436 ], [ %433, %431 ]
  %439 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %439, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.21, i32 noundef 1) #7
  store i8 0, ptr %438, align 1
  br label %440

440:                                              ; preds = %437, %431, %427
  %441 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 33
  %442 = load i8, ptr %441, align 4, !range !10
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %446, label %444

444:                                              ; preds = %440
  %445 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %445, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.22, i32 noundef 1) #7
  store i8 0, ptr %441, align 4
  br label %446

446:                                              ; preds = %444, %440, %436
  %447 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 35
  %448 = load i8, ptr %447, align 2, !range !10
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %455, label %450

450:                                              ; preds = %446
  %451 = load i8, ptr %27, align 2
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %455, label %453

453:                                              ; preds = %450
  %454 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %454, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.23, i32 noundef 1) #7
  store i8 0, ptr %447, align 2
  br label %455

455:                                              ; preds = %453, %450, %446
  %456 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %457 = load i8, ptr %456, align 8
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %465, label %459

459:                                              ; preds = %455
  %460 = zext i8 %457 to i32
  %461 = load i32, ptr %19, align 4
  %462 = lshr i32 %461, 11
  %463 = and i32 %462, 31
  %464 = icmp ult i32 %463, %460
  br i1 %464, label %465, label %472

465:                                              ; preds = %459, %455
  %466 = phi i32 [ %460, %459 ], [ 0, %455 ]
  %467 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %467, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.24, i32 noundef %466) #7
  %468 = load i32, ptr %19, align 4
  %469 = lshr i32 %468, 11
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 31
  store i8 %471, ptr %456, align 8
  br label %472

472:                                              ; preds = %465, %459
  %473 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 38
  %474 = load i16, ptr %473, align 2
  %475 = icmp ult i16 %474, 16
  %476 = zext i16 %474 to i32
  br i1 %475, label %482, label %477

477:                                              ; preds = %472
  %478 = load i32, ptr %2, align 4
  %479 = lshr i32 %478, 8
  %480 = and i32 %479, 65535
  %481 = icmp ult i32 %480, %476
  br i1 %481, label %482, label %487

482:                                              ; preds = %477, %472
  %483 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %483, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.25, i32 noundef %476) #7
  %484 = load i32, ptr %2, align 4
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i16
  store i16 %486, ptr %473, align 2
  br label %487

487:                                              ; preds = %482, %477
  %488 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 39
  %489 = load i16, ptr %488, align 4
  %490 = icmp ult i16 %489, 16
  %491 = zext i16 %489 to i32
  br i1 %490, label %500, label %492

492:                                              ; preds = %487
  %493 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %494 = load i64, ptr %493, align 4
  %495 = trunc i64 %494 to i32
  %496 = and i32 %495, 65535
  %497 = icmp ult i32 %496, %491
  %498 = lshr i64 %494, 32
  %499 = trunc i64 %498 to i32
  br i1 %497, label %500, label %507

500:                                              ; preds = %492, %487
  %501 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %501, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.26, i32 noundef %491) #7
  %502 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %503 = load i64, ptr %502, align 4
  %504 = trunc i64 %503 to i16
  store i16 %504, ptr %488, align 4
  %505 = lshr i64 %503, 32
  %506 = trunc i64 %505 to i32
  br label %507

507:                                              ; preds = %500, %492
  %508 = phi i32 [ %499, %492 ], [ %506, %500 ]
  %509 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 40
  %510 = load i16, ptr %509, align 2
  %511 = icmp ult i16 %510, 16
  %512 = zext i16 %510 to i32
  %513 = and i32 %508, 65535
  %514 = icmp ult i32 %513, %512
  %515 = select i1 %511, i1 true, i1 %514
  br i1 %515, label %516, label %522

516:                                              ; preds = %507
  %517 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %517, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.27, i32 noundef %512) #7
  %518 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %519 = load i64, ptr %518, align 4
  %520 = lshr i64 %519, 32
  %521 = trunc i64 %520 to i16
  store i16 %521, ptr %509, align 2
  br label %522

522:                                              ; preds = %516, %507, %419
  %523 = load i32, ptr %107, align 4
  %524 = and i32 %523, -2
  %525 = icmp eq i32 %524, 2
  br i1 %525, label %526, label %626

526:                                              ; preds = %522
  %527 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 41
  %528 = load i8, ptr %527, align 8, !range !10
  %529 = icmp eq i8 %528, 0
  %530 = xor i1 %191, true
  %531 = select i1 %529, i1 true, i1 %530
  br i1 %531, label %532, label %536

532:                                              ; preds = %526
  %533 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %534 = load i8, ptr %533, align 1, !range !10
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %549, label %541

536:                                              ; preds = %526
  %537 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %537, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.28, i32 noundef 1) #7
  store i8 0, ptr %527, align 8
  %538 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 42
  %539 = load i8, ptr %538, align 1, !range !10
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %549, label %546

541:                                              ; preds = %532
  br i1 %529, label %546, label %542

542:                                              ; preds = %541
  %543 = load i32, ptr %2, align 4
  %544 = and i32 %543, 32
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %542, %541, %536
  %547 = phi ptr [ %533, %541 ], [ %533, %542 ], [ %538, %536 ]
  %548 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %548, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.29, i32 noundef 1) #7
  store i8 0, ptr %547, align 1
  br label %549

549:                                              ; preds = %546, %542, %536, %532
  %550 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 43
  %551 = load i32, ptr %550, align 4
  %552 = icmp slt i32 %551, 16
  br i1 %552, label %558, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %2, align 4
  %555 = lshr i32 %554, 8
  %556 = and i32 %555, 65535
  %557 = icmp ugt i32 %551, %556
  br i1 %557, label %558, label %563

558:                                              ; preds = %553, %549
  %559 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %559, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.30, i32 noundef %551) #7
  %560 = load i32, ptr %2, align 4
  %561 = lshr i32 %560, 8
  %562 = and i32 %561, 65535
  store i32 %562, ptr %550, align 4
  br label %563

563:                                              ; preds = %558, %553
  %564 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 44
  %565 = load i32, ptr %564, align 8
  %566 = icmp slt i32 %565, 16
  br i1 %566, label %573, label %567

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %569 = load i64, ptr %568, align 4
  %570 = trunc i64 %569 to i32
  %571 = lshr i32 %570, 16
  %572 = icmp ugt i32 %565, %571
  br i1 %572, label %573, label %579

573:                                              ; preds = %567, %563
  %574 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %574, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_check_params, ptr noundef nonnull @.str.31, i32 noundef %565) #7
  %575 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 1
  %576 = load i64, ptr %575, align 4
  %577 = trunc i64 %576 to i32
  %578 = lshr i32 %577, 16
  store i32 %578, ptr %564, align 8
  br label %579

579:                                              ; preds = %573, %567
  %580 = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %0) #6
  %581 = load i32, ptr %2, align 8
  %582 = and i32 %581, 128
  %583 = icmp eq i32 %582, 0
  %584 = select i1 %583, i32 4, i32 16
  %585 = icmp slt i32 %580, 1
  br i1 %585, label %586, label %588

586:                                              ; preds = %579
  %587 = tail call i32 @dwc2_hsotg_tx_fifo_total_depth(ptr noundef %0) #6
  br label %600

588:                                              ; preds = %588, %579
  %589 = phi i32 [ %593, %588 ], [ 0, %579 ]
  %590 = phi i32 [ %594, %588 ], [ 1, %579 ]
  %591 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45, i32 %590
  %592 = load i32, ptr %591, align 4
  %593 = add i32 %592, %589
  %594 = add i32 %590, 1
  %595 = icmp sgt i32 %594, %580
  br i1 %595, label %596, label %588

596:                                              ; preds = %588
  %597 = add i32 %593, -1
  %598 = tail call i32 @dwc2_hsotg_tx_fifo_total_depth(ptr noundef %0) #6
  %599 = icmp ult i32 %597, %598
  br i1 %599, label %611, label %600

600:                                              ; preds = %596, %586
  %601 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %601, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dwc2_check_param_tx_fifo_sizes) #7
  %602 = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %0) #6
  %603 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %603, i8 0, i32 64, i1 false) #6
  %604 = tail call i32 @dwc2_hsotg_tx_fifo_average_depth(ptr noundef %0) #6
  %605 = icmp slt i32 %602, 1
  br i1 %605, label %611, label %606

606:                                              ; preds = %606, %600
  %607 = phi i32 [ %609, %606 ], [ 1, %600 ]
  %608 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45, i32 %607
  store i32 %604, ptr %608, align 4
  %609 = add i32 %607, 1
  %610 = icmp sgt i32 %609, %602
  br i1 %610, label %611, label %606

611:                                              ; preds = %606, %600, %596
  br i1 %585, label %626, label %612

612:                                              ; preds = %623, %611
  %613 = phi i32 [ %624, %623 ], [ 1, %611 ]
  %614 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 7, i32 %613
  %615 = load i32, ptr %614, align 4
  %616 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 45, i32 %613
  %617 = load i32, ptr %616, align 4
  %618 = icmp ult i32 %617, %584
  %619 = icmp ugt i32 %617, %615
  %620 = select i1 %618, i1 true, i1 %619
  br i1 %620, label %621, label %623

621:                                              ; preds = %612
  %622 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %622, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dwc2_check_param_tx_fifo_sizes, i32 noundef %613, i32 noundef %617) #7
  store i32 %615, ptr %616, align 4
  br label %623

623:                                              ; preds = %621, %612
  %624 = add i32 %613, 1
  %625 = icmp sgt i32 %624, %580
  br i1 %625, label %626, label %612

626:                                              ; preds = %623, %611, %522
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_average_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_update_otg_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_total_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 4870303}
!9 = !{i64 2154451215}
!10 = !{i8 0, i8 2}
