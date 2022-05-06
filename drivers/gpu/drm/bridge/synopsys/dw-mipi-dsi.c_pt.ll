; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_set_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_set_slave\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_set_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_bind\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dw_mipi_dsi = type { %struct.drm_bridge, %struct.mipi_dsi_host, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.78, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.anon.78 = type { i8, i8, i8 }
%struct.debugfs_entries = type { ptr, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dw_mipi_dsi_plat_data = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dw_mipi_dsi_host_ops = type { ptr, ptr }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.dw_mipi_dsi_dphy_timing = type { i16, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__kstrtab_dw_mipi_dsi_set_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_set_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_set_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_set_slave to i32), ptr @__kstrtab_dw_mipi_dsi_set_slave, ptr @__kstrtabns_dw_mipi_dsi_set_slave }, section "___ksymtab_gpl+dw_mipi_dsi_set_slave", align 4
@__kstrtab_dw_mipi_dsi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_probe to i32), ptr @__kstrtab_dw_mipi_dsi_probe, ptr @__kstrtabns_dw_mipi_dsi_probe }, section "___ksymtab_gpl+dw_mipi_dsi_probe", align 4
@__kstrtab_dw_mipi_dsi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_remove to i32), ptr @__kstrtab_dw_mipi_dsi_remove, ptr @__kstrtabns_dw_mipi_dsi_remove }, section "___ksymtab_gpl+dw_mipi_dsi_remove", align 4
@__kstrtab_dw_mipi_dsi_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_bind to i32), ptr @__kstrtab_dw_mipi_dsi_bind, ptr @__kstrtabns_dw_mipi_dsi_bind }, section "___ksymtab_gpl+dw_mipi_dsi_bind", align 4
@__kstrtab_dw_mipi_dsi_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_unbind to i32), ptr @__kstrtab_dw_mipi_dsi_unbind, ptr @__kstrtabns_dw_mipi_dsi_unbind }, section "___ksymtab_gpl+dw_mipi_dsi_unbind", align 4
@__UNIQUE_ID_author266 = internal constant [40 x i8] c"author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [46 x i8] c"author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [47 x i8] c"description=DW MIPI DSI host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias270 = internal constant [27 x i8] c"alias=platform:dw-mipi-dsi\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [29 x i8] c"Phy not properly configured\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to get pclk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to get reset control: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: Failed to enable pclk\0A\00", align 1
@__func__.__dw_mipi_dsi_probe = private unnamed_addr constant [20 x i8] c"__dw_mipi_dsi_probe\00", align 1
@dw_mipi_dsi_host_ops = internal constant %struct.mipi_dsi_host_ops { ptr @dw_mipi_dsi_host_attach, ptr @dw_mipi_dsi_host_detach, ptr @dw_mipi_dsi_host_transfer }, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to register MIPI host: %d\0A\00", align 1
@dw_mipi_dsi_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @dw_mipi_dsi_bridge_attach, ptr null, ptr @dw_mipi_dsi_bridge_mode_valid, ptr null, ptr null, ptr @dw_mipi_dsi_bridge_post_disable, ptr @dw_mipi_dsi_bridge_mode_set, ptr null, ptr @dw_mipi_dsi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to create debugfs root\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"vpg\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"vpg_horizontal\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"vpg_ber_pattern\00", align 1
@fops_x32 = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x32_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.11 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"the number of data lanes(%u) is too many\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to create packet: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"failed to get available write payload FIFO\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"failed to get available command FIFO\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"failed to write command FIFO\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Timeout during read operation\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Read payload FIFO is empty\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Parent encoder object not found\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Phy get_lane_mbps() failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Phy init() failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Phy get_esc_clk_rate() failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"*ERROR* Retrieving phy timings failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"failed to wait phy lock state\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"failed to wait phy clk lane stop state\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_license269, ptr @__ksymtab_dw_mipi_dsi_bind, ptr @__ksymtab_dw_mipi_dsi_probe, ptr @__ksymtab_dw_mipi_dsi_remove, ptr @__ksymtab_dw_mipi_dsi_set_slave, ptr @__ksymtab_dw_mipi_dsi_unbind], section "llvm.metadata"
@switch.table.dw_mipi_dsi_mode_set = private unnamed_addr constant [3 x i32] [i32 5, i32 260, i32 3], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dw_mipi_dsi_set_slave(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 16
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %1, i32 0, i32 15
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %7, i32 0, i32 9
  store i32 %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %11, i32 0, i32 8
  store i32 %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %15, i32 0, i32 10
  store i32 %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %19, i32 0, i32 11
  store i32 %18, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dw_mipi_dsi_probe(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca [3 x %struct.debugfs_entries], align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 212, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %125, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 3
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 17
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %125

23:                                               ; preds = %18
  %24 = load ptr, ptr %1, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 4
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %125, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 4
  store ptr %24, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  %34 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %37) #9
  br label %125

38:                                               ; preds = %32
  %39 = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = icmp eq ptr %39, inttoptr (i32 -517 to ptr)
  br i1 %42, label %125, label %43

43:                                               ; preds = %41
  %44 = ptrtoint ptr %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %44) #9
  br label %125

45:                                               ; preds = %38
  %46 = icmp eq ptr %39, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %34, align 4
  %49 = tail call i32 @clk_prepare(ptr noundef %48) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = tail call i32 @clk_enable(ptr noundef %48) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %48) #8
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i32 [ %52, %54 ], [ %49, %47 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__dw_mipi_dsi_probe) #9
  %57 = inttoptr i32 %56 to ptr
  br label %125

58:                                               ; preds = %51
  %59 = tail call i32 @reset_control_assert(ptr noundef nonnull %39) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %60 = tail call i32 @reset_control_deassert(ptr noundef nonnull %39) #8
  %61 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %61) #8
  tail call void @clk_unprepare(ptr noundef %61) #8
  br label %62

62:                                               ; preds = %58, %45
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %63, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %68, %67 ], [ %65, %62 ]
  %71 = tail call ptr @debugfs_create_dir(ptr noundef %70, ptr noundef null) #8
  %72 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 12
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.7) #9
  br label %109

76:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  store ptr @.str.8, ptr %3, align 4
  %77 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 0, i32 1
  %78 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 14
  store ptr %78, ptr %77, align 4
  %79 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 0, i32 2
  store i32 65536, ptr %79, align 4
  %80 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 0, i32 3
  store ptr %5, ptr %80, align 4
  %81 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 1
  store ptr @.str.9, ptr %81, align 4
  %82 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 1, i32 1
  %83 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 14, i32 1
  store ptr %83, ptr %82, align 4
  %84 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 1, i32 2
  store i32 16777216, ptr %84, align 4
  %85 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 1, i32 3
  store ptr %5, ptr %85, align 4
  %86 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 2
  store ptr @.str.10, ptr %86, align 4
  %87 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 2, i32 1
  %88 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 14, i32 2
  store ptr %88, ptr %87, align 4
  %89 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 2, i32 2
  store i32 1048576, ptr %89, align 4
  %90 = getelementptr inbounds %struct.debugfs_entries, ptr %3, i32 2, i32 3
  store ptr %5, ptr %90, align 4
  %91 = call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 48, i32 noundef 3264) #8
  %92 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 13
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %76
  %95 = load ptr, ptr %91, align 4
  %96 = load ptr, ptr %72, align 4
  %97 = call ptr @debugfs_create_file(ptr noundef %95, i16 noundef zeroext 420, ptr noundef %96, ptr noundef nonnull %91, ptr noundef nonnull @fops_x32) #8
  %98 = load ptr, ptr %92, align 4
  %99 = getelementptr %struct.debugfs_entries, ptr %98, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %72, align 4
  %102 = call ptr @debugfs_create_file(ptr noundef %100, i16 noundef zeroext 420, ptr noundef %101, ptr noundef %99, ptr noundef nonnull @fops_x32) #8
  %103 = load ptr, ptr %92, align 4
  %104 = getelementptr %struct.debugfs_entries, ptr %103, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %72, align 4
  %107 = call ptr @debugfs_create_file(ptr noundef %105, i16 noundef zeroext 420, ptr noundef %106, ptr noundef %104, ptr noundef nonnull @fops_x32) #8
  br label %108

108:                                              ; preds = %94, %76
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  br label %109

109:                                              ; preds = %108, %74
  call void @pm_runtime_enable(ptr noundef %4) #8
  %110 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 1
  %111 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 1, i32 1
  store ptr @dw_mipi_dsi_host_ops, ptr %111, align 4
  store ptr %4, ptr %110, align 4
  %112 = call i32 @mipi_dsi_host_register(ptr noundef %110) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %112) #9
  %115 = load ptr, ptr %72, align 4
  call void @debugfs_remove(ptr noundef %115) #8
  %116 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %5, i32 0, i32 13
  %117 = load ptr, ptr %116, align 4
  call void @kfree(ptr noundef %117) #8
  %118 = inttoptr i32 %112 to ptr
  br label %125

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 8
  store ptr %5, ptr %120, align 4
  %121 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 7
  store ptr @dw_mipi_dsi_bridge_funcs, ptr %121, align 4
  %122 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 4
  store ptr %123, ptr %124, align 4
  call void @drm_bridge_add(ptr noundef nonnull %5) #8
  br label %125

125:                                              ; preds = %119, %114, %55, %43, %41, %36, %26, %22, %2
  %126 = phi ptr [ %33, %36 ], [ %57, %55 ], [ %118, %114 ], [ %5, %119 ], [ inttoptr (i32 -19 to ptr), %22 ], [ inttoptr (i32 -12 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %26 ], [ %39, %43 ], [ inttoptr (i32 -517 to ptr), %41 ]
  ret ptr %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_mipi_dsi_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  %5 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  tail call void @debugfs_remove(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_mipi_dsi_bind(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %0, ptr noundef null, i32 noundef 0) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @dw_mipi_dsi_unbind(ptr nocapture %0) #3 {
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x32_open(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @dw_mipi_dsi_debugfs_show, ptr noundef nonnull @dw_mipi_dsi_debugfs_write, ptr noundef nonnull @.str.11) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dw_mipi_dsi_debugfs_show(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.debugfs_entries, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = zext i8 %7 to i64
  store i64 %8, ptr %1, align 8
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %4 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_debugfs_write(ptr noundef readonly %0, i64 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.debugfs_entries, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i64 %1, 0
  %8 = getelementptr inbounds %struct.debugfs_entries, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = zext i1 %7 to i8
  store i8 %10, ptr %9, align 1
  %11 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %6, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = load ptr, ptr %8, align 4
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.debugfs_entries, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %14
  %21 = xor i32 %19, -1
  %22 = and i32 %14, %21
  %23 = select i1 %17, i32 %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !12
  br label %26

26:                                               ; preds = %4, %2
  %27 = phi i32 [ 0, %4 ], [ -19, %2 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_host_attach(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %0, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 20
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %8) #9
  br label %65

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %0, i32 44
  store i32 %8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 40
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 48
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr i8, ptr %0, i32 52
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 32
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %15
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 25
  %32 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !13
  %33 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %32, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 4
  br label %43

40:                                               ; preds = %35
  %41 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %36, i32 noundef 16) #8
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %50, label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %39, %38 ], [ %41, %40 ]
  %45 = getelementptr i8, ptr %0, i32 16
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i8 1, ptr %26, align 4
  br label %52

48:                                               ; preds = %43, %29
  %49 = phi i32 [ %33, %29 ], [ -517, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %65

50:                                               ; preds = %40
  %51 = ptrtoint ptr %41 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %65

52:                                               ; preds = %47, %15
  %53 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %6, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %6, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %57(ptr noundef %61, ptr noundef %1) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %56, %52
  br label %65

65:                                               ; preds = %64, %59, %50, %48, %12
  %66 = phi i32 [ -22, %12 ], [ 0, %64 ], [ %51, %50 ], [ %62, %59 ], [ %49, %48 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_host_detach(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -132
  %4 = getelementptr i8, ptr %0, i32 76
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dw_mipi_dsi_host_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %15, ptr noundef %1) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13, %9, %2
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @of_graph_get_remote_node(ptr noundef %21, i32 noundef 1, i32 noundef 0) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %22) #8
  tail call void @drm_panel_bridge_remove(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %24, %18
  tail call void @drm_bridge_remove(ptr noundef %3) #8
  br label %27

27:                                               ; preds = %26, %13
  %28 = phi i32 [ 0, %26 ], [ %16, %13 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_host_transfer(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca %struct.mipi_dsi_packet, align 4
  %4 = getelementptr i8, ptr %0, i32 -132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !13
  %5 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %3, ptr noundef %1) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 20
  %9 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %5) #9
  br label %166

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %15 = getelementptr i8, ptr %0, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1048580) #8, !srcloc !12
  %18 = load i16, ptr %11, align 2
  %19 = shl i16 %18, 1
  %20 = and i16 %19, 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %21, 17792768
  %23 = select i1 %14, i32 %21, i32 %22
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr i8, ptr %24, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !12
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 56
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %29 = and i32 %28, -32769
  %30 = shl nuw i16 %13, 14
  %31 = zext i16 %30 to i32
  %32 = or i32 %29, %31
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr i8, ptr %33, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !12
  %35 = getelementptr i8, ptr %0, i32 72
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %10
  %39 = load i16, ptr %11, align 2
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %42 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %36, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1048580) #8, !srcloc !12
  %45 = load i16, ptr %11, align 2
  %46 = shl i16 %45, 1
  %47 = and i16 %46, 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %48, 17792768
  %50 = select i1 %41, i32 %48, i32 %49
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr i8, ptr %51, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !12
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr i8, ptr %53, i32 56
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %56 = and i32 %55, -32769
  %57 = shl nuw i16 %40, 14
  %58 = zext i16 %57 to i32
  %59 = or i32 %56, %58
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %42, align 4
  %61 = getelementptr i8, ptr %60, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #8, !srcloc !12
  br label %62

62:                                               ; preds = %38, %10
  %63 = call fastcc i32 @dw_mipi_dsi_write(ptr noundef %4, ptr noundef nonnull %3)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %166

65:                                               ; preds = %62
  %66 = load ptr, ptr %35, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = call fastcc i32 @dw_mipi_dsi_write(ptr noundef nonnull %66, ptr noundef nonnull %3)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %166

71:                                               ; preds = %68, %65
  %72 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %163, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %163, label %79

79:                                               ; preds = %75
  %80 = call i64 @ktime_get() #8
  %81 = add i64 %80, 20000000
  %82 = load ptr, ptr %15, align 4
  %83 = getelementptr i8, ptr %82, i32 116
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %85 = and i32 %84, 64
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %94, %79
  %88 = call i64 @ktime_get() #8
  %89 = icmp sgt i64 %88, %81
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load ptr, ptr %15, align 4
  %92 = getelementptr i8, ptr %91, i32 116
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  br label %100

94:                                               ; preds = %87
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %95 = load ptr, ptr %15, align 4
  %96 = getelementptr i8, ptr %95, i32 116
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %87

100:                                              ; preds = %94, %90, %79
  %101 = phi i32 [ %93, %90 ], [ %84, %79 ], [ %97, %94 ]
  %102 = and i32 %101, 64
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %159

104:                                              ; preds = %100
  %105 = icmp sgt i32 %77, 0
  br i1 %105, label %106, label %163

106:                                              ; preds = %156, %104
  %107 = phi i32 [ %157, %156 ], [ 0, %104 ]
  %108 = call i64 @ktime_get() #8
  %109 = add i64 %108, 20000000
  %110 = load ptr, ptr %15, align 4
  %111 = getelementptr i8, ptr %110, i32 116
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %122, %106
  %116 = call i64 @ktime_get() #8
  %117 = icmp sgt i64 %116, %109
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load ptr, ptr %15, align 4
  %120 = getelementptr i8, ptr %119, i32 116
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %128

122:                                              ; preds = %115
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %123 = load ptr, ptr %15, align 4
  %124 = getelementptr i8, ptr %123, i32 116
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %126 = and i32 %125, 16
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %115

128:                                              ; preds = %122, %118, %106
  %129 = phi i32 [ %121, %118 ], [ %112, %106 ], [ %125, %122 ]
  %130 = and i32 %129, 16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = load ptr, ptr %15, align 4
  %134 = getelementptr i8, ptr %133, i32 112
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %136 = trunc i32 %135 to i8
  %137 = getelementptr i8, ptr %73, i32 %107
  store i8 %136, ptr %137, align 1
  %138 = or i32 %107, 1
  %139 = icmp slt i32 %138, %77
  br i1 %139, label %140, label %156

140:                                              ; preds = %132
  %141 = lshr i32 %135, 8
  %142 = trunc i32 %141 to i8
  %143 = getelementptr i8, ptr %73, i32 %138
  store i8 %142, ptr %143, align 1
  %144 = or i32 %107, 2
  %145 = icmp slt i32 %144, %77
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = lshr i32 %135, 16
  %148 = trunc i32 %147 to i8
  %149 = getelementptr i8, ptr %73, i32 %144
  store i8 %148, ptr %149, align 1
  %150 = or i32 %107, 3
  %151 = icmp slt i32 %150, %77
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = lshr i32 %135, 24
  %154 = trunc i32 %153 to i8
  %155 = getelementptr i8, ptr %73, i32 %150
  store i8 %154, ptr %155, align 1
  br label %156

156:                                              ; preds = %152, %146, %140, %132
  %157 = add i32 %107, 4
  %158 = icmp slt i32 %157, %77
  br i1 %158, label %106, label %163

159:                                              ; preds = %128, %100
  %160 = phi ptr [ @.str.17, %100 ], [ @.str.18, %128 ]
  %161 = getelementptr i8, ptr %0, i32 20
  %162 = load ptr, ptr %161, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull %160) #9
  br label %166

163:                                              ; preds = %156, %104, %75, %71
  %164 = phi ptr [ %3, %75 ], [ %3, %71 ], [ %76, %104 ], [ %76, %156 ]
  %165 = load i32, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %159, %68, %62, %7
  %167 = phi i32 [ %5, %7 ], [ %165, %163 ], [ %63, %62 ], [ %69, %68 ], [ -110, %159 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dw_mipi_dsi_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = phi i32 [ %7, %2 ], [ %26, %49 ]
  %11 = phi ptr [ %5, %2 ], [ %27, %49 ]
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = icmp slt i32 %10, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  store i32 0, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %3, ptr align 1 %11, i32 %10, i1 false)
  %16 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !12
  br label %25

19:                                               ; preds = %13
  %20 = load i32, ptr %11, align 1
  store i32 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !12
  %23 = getelementptr i8, ptr %11, i32 4
  %24 = add nsw i32 %10, -4
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ 0, %15 ], [ %24, %19 ]
  %27 = phi ptr [ %11, %15 ], [ %23, %19 ]
  %28 = tail call i64 @ktime_get() #8
  %29 = add i64 %28, 20000000
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 116
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %43, %25
  %36 = tail call i64 @ktime_get() #8
  %37 = icmp sgt i64 %36, %29
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 116
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %42 = and i32 %41, 8
  br label %49

43:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr i8, ptr %44, i32 116
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %35

49:                                               ; preds = %43, %38, %25
  %50 = phi i32 [ 0, %25 ], [ %42, %38 ], [ 0, %43 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %9, label %104

52:                                               ; preds = %9
  %53 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %1, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %3, align 4
  %55 = tail call i64 @ktime_get() #8
  %56 = add i64 %55, 20000000
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i8, ptr %57, i32 116
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %69, %52
  %63 = tail call i64 @ktime_get() #8
  %64 = icmp sgt i64 %63, %56
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load ptr, ptr %8, align 4
  %67 = getelementptr i8, ptr %66, i32 116
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %75

69:                                               ; preds = %62
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr i8, ptr %70, i32 116
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %62

75:                                               ; preds = %69, %65, %52
  %76 = phi i32 [ %68, %65 ], [ %59, %52 ], [ %72, %69 ]
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr i8, ptr %80, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %54) #8, !srcloc !12
  %82 = tail call i64 @ktime_get() #8
  %83 = add i64 %82, 20000000
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr i8, ptr %84, i32 116
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %87 = and i32 %86, 5
  %88 = icmp eq i32 %87, 5
  br i1 %88, label %108, label %89

89:                                               ; preds = %92, %79
  %90 = tail call i64 @ktime_get() #8
  %91 = icmp sgt i64 %90, %83
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %93 = load ptr, ptr %8, align 4
  %94 = getelementptr i8, ptr %93, i32 116
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %96 = and i32 %95, 5
  %97 = icmp eq i32 %96, 5
  br i1 %97, label %108, label %89

98:                                               ; preds = %89
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr i8, ptr %99, i32 116
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %102 = and i32 %101, 5
  %103 = icmp eq i32 %102, 5
  br i1 %103, label %108, label %104

104:                                              ; preds = %98, %75, %49
  %105 = phi ptr [ @.str.15, %75 ], [ @.str.16, %98 ], [ @.str.14, %49 ]
  %106 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull %105) #9
  br label %108

108:                                              ; preds = %104, %98, %92, %79
  %109 = phi i32 [ 0, %98 ], [ 0, %79 ], [ -110, %104 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret i32 %109
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_bridge_attach(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #8
  br label %45

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %6, i32 0, i32 4
  store i32 6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %41

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !13
  %22 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %21, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 4
  br label %32

29:                                               ; preds = %24
  %30 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %25, i32 noundef 16) #8
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %39, label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %28, %27 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i8 1, ptr %11, align 4
  br label %41

37:                                               ; preds = %32, %17
  %38 = phi i32 [ %22, %17 ], [ -517, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %45

39:                                               ; preds = %29
  %40 = ptrtoint ptr %30 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %45

41:                                               ; preds = %36, %14
  %42 = phi ptr [ %16, %14 ], [ %33, %36 ]
  %43 = load ptr, ptr %5, align 4
  %44 = call i32 @drm_bridge_attach(ptr noundef %43, ptr noundef %42, ptr noundef %0, i32 noundef %1) #8
  br label %45

45:                                               ; preds = %41, %39, %37, %8
  %46 = phi i32 [ %44, %41 ], [ -19, %8 ], [ %40, %39 ], [ %38, %37 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_bridge_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %7(ptr noundef %11, ptr noundef %2) #8
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_bridge_post_disable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %6 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #8, !srcloc !12
  %11 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #8, !srcloc !12
  %20 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_bridge, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  tail call void %25(ptr noundef %21) #8
  br label %28

28:                                               ; preds = %27, %1
  %29 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %5, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  tail call void %30(ptr noundef %35) #8
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %41 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %38, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr i8, ptr %44, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #8, !srcloc !12
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %48) #8
  tail call void @clk_unprepare(ptr noundef %48) #8
  %49 = load ptr, ptr %37, align 4
  %50 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #8
  br label %53

53:                                               ; preds = %40, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr i8, ptr %56, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #8, !srcloc !12
  %58 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  tail call void @clk_disable(ptr noundef %59) #8
  tail call void @clk_unprepare(ptr noundef %59) #8
  %60 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @__pm_runtime_idle(ptr noundef %61, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_bridge_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  tail call fastcc void @dw_mipi_dsi_mode_set(ptr noundef %0, ptr noundef %2)
  %4 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @dw_mipi_dsi_mode_set(ptr noundef nonnull %5, ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_bridge_enable(ptr nocapture noundef readonly %0) #1 {
  tail call fastcc void @dw_mipi_dsi_set_mode(ptr noundef %0, i32 noundef 1)
  %2 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @dw_mipi_dsi_set_mode(ptr noundef nonnull %3, i32 noundef 1)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %3 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #8, !srcloc !12
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 52
  br i1 %7, label %38, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !12
  %11 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 16129, i32 16128
  %18 = select i1 %14, i32 %17, i32 16130
  %19 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 14
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 14, i32 1
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 16777216
  %27 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 14, i32 2
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 0, i32 1048576
  %31 = or i32 %18, %26
  %32 = or i32 %31, %30
  %33 = or i32 %32, 65536
  br label %34

34:                                               ; preds = %22, %10
  %35 = phi i32 [ %33, %22 ], [ %18, %10 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !12
  br label %39

38:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #8, !srcloc !12
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 1, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1) #8, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_mode_set(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.dw_mipi_dsi_dphy_timing, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %12, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  br label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  br i1 %20, label %29, label %23

23:                                               ; preds = %17, %14
  %24 = phi ptr [ %0, %14 ], [ %19, %17 ]
  %25 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %24, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i32 [ %22, %17 ], [ %28, %23 ]
  %31 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = tail call i32 @clk_enable(ptr noundef %32) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #8
  br label %39

39:                                               ; preds = %38, %35, %29
  %40 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %8, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 7
  %47 = tail call i32 %41(ptr noundef %10, ptr noundef %1, i32 noundef %43, i32 noundef %30, i32 noundef %45, ptr noundef %46) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #8
  br label %50

50:                                               ; preds = %49, %39
  %51 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @__pm_runtime_resume(ptr noundef %52, i32 noundef 4) #8
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !13
  %57 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %54, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %58(ptr noundef %62, ptr noundef nonnull %4) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  br label %67

66:                                               ; preds = %50
  store i32 20, ptr %4, align 4
  br label %67

67:                                               ; preds = %66, %65, %60
  %68 = load i32, ptr %46, align 4
  %69 = lshr i32 %68, 3
  %70 = load i32, ptr %4, align 4
  %71 = udiv i32 %69, %70
  %72 = add nuw nsw i32 %71, 1
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %73 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #8, !srcloc !12
  %76 = and i32 %72, 255
  %77 = or i32 %76, 2560
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %78 = load ptr, ptr %73, align 4
  %79 = getelementptr i8, ptr %78, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #8, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %80 = load i32, ptr %44, align 4
  %81 = icmp ult i32 %80, 3
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = getelementptr inbounds [3 x i32], ptr @switch.table.dw_mipi_dsi_mode_set, i32 0, i32 %80
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %67
  %86 = phi i32 [ 0, %67 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 2
  %90 = and i32 %89, 2
  %91 = shl i32 %88, 1
  %92 = and i32 %91, 4
  %93 = or i32 %92, %90
  %94 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 3
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %97 = load ptr, ptr %73, align 4
  %98 = getelementptr i8, ptr %97, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %99 = load ptr, ptr %73, align 4
  %100 = getelementptr i8, ptr %99, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %86) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %73, align 4
  %102 = getelementptr i8, ptr %101, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %93) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %103 = load ptr, ptr %73, align 4
  %104 = getelementptr i8, ptr %103, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 28) #8, !srcloc !12
  %105 = load i32, ptr %42, align 4
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  %108 = and i32 %105, 4
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 16129, i32 16128
  %111 = select i1 %107, i32 %110, i32 16130
  %112 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 14
  %113 = load i8, ptr %112, align 4, !range !8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %85
  %116 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 14, i32 1
  %117 = load i8, ptr %116, align 1, !range !8
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, i32 0, i32 16777216
  %120 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 14, i32 2
  %121 = load i8, ptr %120, align 2, !range !8
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 0, i32 1048576
  %124 = or i32 %111, %119
  %125 = or i32 %124, %123
  %126 = or i32 %125, 65536
  br label %127

127:                                              ; preds = %115, %85
  %128 = phi i32 [ %126, %115 ], [ %111, %85 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %129 = load ptr, ptr %73, align 4
  %130 = getelementptr i8, ptr %129, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !12
  %131 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 16
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load ptr, ptr %11, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134, %127
  %138 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %139 = load i16, ptr %138, align 4
  %140 = lshr i16 %139, 1
  br label %144

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %143 = load i16, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i16 [ %140, %137 ], [ %143, %141 ]
  %146 = and i16 %145, 16383
  %147 = zext i16 %146 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %148 = load ptr, ptr %73, align 4
  %149 = getelementptr i8, ptr %148, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %150 = load ptr, ptr %73, align 4
  %151 = getelementptr i8, ptr %150, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 65537000) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %152 = load ptr, ptr %73, align 4
  %153 = getelementptr i8, ptr %152, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 3328) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %154 = load ptr, ptr %73, align 4
  %155 = getelementptr i8, ptr %154, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 1) #8, !srcloc !12
  %156 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  %159 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %160 = load i16, ptr %159, align 4
  %161 = zext i16 %160 to i32
  %162 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = sub nsw i32 %161, %164
  %166 = sub nsw i32 %158, %161
  %167 = load i32, ptr %46, align 4
  %168 = mul nuw nsw i32 %158, 1000
  %169 = mul i32 %168, %167
  %170 = lshr exact i32 %169, 3
  %171 = load i32, ptr %1, align 4
  %172 = freeze i32 %170
  %173 = freeze i32 %171
  %174 = udiv i32 %172, %173
  %175 = mul i32 %174, %173
  %176 = sub i32 %172, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = add nuw nsw i32 %174, %178
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %180 = load ptr, ptr %73, align 4
  %181 = getelementptr i8, ptr %180, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #8, !srcloc !12
  %182 = load i32, ptr %46, align 4
  %183 = mul nsw i32 %165, 1000
  %184 = mul i32 %183, %182
  %185 = lshr exact i32 %184, 3
  %186 = load i32, ptr %1, align 4
  %187 = freeze i32 %185
  %188 = freeze i32 %186
  %189 = udiv i32 %187, %188
  %190 = mul i32 %189, %188
  %191 = sub i32 %187, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = add nuw nsw i32 %189, %193
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %195 = load ptr, ptr %73, align 4
  %196 = getelementptr i8, ptr %195, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #8, !srcloc !12
  %197 = load i32, ptr %46, align 4
  %198 = mul nsw i32 %166, 1000
  %199 = mul i32 %198, %197
  %200 = lshr exact i32 %199, 3
  %201 = load i32, ptr %1, align 4
  %202 = freeze i32 %200
  %203 = freeze i32 %201
  %204 = udiv i32 %202, %203
  %205 = mul i32 %204, %203
  %206 = sub i32 %202, %205
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i32
  %209 = add nuw nsw i32 %204, %208
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %210 = load ptr, ptr %73, align 4
  %211 = getelementptr i8, ptr %210, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %209) #8, !srcloc !12
  %212 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %213 = load i16, ptr %212, align 2
  %214 = zext i16 %213 to i32
  %215 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %219 = load i16, ptr %218, align 4
  %220 = zext i16 %219 to i32
  %221 = sub nsw i32 %217, %220
  %222 = sub nsw i32 %220, %214
  %223 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %224 = load i16, ptr %223, align 4
  %225 = zext i16 %224 to i32
  %226 = sub nsw i32 %225, %217
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %227 = load ptr, ptr %73, align 4
  %228 = getelementptr i8, ptr %227, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %214) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %229 = load ptr, ptr %73, align 4
  %230 = getelementptr i8, ptr %229, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %221) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %231 = load ptr, ptr %73, align 4
  %232 = getelementptr i8, ptr %231, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %222) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %233 = load ptr, ptr %73, align 4
  %234 = getelementptr i8, ptr %233, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %226) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %235 = load ptr, ptr %73, align 4
  %236 = getelementptr i8, ptr %235, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 0) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %237 = load ptr, ptr %73, align 4
  %238 = getelementptr i8, ptr %237, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 0) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %239 = load ptr, ptr %73, align 4
  %240 = getelementptr i8, ptr %239, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 1) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %241 = load ptr, ptr %73, align 4
  %242 = getelementptr i8, ptr %241, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 0) #8, !srcloc !12
  %243 = load ptr, ptr %5, align 4
  %244 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %243, i32 0, i32 3
  %245 = load ptr, ptr %244, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !13
  %246 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %245, i32 0, i32 4
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %243, i32 0, i32 5
  %249 = load ptr, ptr %248, align 4
  %250 = load i32, ptr %46, align 4
  %251 = call i32 %247(ptr noundef %249, i32 noundef %250, ptr noundef nonnull %3) #8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %144
  %254 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %254, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #8
  br label %255

255:                                              ; preds = %253, %144
  %256 = load ptr, ptr %73, align 4
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %258 = icmp ugt i32 %257, 825438463
  %259 = load i16, ptr %3, align 8
  br i1 %258, label %260, label %273

260:                                              ; preds = %255
  %261 = and i16 %259, 1023
  %262 = zext i16 %261 to i32
  %263 = shl nuw nsw i32 %262, 16
  %264 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %3, i32 0, i32 1
  %265 = load i16, ptr %264, align 2
  %266 = and i16 %265, 1023
  %267 = zext i16 %266 to i32
  %268 = or i32 %263, %267
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %269 = load ptr, ptr %73, align 4
  %270 = getelementptr i8, ptr %269, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %268) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %271 = load ptr, ptr %73, align 4
  %272 = getelementptr i8, ptr %271, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 10000) #8, !srcloc !12
  br label %285

273:                                              ; preds = %255
  %274 = zext i16 %259 to i32
  %275 = shl i32 %274, 24
  %276 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %3, i32 0, i32 1
  %277 = load i16, ptr %276, align 2
  %278 = and i16 %277, 255
  %279 = zext i16 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = or i32 %280, %275
  %282 = or i32 %281, 10000
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %283 = load ptr, ptr %73, align 4
  %284 = getelementptr i8, ptr %283, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %282) #8, !srcloc !12
  br label %285

285:                                              ; preds = %273, %260
  %286 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %3, i32 0, i32 2
  %287 = load i16, ptr %286, align 4
  %288 = and i16 %287, 1023
  %289 = zext i16 %288 to i32
  %290 = shl nuw nsw i32 %289, 16
  %291 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %3, i32 0, i32 3
  %292 = load i16, ptr %291, align 2
  %293 = and i16 %292, 1023
  %294 = zext i16 %293 to i32
  %295 = or i32 %290, %294
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %296 = load ptr, ptr %73, align 4
  %297 = getelementptr i8, ptr %296, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %295) #8, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %298 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %0, i32 0, i32 9
  %299 = load i32, ptr %298, align 4
  %300 = add i32 %299, 3
  %301 = and i32 %300, 3
  %302 = or i32 %301, 8192
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %303 = load ptr, ptr %73, align 4
  %304 = getelementptr i8, ptr %303, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %302) #8, !srcloc !12
  %305 = load ptr, ptr %73, align 4
  %306 = getelementptr i8, ptr %305, i32 188
  %307 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %308 = load ptr, ptr %73, align 4
  %309 = getelementptr i8, ptr %308, i32 192
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %311 = load ptr, ptr %73, align 4
  %312 = getelementptr i8, ptr %311, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 0) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %313 = load ptr, ptr %73, align 4
  %314 = getelementptr i8, ptr %313, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 0) #8, !srcloc !12
  %315 = load ptr, ptr %8, align 4
  %316 = call i32 %315(ptr noundef %10) #8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %285
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21) #8
  br label %319

319:                                              ; preds = %318, %285
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %320 = load ptr, ptr %73, align 4
  %321 = getelementptr i8, ptr %320, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 15) #8, !srcloc !12
  %322 = call i64 @ktime_get() #8
  %323 = add i64 %322, 10000000
  %324 = load ptr, ptr %73, align 4
  %325 = getelementptr i8, ptr %324, i32 176
  %326 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %325) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %327 = and i32 %326, 1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %336, %319
  %330 = call i64 @ktime_get() #8
  %331 = icmp sgt i64 %330, %323
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load ptr, ptr %73, align 4
  %334 = getelementptr i8, ptr %333, i32 176
  %335 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  br label %342

336:                                              ; preds = %329
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %337 = load ptr, ptr %73, align 4
  %338 = getelementptr i8, ptr %337, i32 176
  %339 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %329, label %342

342:                                              ; preds = %336, %332, %319
  %343 = phi i32 [ %335, %332 ], [ %326, %319 ], [ %339, %336 ]
  %344 = and i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %342
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #8
  br label %347

347:                                              ; preds = %346, %342
  %348 = call i64 @ktime_get() #8
  %349 = add i64 %348, 10000000
  %350 = load ptr, ptr %73, align 4
  %351 = getelementptr i8, ptr %350, i32 176
  %352 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %351) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %353 = and i32 %352, 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %362, %347
  %356 = call i64 @ktime_get() #8
  %357 = icmp sgt i64 %356, %349
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = load ptr, ptr %73, align 4
  %360 = getelementptr i8, ptr %359, i32 176
  %361 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %360) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  br label %368

362:                                              ; preds = %355
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %363 = load ptr, ptr %73, align 4
  %364 = getelementptr i8, ptr %363, i32 176
  %365 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %364) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %366 = and i32 %365, 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %355, label %368

368:                                              ; preds = %362, %358, %347
  %369 = phi i32 [ %361, %358 ], [ %352, %347 ], [ %365, %362 ]
  %370 = and i32 %369, 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26) #8
  br label %373

373:                                              ; preds = %372, %368
  %374 = call i32 @drm_mode_vrefresh(ptr noundef %1) #8
  %375 = add i32 %374, 999
  %376 = sdiv i32 %375, %374
  %377 = shl i32 %376, 1
  call void @msleep(i32 noundef %377) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %378 = load ptr, ptr %73, align 4
  %379 = getelementptr i8, ptr %378, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %379, i32 0) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  %380 = load ptr, ptr %73, align 4
  %381 = getelementptr i8, ptr %380, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %381, i32 1) #8, !srcloc !12
  %382 = load i32, ptr %42, align 4
  %383 = and i32 %382, 1024
  %384 = icmp eq i32 %383, 0
  %385 = select i1 %384, i32 1, i32 3
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %386 = load ptr, ptr %73, align 4
  %387 = getelementptr i8, ptr %386, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 %385) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %388 = load ptr, ptr %73, align 4
  %389 = getelementptr i8, ptr %388, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 1) #8, !srcloc !12
  %390 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %8, i32 0, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = icmp eq ptr %391, null
  br i1 %392, label %397, label %393

393:                                              ; preds = %373
  %394 = load ptr, ptr %5, align 4
  %395 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %394, i32 0, i32 5
  %396 = load ptr, ptr %395, align 4
  call void %391(ptr noundef %396) #8
  br label %397

397:                                              ; preds = %393, %373
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 3963176}
!10 = !{i64 2155269287}
!11 = !{i64 2155268663}
!12 = !{i64 3962758}
!13 = !{!"auto-init"}
!14 = !{i64 2155280929}
!15 = !{i64 2155281260}
!16 = !{i64 2155283381}
!17 = !{i64 2155283712}
!18 = !{i64 2155278351}
!19 = !{i64 2155278682}
!20 = !{i64 2155273286}
!21 = !{i64 2155273617}
!22 = !{i64 2155275799}
!23 = !{i64 2155276130}
!24 = !{i64 2155289980}
!25 = !{i64 2155290311}
!26 = !{i64 2155291909}
!27 = !{i64 2155292240}
