; ModuleID = '/llk/IR/drivers/phy/allwinner/phy-sun4i-usb.c_pt.bc'
source_filename = "../drivers/phy/allwinner/phy-sun4i-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_usb_phy_set_squelch_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_usb_phy_set_squelch_detect\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_usb_phy_set_squelch_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_usb_phy_cfg = type { i32, i32, i32, i32, i8, i8, i8, i8, i32 }
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
%struct.sun4i_usb_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun4i_usb_phy_data = type { ptr, ptr, i32, %struct.spinlock, [4 x %struct.sun4i_usb_phy], ptr, i8, ptr, ptr, ptr, %struct.notifier_block, i8, i8, i32, i32, i32, i32, %struct.delayed_work }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%union.power_supply_propval = type { i32 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_sun4i_usb_phy_set_squelch_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_usb_phy_set_squelch_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_usb_phy_set_squelch_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_usb_phy_set_squelch_detect to i32), ptr @__kstrtab_sun4i_usb_phy_set_squelch_detect, ptr @__kstrtabns_sun4i_usb_phy_set_squelch_detect }, section "___ksymtab_gpl+sun4i_usb_phy_set_squelch_detect", align 4
@__initcall__kmod_phy_sun4i_usb__252_998_sun4i_usb_phy_driver_init6 = internal global ptr @sun4i_usb_phy_driver_init, section ".initcall6.init", align 4
@sun4i_usb_phy_driver = internal global %struct.platform_driver { ptr @sun4i_usb_phy_probe, ptr @sun4i_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun4i_usb_phy_driver_exit = internal global ptr @sun4i_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [57 x i8] c"phy_sun4i_usb.description=Allwinner sun4i USB phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [57 x i8] c"phy_sun4i_usb.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [55 x i8] c"phy_sun4i_usb.file=drivers/phy/allwinner/phy-sun4i-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [29 x i8] c"phy_sun4i_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"sun4i-usb-phy\00", align 1
@sun4i_usb_phy_of_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_cfg }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"phy_ctrl\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"usb0_id_det\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Couldn't request ID GPIO\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"usb0_vbus_det\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Couldn't request VBUS detect GPIO\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"usb0_vbus_power-supply\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Couldn't get the VBUS power supply\0A\00", align 1
@sun4i_usb_phy0_cable = internal constant [3 x i32] [i32 1, i32 2, i32 0], align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Couldn't allocate our extcon device\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to register extcon: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"usb%d_vbus\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Couldn't get regulator %s... Deferring probe\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"usb%d_phy\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"usb_phy\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to get clock %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"usb%d_hsic_12M\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"usb%d_reset\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"failed to get reset %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"pmu%d\00", align 1
@sun4i_usb_phy_ops = internal constant %struct.phy_ops { ptr @sun4i_usb_phy_init, ptr @sun4i_usb_phy_exit, ptr @sun4i_usb_phy_power_on, ptr @sun4i_usb_phy_power_off, ptr @sun4i_usb_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"failed to create PHY %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"usb0-id-det\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Err requesting id-det-irq: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"usb0-vbus-det\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Err requesting vbus-det-irq: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = private unnamed_addr constant [51 x i8] c"External vbus detected, not enabling our own vbus\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Changing dr_mode to %d\0A\00", align 1
@sun4i_a10_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 0, i32 3, i8 4, i8 0, i8 0, i8 0, i32 0 }, align 4
@sun5i_a13_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 0, i32 2, i8 4, i8 0, i8 0, i8 0, i32 0 }, align 4
@sun6i_a31_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 1, i32 3, i8 4, i8 1, i8 0, i8 0, i32 0 }, align 4
@sun7i_a20_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 0, i32 2, i8 4, i8 0, i8 0, i8 0, i32 0 }, align 4
@sun8i_a23_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 1, i32 3, i8 4, i8 1, i8 0, i8 0, i32 0 }, align 4
@sun8i_a33_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 2, i32 3, i8 16, i8 1, i8 0, i8 0, i32 0 }, align 4
@sun8i_a83t_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 3, i32 2, i32 3, i32 0, i8 16, i8 1, i8 0, i8 0, i32 0 }, align 4
@sun8i_h3_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 4, i32 0, i32 4, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, align 4
@sun8i_r40_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 5, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, align 4
@sun8i_v3s_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 1, i32 0, i32 6, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, align 4
@sun50i_a64_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 7, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, align 4
@sun50i_h6_cfg = internal constant %struct.sun4i_usb_phy_cfg { i32 4, i32 0, i32 8, i32 3, i8 16, i8 1, i8 0, i8 1, i32 6 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_sun4i_usb_phy_driver_exit, ptr @__initcall__kmod_phy_sun4i_usb__252_998_sun4i_usb_phy_driver_init6, ptr @__ksymtab_sun4i_usb_phy_set_squelch_detect, ptr @sun4i_usb_phy_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_usb_phy_set_squelch_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = select i1 %1, i32 0, i32 2
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %4, i32 noundef 60, i32 noundef %5, i32 noundef 2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun4i_usb_phy_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, -32
  %8 = add i32 %7, -16
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = shl i32 %6, 1
  %11 = shl nuw i32 1, %10
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %14, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %12, i32 %17
  %19 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %9, i32 0, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %21, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !9
  br label %26

26:                                               ; preds = %25, %4
  %27 = icmp sgt i32 %3, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %26
  %29 = xor i32 %11, -1
  %30 = trunc i32 %11 to i8
  %31 = trunc i32 %29 to i8
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %2, %28 ], [ %53, %32 ]
  %34 = phi i32 [ 0, %28 ], [ %54, %32 ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %36 = and i32 %35, -65281
  %37 = add i32 %34, %1
  %38 = shl i32 %37, 8
  %39 = or i32 %36, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %39) #9, !srcloc !9
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %41 = zext i8 %40 to i32
  %42 = and i32 %33, 1
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %41, 128
  %45 = and i32 %41, 127
  %46 = select i1 %43, i32 %45, i32 %44
  %47 = and i32 %46, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %48 = trunc i32 %47 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %48) #9, !srcloc !16
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %50 = or i8 %49, %30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %50) #9, !srcloc !16
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %52 = and i8 %51, %31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %52) #9, !srcloc !16
  %53 = lshr i32 %33, 1
  %54 = add nuw nsw i32 %34, 1
  %55 = icmp eq i32 %54, %3
  br i1 %55, label %56, label %32

56:                                               ; preds = %32, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_usb_phy_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_usb_phy_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_usb_phy_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_probe(ptr noundef %0) #0 {
  %2 = alloca [16 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 240, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %232, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 17
  store i32 -32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 17, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 17, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 17, i32 0, i32 2
  store ptr @sun4i_usb_phy0_id_vbus_det_scan, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %14, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %15, align 8
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %17 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %232, label %19

19:                                               ; preds = %8
  %20 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  store ptr %20, ptr %6, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %232

24:                                               ; preds = %19
  %25 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 1) #9
  %26 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 7
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %232

31:                                               ; preds = %24
  %32 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef 1) #9
  %33 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %232

38:                                               ; preds = %31
  %39 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef null) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @devm_power_supply_get_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  %43 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 9
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #10
  %46 = load ptr, ptr %43, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %232

48:                                               ; preds = %41
  %49 = icmp eq ptr %42, null
  br i1 %49, label %232, label %50

50:                                               ; preds = %48, %38
  %51 = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %5, i32 noundef 0) #9
  %52 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %3, ptr noundef nonnull @sun4i_usb_phy0_cable) #9
  %54 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 5
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  %57 = load ptr, ptr %54, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %232

59:                                               ; preds = %50
  %60 = tail call i32 @devm_extcon_dev_register(ptr noundef %3, ptr noundef %53) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr %17, align 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %158

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 4
  br label %69

68:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %60) #10
  br label %232

69:                                               ; preds = %153, %66
  %70 = phi ptr [ %63, %66 ], [ %154, %153 ]
  %71 = phi i32 [ 0, %66 ], [ %155, %153 ]
  %72 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !21
  %73 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %70, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = shl nuw i32 1, %71
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %153

78:                                               ; preds = %69
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %71)
  %80 = call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull %2) #9
  %81 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71, i32 2
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = icmp eq ptr %80, inttoptr (i32 -517 to ptr)
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #10
  br label %151

86:                                               ; preds = %83
  store ptr null, ptr %81, align 4
  br label %87

87:                                               ; preds = %86, %78
  %88 = load ptr, ptr %17, align 4
  %89 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %88, i32 0, i32 5
  %90 = load i8, ptr %89, align 1, !range !22
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %71)
  br label %96

94:                                               ; preds = %87
  %95 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i32 noundef 16) #9
  br label %96

96:                                               ; preds = %94, %92
  %97 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull %2) #9
  %98 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71, i32 4
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull %2) #10
  %101 = load ptr, ptr %98, align 4
  %102 = ptrtoint ptr %101 to i32
  br label %151

103:                                              ; preds = %96
  %104 = load ptr, ptr %17, align 4
  %105 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %104, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = icmp eq i32 %71, %106
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %71)
  %112 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull %2) #9
  %113 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71, i32 5
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull %2) #10
  %116 = load ptr, ptr %113, align 4
  %117 = ptrtoint ptr %116 to i32
  br label %151

118:                                              ; preds = %110, %103
  %119 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %71)
  %120 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %121 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71, i32 3
  store ptr %120, ptr %121, align 4
  %122 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #10
  %124 = load ptr, ptr %121, align 4
  %125 = ptrtoint ptr %124 to i32
  br label %151

126:                                              ; preds = %118
  %127 = icmp eq i32 %71, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %126
  %129 = load ptr, ptr %17, align 4
  %130 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %129, i32 0, i32 7
  %131 = load i8, ptr %130, align 1, !range !22
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %128, %126
  %134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %71)
  %135 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull %2) #9
  %136 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71, i32 1
  store ptr %135, ptr %136, align 4
  %137 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = ptrtoint ptr %135 to i32
  br label %151

140:                                              ; preds = %133, %128
  %141 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sun4i_usb_phy_ops) #9
  store ptr %141, ptr %72, align 4
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %71) #10
  %144 = load ptr, ptr %72, align 4
  %145 = ptrtoint ptr %144 to i32
  br label %151

146:                                              ; preds = %140
  %147 = getelementptr %struct.sun4i_usb_phy, ptr %67, i32 %71, i32 7
  store i32 %71, ptr %147, align 4
  %148 = getelementptr %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 4, i32 %71
  %149 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 8
  store ptr %148, ptr %149, align 8
  %150 = load ptr, ptr %17, align 4
  br label %153

151:                                              ; preds = %143, %138, %123, %115, %100, %85
  %152 = phi i32 [ %145, %143 ], [ %139, %138 ], [ %125, %123 ], [ %117, %115 ], [ %102, %100 ], [ -517, %85 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  br label %232

153:                                              ; preds = %146, %69
  %154 = phi ptr [ %150, %146 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %155 = add nuw nsw i32 %71, 1
  %156 = load i32, ptr %154, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %69, label %158

158:                                              ; preds = %153, %62
  %159 = load ptr, ptr %26, align 4
  %160 = call i32 @gpiod_to_irq(ptr noundef %159) #9
  %161 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 13
  store i32 %160, ptr %161, align 4
  %162 = icmp sgt i32 %160, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %160, ptr noundef nonnull @sun4i_usb_phy0_id_vbus_det_irq, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef nonnull %6) #9
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %164) #10
  br label %232

167:                                              ; preds = %163, %158
  %168 = load ptr, ptr %33, align 4
  %169 = call i32 @gpiod_to_irq(ptr noundef %168) #9
  %170 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 14
  store i32 %169, ptr %170, align 4
  %171 = icmp sgt i32 %169, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %169, ptr noundef nonnull @sun4i_usb_phy0_id_vbus_det_irq, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef nonnull %6) #9
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %173) #10
  store i32 -1, ptr %170, align 4
  %176 = call i32 @sun4i_usb_phy_remove(ptr noundef %0)
  br label %232

177:                                              ; preds = %172, %167
  %178 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 9
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %208, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 10
  store ptr @sun4i_usb_phy0_vbus_notify, ptr %182, align 4
  %183 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 10, i32 2
  store i32 0, ptr %183, align 4
  %184 = call i32 @power_supply_reg_notifier(ptr noundef %182) #9
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %206, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %15, align 8
  %188 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %187, i32 0, i32 11
  %189 = load i8, ptr %188, align 4, !range !22
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %187, i32 0, i32 10
  call void @power_supply_unreg_notifier(ptr noundef %192) #9
  br label %193

193:                                              ; preds = %191, %186
  %194 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %187, i32 0, i32 13
  %195 = load i32, ptr %194, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  call void @devm_free_irq(ptr noundef %3, i32 noundef %195, ptr noundef %187) #9
  br label %198

198:                                              ; preds = %197, %193
  %199 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %187, i32 0, i32 14
  %200 = load i32, ptr %199, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  call void @devm_free_irq(ptr noundef %3, i32 noundef %200, ptr noundef %187) #9
  br label %203

203:                                              ; preds = %202, %198
  %204 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %187, i32 0, i32 17
  %205 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %204) #9
  br label %232

206:                                              ; preds = %181
  %207 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %6, i32 0, i32 11
  store i8 1, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %177
  %209 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @sun4i_usb_phy_xlate) #9
  %210 = icmp ugt ptr %209, inttoptr (i32 -4096 to ptr)
  br i1 %210, label %211, label %232

211:                                              ; preds = %208
  %212 = load ptr, ptr %15, align 8
  %213 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %212, i32 0, i32 11
  %214 = load i8, ptr %213, align 4, !range !22
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %212, i32 0, i32 10
  call void @power_supply_unreg_notifier(ptr noundef %217) #9
  br label %218

218:                                              ; preds = %216, %211
  %219 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %212, i32 0, i32 13
  %220 = load i32, ptr %219, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  call void @devm_free_irq(ptr noundef %3, i32 noundef %220, ptr noundef %212) #9
  br label %223

223:                                              ; preds = %222, %218
  %224 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %212, i32 0, i32 14
  %225 = load i32, ptr %224, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  call void @devm_free_irq(ptr noundef %3, i32 noundef %225, ptr noundef %212) #9
  br label %228

228:                                              ; preds = %227, %223
  %229 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %212, i32 0, i32 17
  %230 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %229) #9
  %231 = ptrtoint ptr %209 to i32
  br label %232

232:                                              ; preds = %228, %208, %203, %175, %166, %151, %68, %56, %48, %45, %35, %28, %22, %8, %1
  %233 = phi i32 [ %23, %22 ], [ %30, %28 ], [ %37, %35 ], [ %47, %45 ], [ %58, %56 ], [ %60, %68 ], [ %164, %166 ], [ %173, %175 ], [ %184, %203 ], [ %231, %228 ], [ -12, %1 ], [ -22, %8 ], [ -517, %48 ], [ 0, %208 ], [ %152, %151 ]
  ret i32 %233
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 11
  %6 = load i8, ptr %5, align 4, !range !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 10
  tail call void @power_supply_unreg_notifier(ptr noundef %9) #9
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @devm_free_irq(ptr noundef %2, i32 noundef %12, ptr noundef %4) #9
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @devm_free_irq(ptr noundef %2, i32 noundef %17, ptr noundef %4) #9
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 17
  %22 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %21) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_usb_phy0_id_vbus_det_scan(ptr noundef %0) #0 {
  %2 = alloca %union.power_supply_propval, align 4
  %3 = getelementptr i8, ptr %0, i32 -196
  %4 = getelementptr i8, ptr %0, i32 -180
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %228, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %0, i32 -188
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %18 [
    i32 3, label %12
    i32 1, label %19
  ]

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 -44
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %14) #9
  br label %19

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %16, %12, %7
  %20 = phi i32 [ 1, %18 ], [ %17, %16 ], [ 1, %12 ], [ 0, %7 ]
  %21 = getelementptr i8, ptr %0, i32 -40
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %22) #9
  br label %35

26:                                               ; preds = %19
  %27 = getelementptr i8, ptr %0, i32 -36
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !21
  %31 = call i32 @power_supply_get_property(ptr noundef nonnull %28, i32 noundef 3, ptr noundef nonnull %2) #9
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br i1 %32, label %35, label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %30, %24
  %36 = phi i32 [ %25, %24 ], [ %33, %30 ], [ 1, %34 ]
  %37 = getelementptr inbounds %struct.phy, ptr %5, i32 0, i32 3
  call void @mutex_lock(ptr noundef %37) #9
  %38 = getelementptr i8, ptr %0, i32 -48
  %39 = load i8, ptr %38, align 4, !range !22
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  call void @mutex_unlock(ptr noundef %37) #9
  br label %228

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %0, i32 -19
  %44 = load i8, ptr %43, align 1, !range !22
  store i8 0, ptr %43, align 1
  %45 = getelementptr i8, ptr %0, i32 -8
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %20, %46
  br i1 %47, label %99, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %10, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load ptr, ptr %21, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %0, i32 -36
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %54, %48
  %60 = phi i8 [ %44, %48 ], [ %44, %58 ], [ 1, %54 ]
  %61 = icmp ne i8 %60, 0
  %62 = icmp eq i32 %20, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load ptr, ptr %8, align 8
  %66 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %65, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -32
  %69 = add i32 %68, -16
  %70 = getelementptr i8, ptr %65, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %73 = and i32 %72, -12289
  %74 = or i32 %73, 8192
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  call void @arm_heavy_mb() #9
  %75 = load ptr, ptr %70, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %74) #9, !srcloc !9
  call void @msleep(i32 noundef 200) #9
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %76, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = mul i32 %78, -32
  %80 = add i32 %79, -16
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %84 = or i32 %83, 12288
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  call void @arm_heavy_mb() #9
  %85 = load ptr, ptr %81, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %84) #9, !srcloc !9
  br label %86

86:                                               ; preds = %64, %59
  %87 = select i1 %62, i32 32768, i32 49152
  %88 = load ptr, ptr %8, align 8
  %89 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %88, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, -32
  %92 = add i32 %91, -16
  %93 = getelementptr i8, ptr %88, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %96 = and i32 %95, -49153
  %97 = or i32 %96, %87
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  call void @arm_heavy_mb() #9
  %98 = load ptr, ptr %93, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #9, !srcloc !9
  store i32 %20, ptr %45, align 4
  br label %99

99:                                               ; preds = %86, %42
  %100 = phi i8 [ %60, %86 ], [ %44, %42 ]
  %101 = icmp ne i8 %100, 0
  %102 = getelementptr i8, ptr %0, i32 -4
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %36, %103
  br i1 %104, label %119, label %105

105:                                              ; preds = %99
  %106 = icmp eq i32 %36, 0
  %107 = select i1 %106, i32 8192, i32 12288
  %108 = load ptr, ptr %8, align 8
  %109 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %108, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = mul i32 %110, -32
  %112 = add i32 %111, -16
  %113 = getelementptr i8, ptr %108, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %116 = and i32 %115, -12289
  %117 = or i32 %116, %107
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  call void @arm_heavy_mb() #9
  %118 = load ptr, ptr %113, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #9, !srcloc !9
  store i32 %36, ptr %102, align 4
  br label %119

119:                                              ; preds = %105, %99
  call void @mutex_unlock(ptr noundef %37) #9
  br i1 %47, label %189, label %120

120:                                              ; preds = %119
  %121 = getelementptr i8, ptr %0, i32 -52
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq i32 %20, 0
  %124 = call i32 @extcon_set_state_sync(ptr noundef %122, i32 noundef 2, i1 noundef zeroext %123) #9
  %125 = icmp eq i32 %20, 1
  %126 = select i1 %101, i1 %125, i1 false
  br i1 %126, label %127, label %149

127:                                              ; preds = %120
  call void @mutex_lock(ptr noundef %37) #9
  %128 = load ptr, ptr %8, align 8
  %129 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %128, i32 0, i32 7
  %130 = load i32, ptr %129, align 4
  %131 = mul i32 %130, -32
  %132 = add i32 %131, -16
  %133 = getelementptr i8, ptr %128, i32 %132
  %134 = load ptr, ptr %133, align 4
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %136 = and i32 %135, -12289
  %137 = or i32 %136, 8192
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  call void @arm_heavy_mb() #9
  %138 = load ptr, ptr %133, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %137) #9, !srcloc !9
  call void @msleep(i32 noundef 1000) #9
  %139 = load ptr, ptr %8, align 8
  %140 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %139, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = mul i32 %141, -32
  %143 = add i32 %142, -16
  %144 = getelementptr i8, ptr %139, i32 %143
  %145 = load ptr, ptr %144, align 4
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %147 = or i32 %146, 12288
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  call void @arm_heavy_mb() #9
  %148 = load ptr, ptr %144, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %147) #9, !srcloc !9
  call void @mutex_unlock(ptr noundef %37) #9
  br label %149

149:                                              ; preds = %127, %120
  %150 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %9, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %173, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %9, i32 0, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = mul i32 %155, -32
  %157 = add i32 %156, -16
  %158 = getelementptr i8, ptr %9, i32 %157
  %159 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %160, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 3
  %164 = icmp eq i32 %155, 2
  %165 = select i1 %163, i1 %164, i1 false
  %166 = select i1 %165, i32 1115907, i32 1793
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %151) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %168 = or i32 %166, %167
  %169 = xor i32 %166, -1
  %170 = and i32 %167, %169
  %171 = select i1 %123, i32 %168, i32 %170
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  call void @arm_heavy_mb() #9
  %172 = load ptr, ptr %150, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %171) #9, !srcloc !9
  br label %173

173:                                              ; preds = %153, %149
  %174 = getelementptr i8, ptr %0, i32 -192
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %175, i32 0, i32 7
  %177 = load i8, ptr %176, align 1, !range !22
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %173
  %180 = load ptr, ptr %3, align 4
  %181 = getelementptr i8, ptr %180, i32 32
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  %183 = icmp ne i32 %20, 0
  %184 = and i32 %182, -2
  %185 = zext i1 %183 to i32
  %186 = or i32 %184, %185
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  call void @arm_heavy_mb() #9
  %187 = load ptr, ptr %3, align 4
  %188 = getelementptr i8, ptr %187, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #9, !srcloc !9
  br label %189

189:                                              ; preds = %179, %173, %119
  br i1 %104, label %195, label %190

190:                                              ; preds = %189
  %191 = getelementptr i8, ptr %0, i32 -52
  %192 = load ptr, ptr %191, align 4
  %193 = icmp ne i32 %36, 0
  %194 = call i32 @extcon_set_state_sync(ptr noundef %192, i32 noundef 1, i1 noundef zeroext %193) #9
  br label %195

195:                                              ; preds = %190, %189
  %196 = getelementptr i8, ptr %0, i32 -44
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr i8, ptr %0, i32 -16
  %201 = load i32, ptr %200, align 4
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %225, label %203

203:                                              ; preds = %199, %195
  %204 = load ptr, ptr %21, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = getelementptr i8, ptr %0, i32 -12
  %208 = load i32, ptr %207, align 4
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %225, label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr i8, ptr %0, i32 -192
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %212, i32 0, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, -1
  %216 = icmp ult i32 %215, 2
  br i1 %216, label %217, label %228

217:                                              ; preds = %210
  %218 = getelementptr i8, ptr %0, i32 -36
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %228, label %221

221:                                              ; preds = %217
  %222 = getelementptr i8, ptr %0, i32 -156
  %223 = load i8, ptr %222, align 4, !range !22
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221, %206, %199
  %226 = load ptr, ptr @system_wq, align 4
  %227 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %226, ptr noundef %0, i32 noundef 25) #9
  br label %228

228:                                              ; preds = %225, %221, %217, %210, %41, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_get_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_dr_mode_by_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy0_id_vbus_det_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @system_wq, align 4
  %4 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 17
  %5 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef 5) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy0_vbus_notify(ptr noundef %0, i32 noundef %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr @system_wq, align 4
  %11 = getelementptr i8, ptr %0, i32 32
  %12 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %11, i32 noundef 5) #9
  br label %13

13:                                               ; preds = %9, %5, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_reg_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @sun4i_usb_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %8, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %6
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr %struct.sun4i_usb_phy_data, ptr %4, i32 0, i32 4, i32 %6
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %11, %2
  %21 = phi ptr [ %19, %17 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %11 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun4i_usb_phy0_update_iscr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, -32
  %9 = add i32 %8, -16
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %13 = xor i32 %1, -1
  %14 = and i32 %12, %13
  %15 = or i32 %14, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %16 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -32
  %7 = add i32 %6, -16
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %112

13:                                               ; preds = %1
  %14 = tail call i32 @clk_enable(ptr noundef %10) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %112

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %23, %25 ], [ %20, %17 ]
  %28 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %28) #9
  tail call void @clk_unprepare(ptr noundef %28) #9
  br label %112

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @reset_control_deassert(ptr noundef %31) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %35) #9
  tail call void @clk_unprepare(ptr noundef %35) #9
  %36 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %36) #9
  tail call void @clk_unprepare(ptr noundef %36) #9
  br label %112

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %60 [
    i32 3, label %42
    i32 8, label %42
  ]

42:                                               ; preds = %37, %37
  %43 = load i32, ptr %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %42
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %39, i32 0, i32 4
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = getelementptr i8, ptr %46, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %52 = and i32 %51, -41
  %53 = or i32 %52, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !30
  tail call void @arm_heavy_mb() #9
  %54 = load ptr, ptr %8, align 4
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %55, i32 0, i32 4
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i32
  %59 = getelementptr i8, ptr %54, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %53) #9, !srcloc !9
  br label %82

60:                                               ; preds = %37
  %61 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %39, i32 0, i32 6
  %66 = load i8, ptr %65, align 2, !range !22
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %62, i32 16
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %71 = and i32 %70, -3
  %72 = load ptr, ptr %61, align 4
  %73 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #9, !srcloc !9
  br label %74

74:                                               ; preds = %68, %64, %60
  %75 = load i32, ptr %4, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %3, i32 noundef 12, i32 noundef 1, i32 noundef 1)
  br label %78

78:                                               ; preds = %77, %74
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %3, i32 noundef 32, i32 noundef 20, i32 noundef 5)
  %79 = load ptr, ptr %38, align 4
  %80 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %79, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %3, i32 noundef 42, i32 noundef %81, i32 noundef 2)
  br label %82

82:                                               ; preds = %78, %45, %42
  %83 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %102, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %4, align 4
  %88 = mul i32 %87, -32
  %89 = add i32 %88, -16
  %90 = getelementptr i8, ptr %3, i32 %89
  %91 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 3
  %96 = icmp eq i32 %87, 2
  %97 = select i1 %95, i1 %96, i1 false
  %98 = select i1 %97, i32 1115907, i32 1793
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %84) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %100 = or i32 %98, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %83, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #9, !srcloc !9
  br label %102

102:                                              ; preds = %86, %82
  %103 = load i32, ptr %4, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 6
  store i8 1, ptr %106, align 4
  tail call fastcc void @sun4i_usb_phy0_update_iscr(ptr noundef %0, i32 noundef 0, i32 noundef 65536)
  tail call fastcc void @sun4i_usb_phy0_update_iscr(ptr noundef %0, i32 noundef 0, i32 noundef 131072)
  %107 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 15
  store i32 -1, ptr %107, align 4
  %108 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 16
  store i32 -1, ptr %108, align 4
  %109 = load ptr, ptr @system_wq, align 4
  %110 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 17
  %111 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %109, ptr noundef %110, i32 noundef 0) #9
  br label %112

112:                                              ; preds = %105, %102, %34, %26, %16, %1
  %113 = phi i32 [ %27, %26 ], [ %32, %34 ], [ 0, %105 ], [ 0, %102 ], [ %14, %16 ], [ %11, %1 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -32
  %7 = add i32 %6, -16
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %28 [
    i32 3, label %15
    i32 8, label %15
  ]

15:                                               ; preds = %10, %10
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %12, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  %22 = or i32 %21, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #9, !srcloc !9
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, -32
  %27 = add i32 %26, -16
  br label %28

28:                                               ; preds = %15, %10
  %29 = phi i32 [ -16, %10 ], [ %27, %15 ]
  %30 = phi ptr [ %3, %10 ], [ %23, %15 ]
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %34 = and i32 %33, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #9, !srcloc !9
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, -32
  %40 = add i32 %39, -16
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %44 = and i32 %43, -131073
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #9, !srcloc !9
  %46 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 6
  store i8 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %28, %1
  %48 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %4, align 4
  %53 = mul i32 %52, -32
  %54 = add i32 %53, -16
  %55 = getelementptr i8, ptr %3, i32 %54
  %56 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 3
  %61 = icmp eq i32 %52, 2
  %62 = select i1 %60, i1 %61, i1 false
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %49) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %64 = select i1 %62, i32 -1115908, i32 -1794
  %65 = and i32 %64, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %66 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %65) #9, !srcloc !9
  br label %67

67:                                               ; preds = %51, %47
  %68 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @reset_control_assert(ptr noundef %69) #9
  %71 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  tail call void @clk_disable(ptr noundef %72) #9
  tail call void @clk_unprepare(ptr noundef %72) #9
  %73 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  tail call void @clk_disable(ptr noundef %74) #9
  tail call void @clk_unprepare(ptr noundef %74) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_power_on(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -32
  %7 = add i32 %6, -16
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 6
  %14 = load i8, ptr %13, align 4, !range !22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.24) #10
  br label %72

31:                                               ; preds = %26, %22, %16
  %32 = tail call i32 @regulator_enable(ptr noundef nonnull %10) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  store i8 1, ptr %13, align 4
  %35 = load i32, ptr %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 13
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %68, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 14
  %51 = load i32, ptr %50, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %68, label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 4, i32 0, i32 6
  %66 = load i8, ptr %65, align 4, !range !22
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64, %49, %41
  %69 = load ptr, ptr @system_wq, align 4
  %70 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 17
  %71 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %69, ptr noundef %70, i32 noundef 5) #9
  br label %72

72:                                               ; preds = %68, %64, %60, %53, %34, %31, %30, %12, %1
  %73 = phi i32 [ 0, %30 ], [ 0, %12 ], [ 0, %1 ], [ %32, %31 ], [ 0, %68 ], [ 0, %34 ], [ 0, %53 ], [ 0, %60 ], [ 0, %64 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -32
  %7 = add i32 %6, -16
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 6
  %14 = load i8, ptr %13, align 4, !range !22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @regulator_disable(ptr noundef nonnull %10) #9
  store i8 0, ptr %13, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %55, label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 14
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %55, label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 4, i32 0, i32 6
  %49 = load i8, ptr %48, align 4, !range !22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43, %36
  %52 = load ptr, ptr @system_wq, align 4
  %53 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %8, i32 0, i32 17
  %54 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %53, i32 noundef 25) #9
  br label %55

55:                                               ; preds = %51, %47, %32, %24, %16, %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_set_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, -32
  %9 = add i32 %8, -16
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %1, 1
  %14 = select i1 %13, i32 0, i32 -22
  br label %30

15:                                               ; preds = %3
  switch i32 %1, label %30 [
    i32 1, label %18
    i32 6, label %16
    i32 11, label %17
  ]

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = phi i32 [ 3, %17 ], [ 2, %16 ], [ %1, %15 ]
  %20 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %10, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %19) #10
  store i32 %19, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %10, i32 0, i32 15
  store i32 -1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %10, i32 0, i32 12
  store i8 1, ptr %26, align 1
  %27 = load ptr, ptr @system_wq, align 4
  %28 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %10, i32 0, i32 17
  %29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %28, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %24, %15, %12
  %31 = phi i32 [ 0, %24 ], [ %14, %12 ], [ -22, %15 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unreg_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2154055364}
!9 = !{i64 3712491}
!10 = !{i64 3712909}
!11 = !{i64 2154055779}
!12 = !{i64 2154055954}
!13 = !{i64 3712689}
!14 = !{i64 2154056255}
!15 = !{i64 2154056594}
!16 = !{i64 3712294}
!17 = !{i64 2154056820}
!18 = !{i64 2154056995}
!19 = !{i64 2154057221}
!20 = !{i64 2154057396}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
!23 = !{i64 2154052888}
!24 = !{i64 2154053079}
!25 = !{i64 2154059787}
!26 = !{i64 2154059969}
!27 = !{i64 2154073572}
!28 = !{i64 2154073929}
!29 = !{i64 2154061954}
!30 = !{i64 2154062323}
!31 = !{i64 2154062805}
!32 = !{i64 2154062998}
!33 = !{i64 2154065377}
!34 = !{i64 2154065845}
