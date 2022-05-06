; ModuleID = '/llk/IR/drivers/usb/musb/sunxi.c_pt.bc'
source_filename = "../drivers/usb/musb/sunxi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_fifo_cfg = type { i8, i8, i8, i16 }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sunxi_glue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@sunxi_musb_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description252 = internal constant [44 x i8] c"description=Allwinner sunxi MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [43 x i8] c"author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@sunxi_musb_driver = internal global %struct.platform_driver { ptr @sunxi_musb_probe, ptr @sunxi_musb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_musb_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"musb-sunxi\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error no device tree node found\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid or missing 'dr_mode' property\0A\00", align 1
@sunxi_musb_ops = internal constant %struct.musb_platform_ops { i32 1, ptr @sunxi_musb_init, ptr @sunxi_musb_exit, ptr @sunxi_musb_enable, ptr @sunxi_musb_disable, ptr @sunxi_musb_ep_offset, ptr null, i16 0, ptr @sunxi_musb_fifo_offset, ptr @sunxi_musb_busctl_offset, ptr @sunxi_musb_readb, ptr @sunxi_musb_writeb, ptr null, ptr @sunxi_musb_readw, ptr @sunxi_musb_writew, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_musb_dma_controller_create, ptr @sunxi_musb_dma_controller_destroy, ptr @sunxi_musb_set_mode, ptr null, ptr @sunxi_musb_recover, ptr null, ptr @sunxi_musb_set_vbus, ptr @sunxi_musb_pre_root_reset_end, ptr @sunxi_musb_post_root_reset_end, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"allwinner,sun8i-h3-musb\00", align 1
@sunxi_musb_hdrc_config = internal constant %struct.musb_hdrc_config { ptr @sunxi_musb_mode_cfg, i32 10, i8 3, i8 6, i8 11, i32 0 }, align 4
@sunxi_musb_hdrc_config_h3 = internal global %struct.musb_hdrc_config { ptr @sunxi_musb_mode_cfg_h3, i32 8, i8 3, i8 5, i8 11, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"allwinner,sun4i-a10-musb\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"allwinner,sun6i-a31-musb\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"allwinner,sun8i-a33-musb\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Error getting clock: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Error getting reset %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Invalid or missing extcon\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Error getting phy %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Error registering usb-phy %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Error getting usb-phy %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Error registering musb dev: %d\0A\00", align 1
@sunxi_musb = internal unnamed_addr global ptr null, align 4
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sunxi_musb_ep_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"drivers/usb/musb/sunxi.c\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"sunxi_musb_ep_offset called with non 0 offset\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"sunxi-musb does not have ULPI bus control register\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Error unknown readb offset %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Error unknown readb at 0x%x bytes offset\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"sunxi-musb does not have testmode\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Error unknown writeb offset %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Error unknown writeb at 0x%x bytes offset\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Error unknown readw offset %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Error unknown readw at 0x%x bytes offset\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Error unknown writew offset %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Error unknown writew at 0x%x bytes offset\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"Error requested mode not supported by this kernel\0A\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"Error changing modes is only supported in dual role mode\0A\00", align 1
@sunxi_musb_mode_cfg = internal global [10 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 2, i8 0, i16 512 }], align 2
@sunxi_musb_mode_cfg_h3 = internal global [8 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }], align 2
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__sunxi_musb_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @sunxi_musb_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_musb_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_musb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.musb_hdrc_platform_data, align 4
  %3 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %131

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 72, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %131, label %12

12:                                               ; preds = %9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 28, i1 false)
  %13 = tail call i32 @usb_get_dr_mode(ptr noundef %4) #7
  switch i32 %13, label %17 [
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
  ]

14:                                               ; preds = %12
  store i8 1, ptr %2, align 4
  br label %18

15:                                               ; preds = %12
  store i8 2, ptr %2, align 4
  br label %18

16:                                               ; preds = %12
  store i8 3, ptr %2, align 4
  br label %18

17:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  br label %131

18:                                               ; preds = %16, %15, %14
  %19 = phi i32 [ 11, %16 ], [ 6, %15 ], [ 1, %14 ]
  %20 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 8
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %2, i32 0, i32 10
  store ptr @sunxi_musb_ops, ptr %21, align 4
  %22 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef nonnull @.str.3) #7
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @sunxi_musb_hdrc_config, ptr @sunxi_musb_hdrc_config_h3
  %25 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %2, i32 0, i32 8
  store ptr %24, ptr %25, align 4
  store ptr %4, ptr %10, align 4
  %26 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 10
  store i32 -32, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 10, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 10, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 10, i32 2
  store ptr @sunxi_musb_work, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 12
  store ptr @sunxi_musb_host_notifier, ptr %30, align 4
  %31 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef nonnull @.str.4) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %34) #7
  br label %35

35:                                               ; preds = %33, %18
  %36 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef nonnull @.str.5) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %39) #7
  br label %40

40:                                               ; preds = %38, %35
  %41 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef nonnull @.str.6) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef nonnull @.str.3) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %47) #7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %47) #7
  br label %48

48:                                               ; preds = %46, %43
  %49 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #7
  %50 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 3
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = ptrtoint ptr %49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %53) #8
  %54 = load ptr, ptr %50, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %131

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 9
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %63 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 4
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = icmp eq ptr %62, inttoptr (i32 -517 to ptr)
  br i1 %66, label %131, label %67

67:                                               ; preds = %65
  %68 = ptrtoint ptr %62 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %68) #8
  %69 = load ptr, ptr %63, align 4
  %70 = ptrtoint ptr %69 to i32
  br label %131

71:                                               ; preds = %61, %56
  %72 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %4, i32 noundef 0) #7
  %73 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 11
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = icmp eq ptr %72, inttoptr (i32 -517 to ptr)
  br i1 %76, label %131, label %77

77:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #8
  %78 = load ptr, ptr %73, align 4
  %79 = ptrtoint ptr %78 to i32
  br label %131

80:                                               ; preds = %71
  %81 = tail call ptr @devm_phy_get(ptr noundef %4, ptr noundef nonnull @.str.10) #7
  %82 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 5
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = icmp eq ptr %81, inttoptr (i32 -517 to ptr)
  br i1 %85, label %131, label %86

86:                                               ; preds = %84
  %87 = ptrtoint ptr %81 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %87) #8
  %88 = load ptr, ptr %82, align 4
  %89 = ptrtoint ptr %88 to i32
  br label %131

90:                                               ; preds = %80
  %91 = tail call ptr @usb_phy_generic_register() #7
  %92 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 6
  store ptr %91, ptr %92, align 4
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = ptrtoint ptr %91 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %95) #8
  %96 = load ptr, ptr %92, align 4
  %97 = ptrtoint ptr %96 to i32
  br label %131

98:                                               ; preds = %90
  %99 = tail call ptr @devm_usb_get_phy(ptr noundef %4, i32 noundef 1) #7
  %100 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 7
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = ptrtoint ptr %99 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %103) #8
  br label %128

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %105, align 8
  %106 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %106, i8 0, i32 48, i1 false)
  %107 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str.14, ptr %107, align 4
  %108 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -2, ptr %108, align 8
  store ptr %4, ptr %3, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.device_node, ptr %109, i32 0, i32 3
  %112 = select i1 %110, ptr null, ptr %111
  %113 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 2
  store i8 1, ptr %114, align 8
  %115 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 5
  store ptr %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 6
  store i32 %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 7
  store ptr %2, ptr %121, align 4
  %122 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 8
  store i32 32, ptr %122, align 8
  %123 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #7
  %124 = getelementptr inbounds %struct.sunxi_glue, ptr %10, i32 0, i32 2
  store ptr %123, ptr %124, align 4
  %125 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %126, label %131

126:                                              ; preds = %104
  %127 = ptrtoint ptr %123 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %127) #8
  br label %128

128:                                              ; preds = %126, %102
  %129 = phi i32 [ %103, %102 ], [ %127, %126 ]
  %130 = load ptr, ptr %92, align 4
  call void @usb_phy_generic_unregister(ptr noundef %130) #7
  br label %131

131:                                              ; preds = %128, %104, %94, %86, %84, %77, %75, %67, %65, %52, %17, %9, %8
  %132 = phi i32 [ -22, %17 ], [ %55, %52 ], [ %70, %67 ], [ %79, %77 ], [ %89, %86 ], [ %97, %94 ], [ %129, %128 ], [ -22, %8 ], [ -12, %9 ], [ -517, %65 ], [ -517, %75 ], [ -517, %84 ], [ 0, %104 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sunxi_glue, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_glue, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @platform_device_unregister(ptr noundef %7) #7
  tail call void @usb_phy_generic_unregister(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %2) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.musb, ptr %11, i32 0, i32 27
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 65
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #7
  %21 = getelementptr inbounds %struct.musb, ptr %11, i32 0, i32 31
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_phy, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_otg, ptr %24, i32 0, i32 5
  store i32 7, ptr %25, align 4
  %26 = or i8 %16, 1
  br label %34

27:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #7
  %28 = getelementptr inbounds %struct.musb, ptr %11, i32 0, i32 31
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_phy, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_otg, ptr %31, i32 0, i32 5
  store i32 1, ptr %32, align 4
  %33 = and i8 %16, -2
  br label %34

34:                                               ; preds = %27, %20
  %35 = phi i8 [ 0, %27 ], [ 1, %20 ]
  %36 = phi i8 [ %33, %27 ], [ %26, %20 ]
  %37 = getelementptr inbounds %struct.musb, ptr %11, i32 0, i32 44
  store i8 %35, ptr %37, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %13, align 8
  %39 = getelementptr i8, ptr %38, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %36) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  br label %40

40:                                               ; preds = %34, %6
  %41 = load volatile i32, ptr %2, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = load volatile i32, ptr %2, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  %47 = xor i1 %43, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = getelementptr i8, ptr %0, i32 -20
  %50 = load ptr, ptr %49, align 4
  br i1 %43, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call i32 @phy_power_on(ptr noundef %50) #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %2) #7
  br label %55

53:                                               ; preds = %48
  %54 = tail call i32 @phy_power_off(ptr noundef %50) #7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %2) #7
  br label %55

55:                                               ; preds = %53, %51, %40
  %56 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %2) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %0, i32 -20
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %0, i32 -8
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @phy_set_mode_ext(ptr noundef %60, i32 noundef %62, i32 noundef 0) #7
  br label %64

64:                                               ; preds = %58, %55, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_host_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr i8, ptr %0, i32 -24
  br i1 %4, label %7, label %6

6:                                                ; preds = %3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %5) #7
  br label %8

7:                                                ; preds = %3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %5) #7
  br label %8

8:                                                ; preds = %7, %6
  %9 = getelementptr i8, ptr %0, i32 -24
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #7
  %10 = getelementptr i8, ptr %0, i32 -20
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  store ptr %0, ptr @sunxi_musb, align 4
  %8 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 32
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 9
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %4, align 4
  %20 = tail call i32 @sunxi_sram_claim(ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_prepare(ptr noundef %24) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = tail call i32 @clk_enable(ptr noundef %24) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load volatile i32, ptr %14, align 4
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @reset_control_deassert(ptr noundef %36) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %40 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 0) #7, !srcloc !12
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 12
  %47 = tail call i32 @devm_extcon_register_notifier(ptr noundef %43, ptr noundef %45, i32 noundef 2, ptr noundef %46) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load ptr, ptr %8, align 4
  %51 = tail call i32 @phy_init(ptr noundef %50) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 5
  store ptr @sunxi_musb_interrupt, ptr %54, align 4
  %55 = load ptr, ptr %2, align 8
  %56 = tail call i32 @__pm_runtime_resume(ptr noundef %55, i32 noundef 5) #7
  br label %82

57:                                               ; preds = %49, %39
  %58 = phi i32 [ %47, %39 ], [ %51, %49 ]
  %59 = load volatile i32, ptr %14, align 4
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @reset_control_assert(ptr noundef %64) #7
  br label %66

66:                                               ; preds = %62, %57, %34
  %67 = phi i32 [ %37, %34 ], [ %58, %62 ], [ %58, %57 ]
  %68 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %68) #7
  br label %69

69:                                               ; preds = %66, %27
  %70 = phi ptr [ %68, %66 ], [ %24, %27 ]
  %71 = phi i32 [ %67, %66 ], [ %28, %27 ]
  tail call void @clk_unprepare(ptr noundef %70) #7
  br label %72

72:                                               ; preds = %69, %22
  %73 = phi i32 [ %25, %22 ], [ %71, %69 ]
  %74 = load volatile i32, ptr %14, align 4
  %75 = and i32 %74, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @sunxi_sram_release(ptr noundef %80) #7
  br label %82

82:                                               ; preds = %77, %72, %53, %18
  %83 = phi i32 [ 0, %53 ], [ %20, %18 ], [ %73, %77 ], [ %73, %72 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #7
  %9 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 10
  %10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 9
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_power_off(ptr noundef %17) #7
  br label %19

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @phy_exit(ptr noundef %21) #7
  %23 = load volatile i32, ptr %11, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @reset_control_assert(ptr noundef %28) #7
  br label %30

30:                                               ; preds = %26, %19
  %31 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  %33 = load volatile i32, ptr %11, align 4
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @sunxi_sram_release(ptr noundef %39) #7
  br label %41

41:                                               ; preds = %36, %30
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  tail call void @devm_usb_put_phy(ptr noundef %42, ptr noundef %44) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 9
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 10
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %13) #7
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_ep_offset(i8 noundef zeroext %0, i16 noundef zeroext %1) #2 {
  %3 = icmp ne i16 %1, 0
  %4 = load i1, ptr @sunxi_musb_ep_offset.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !14

7:                                                ; preds = %2
  store i1 true, ptr @sunxi_musb_ep_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 400, i32 noundef 9, ptr noundef nonnull @.str.17) #7
  br label %8

8:                                                ; preds = %7, %2
  ret i32 128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_musb_fifo_offset(i8 noundef zeroext %0) #6 {
  %2 = zext i8 %0 to i32
  %3 = shl nuw nsw i32 %2, 2
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_musb_busctl_offset(i8 noundef zeroext %0, i16 noundef zeroext %1) #6 {
  %3 = zext i16 %1 to i32
  %4 = add nuw nsw i32 %3, 152
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sunxi_musb_readb(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr @sunxi_musb, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %59

7:                                                ; preds = %2
  switch i32 %1, label %54 [
    i32 0, label %8
    i32 1, label %11
    i32 10, label %14
    i32 11, label %17
    i32 14, label %20
    i32 15, label %76
    i32 96, label %23
    i32 98, label %26
    i32 99, label %29
    i32 31, label %32
    i32 112, label %46
    i32 152, label %51
    i32 154, label %51
    i32 155, label %51
    i32 156, label %51
    i32 158, label %51
    i32 159, label %51
  ]

8:                                                ; preds = %7
  %9 = getelementptr i8, ptr %0, i32 152
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %76

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 64
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  br label %76

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 76
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %76

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %0, i32 80
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  br label %76

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %0, i32 66
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  br label %76

23:                                               ; preds = %7
  %24 = getelementptr i8, ptr %0, i32 65
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  br label %76

26:                                               ; preds = %7
  %27 = getelementptr i8, ptr %0, i32 144
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  br label %76

29:                                               ; preds = %7
  %30 = getelementptr i8, ptr %0, i32 148
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  br label %76

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sunxi_glue, ptr %38, i32 0, i32 9
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %32
  %44 = getelementptr i8, ptr %0, i32 192
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  br label %76

46:                                               ; preds = %7
  %47 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.18) #8
  br label %76

51:                                               ; preds = %7, %7, %7, %7, %7, %7
  %52 = getelementptr i8, ptr %0, i32 %1
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %52) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  br label %76

54:                                               ; preds = %7
  %55 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.19, i32 noundef %1) #8
  br label %76

59:                                               ; preds = %2
  %60 = getelementptr i8, ptr %5, i32 128
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = icmp ugt i32 %1, 9
  %64 = add i32 %1, 2
  %65 = select i1 %63, i32 %64, i32 %1
  %66 = getelementptr i8, ptr %0, i32 %65
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %66) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  br label %76

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = ptrtoint ptr %0 to i32
  %74 = ptrtoint ptr %5 to i32
  %75 = sub i32 %73, %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.20, i32 noundef %75) #8
  br label %76

76:                                               ; preds = %68, %62, %54, %51, %46, %43, %32, %29, %26, %23, %20, %17, %14, %11, %8, %7
  %77 = phi i8 [ 0, %54 ], [ %53, %51 ], [ 0, %46 ], [ %45, %43 ], [ %31, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ %67, %62 ], [ 0, %68 ], [ 0, %7 ], [ -34, %32 ]
  ret i8 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_writeb(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #2 {
  %4 = load ptr, ptr @sunxi_musb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  switch i32 %1, label %39 [
    i32 0, label %9
    i32 1, label %11
    i32 10, label %13
    i32 11, label %15
    i32 14, label %17
    i32 15, label %19
    i32 96, label %26
    i32 98, label %28
    i32 99, label %30
    i32 112, label %32
    i32 152, label %37
    i32 154, label %37
    i32 155, label %37
    i32 156, label %37
    i32 158, label %37
    i32 159, label %37
  ]

9:                                                ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %0, i32 152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %2) #7, !srcloc !12
  br label %60

11:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %12 = getelementptr i8, ptr %0, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %2) #7, !srcloc !12
  br label %60

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr i8, ptr %0, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %2) #7, !srcloc !12
  br label %60

15:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr i8, ptr %0, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %2) #7, !srcloc !12
  br label %60

17:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %18 = getelementptr i8, ptr %0, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %2) #7, !srcloc !12
  br label %60

19:                                               ; preds = %8
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.21) #8
  br label %60

26:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %27 = getelementptr i8, ptr %0, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %2) #7, !srcloc !12
  br label %60

28:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %29 = getelementptr i8, ptr %0, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %2) #7, !srcloc !12
  br label %60

30:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %31 = getelementptr i8, ptr %0, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %2) #7, !srcloc !12
  br label %60

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.18) #8
  br label %60

37:                                               ; preds = %8, %8, %8, %8, %8, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %38 = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %2) #7, !srcloc !12
  br label %60

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.22, i32 noundef %1) #8
  br label %60

44:                                               ; preds = %3
  %45 = getelementptr i8, ptr %6, i32 128
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = icmp ugt i32 %1, 9
  %49 = add i32 %1, 2
  %50 = select i1 %48, i32 %49, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %51 = getelementptr i8, ptr %0, i32 %50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %2) #7, !srcloc !12
  br label %60

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %0 to i32
  %58 = ptrtoint ptr %6 to i32
  %59 = sub i32 %57, %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.23, i32 noundef %59) #8
  br label %60

60:                                               ; preds = %52, %47, %39, %37, %32, %30, %28, %26, %21, %19, %17, %15, %13, %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @sunxi_musb_readw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr @sunxi_musb, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  switch i32 %1, label %29 [
    i32 2, label %8
    i32 4, label %11
    i32 6, label %14
    i32 8, label %17
    i32 12, label %20
    i32 100, label %23
    i32 102, label %26
    i32 108, label %48
  ]

8:                                                ; preds = %7
  %9 = getelementptr i8, ptr %0, i32 68
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  br label %48

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 70
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !38
  br label %48

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 72
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  br label %48

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %0, i32 74
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  br label %48

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %0, i32 84
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  br label %48

23:                                               ; preds = %7
  %24 = getelementptr i8, ptr %0, i32 146
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !42
  br label %48

26:                                               ; preds = %7
  %27 = getelementptr i8, ptr %0, i32 150
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !43
  br label %48

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.24, i32 noundef %1) #8
  br label %48

34:                                               ; preds = %2
  %35 = getelementptr i8, ptr %5, i32 128
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %0, i32 %1
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  br label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %0 to i32
  %46 = ptrtoint ptr %5 to i32
  %47 = sub i32 %45, %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.25, i32 noundef %47) #8
  br label %48

48:                                               ; preds = %40, %37, %29, %26, %23, %20, %17, %14, %11, %8, %7
  %49 = phi i16 [ 0, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ %39, %37 ], [ 0, %40 ], [ 0, %7 ]
  ret i16 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_writew(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #2 {
  %4 = load ptr, ptr @sunxi_musb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  switch i32 %1, label %23 [
    i32 2, label %9
    i32 4, label %11
    i32 6, label %13
    i32 8, label %15
    i32 12, label %17
    i32 100, label %19
    i32 102, label %21
  ]

9:                                                ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %0, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %2) #7, !srcloc !46
  br label %41

11:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %12 = getelementptr i8, ptr %0, i32 70
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %2) #7, !srcloc !46
  br label %41

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr i8, ptr %0, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %2) #7, !srcloc !46
  br label %41

15:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr i8, ptr %0, i32 74
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %2) #7, !srcloc !46
  br label %41

17:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %18 = getelementptr i8, ptr %0, i32 84
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %2) #7, !srcloc !46
  br label %41

19:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %20 = getelementptr i8, ptr %0, i32 146
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %2) #7, !srcloc !46
  br label %41

21:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %22 = getelementptr i8, ptr %0, i32 150
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %2) #7, !srcloc !46
  br label %41

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef %1) #8
  br label %41

28:                                               ; preds = %3
  %29 = getelementptr i8, ptr %6, i32 128
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %32 = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %2) #7, !srcloc !46
  br label %41

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %0 to i32
  %39 = ptrtoint ptr %6 to i32
  %40 = sub i32 %38, %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.27, i32 noundef %40) #8
  br label %41

41:                                               ; preds = %33, %31, %23, %21, %19, %17, %15, %13, %11, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal noalias ptr @sunxi_musb_dma_controller_create(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sunxi_musb_dma_controller_destroy(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_set_mode(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = add i8 %1, -1
  %10 = icmp ult i8 %9, 3
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #8
  br label %35

12:                                               ; preds = %2
  %13 = zext i8 %9 to i32
  %14 = mul nuw nsw i32 %13, 5
  %15 = add nuw nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.sunxi_glue, ptr %8, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.29) #8
  br label %35

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @musb_root_disconnect(ptr noundef %0) #7
  br label %30

30:                                               ; preds = %29, %24
  store i32 %15, ptr %16, align 4
  %31 = getelementptr inbounds %struct.sunxi_glue, ptr %8, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %31) #7
  %32 = getelementptr inbounds %struct.sunxi_glue, ptr %8, i32 0, i32 10
  %33 = load ptr, ptr @system_wq, align 4
  %34 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %32) #7
  br label %35

35:                                               ; preds = %30, %23, %12, %11
  %36 = phi i32 [ -22, %11 ], [ -22, %23 ], [ 0, %30 ], [ 0, %12 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_recover(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 10
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_set_vbus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.sunxi_glue, ptr %8, i32 0, i32 9
  br i1 %9, label %17, label %11

11:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %10) #7
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  store i32 7, ptr %16, align 4
  br label %18

17:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %10) #7
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %struct.sunxi_glue, ptr %8, i32 0, i32 10
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %19) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_pre_root_reset_end(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @sun4i_usb_phy_set_squelch_detect(ptr noundef %9, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_musb_post_root_reset_end(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sunxi_glue, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @sun4i_usb_phy_set_squelch_detect(ptr noundef %9, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_musb_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %4 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 76
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !54
  %8 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  store i8 %7, ptr %8, align 4
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %11 = load i8, ptr %8, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #7, !srcloc !12
  %14 = load i8, ptr %8, align 4
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 44
  %19 = load i8, ptr %18, align 8, !range !56
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %4, align 8
  tail call void %23(ptr noundef %24, i8 noundef zeroext 0) #7
  %25 = load ptr, ptr @musb_writeb, align 4
  %26 = load ptr, ptr %4, align 8
  tail call void %25(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 0) #7
  br label %27

27:                                               ; preds = %21, %17, %10, %2
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr i8, ptr %28, i32 68
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !57
  %31 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  store i16 %30, ptr %31, align 8
  %32 = icmp eq i16 %30, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %34 = load i16, ptr %31, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #7, !srcloc !46
  br label %37

37:                                               ; preds = %33, %27
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr i8, ptr %38, i32 70
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %39) #7, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !59
  %41 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  store i16 %40, ptr %41, align 2
  %42 = icmp eq i16 %40, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %44 = load i16, ptr %41, align 2
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr i8, ptr %45, i32 70
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #7, !srcloc !46
  br label %47

47:                                               ; preds = %43, %37
  %48 = tail call i32 @musb_interrupt(ptr noundef %1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_usb_put_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_root_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_usb_phy_set_squelch_detect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 3670526}
!10 = !{i64 2153993835}
!11 = !{i64 2153994314}
!12 = !{i64 3670131}
!13 = !{i64 2153998961}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2154002412}
!16 = !{i64 2154002619}
!17 = !{i64 2154002826}
!18 = !{i64 2154003033}
!19 = !{i64 2154003240}
!20 = !{i64 2154003452}
!21 = !{i64 2154003659}
!22 = !{i64 2154003866}
!23 = !{i64 2154004103}
!24 = !{i64 2154005107}
!25 = !{i64 2154005951}
!26 = !{i64 2154006905}
!27 = !{i64 2154007151}
!28 = !{i64 2154007397}
!29 = !{i64 2154007643}
!30 = !{i64 2154007889}
!31 = !{i64 2154008800}
!32 = !{i64 2154009046}
!33 = !{i64 2154009292}
!34 = !{i64 2154010335}
!35 = !{i64 2154011224}
!36 = !{i64 3669908}
!37 = !{i64 2154012376}
!38 = !{i64 2154012710}
!39 = !{i64 2154013044}
!40 = !{i64 2154013378}
!41 = !{i64 2154013712}
!42 = !{i64 2154014046}
!43 = !{i64 2154014380}
!44 = !{i64 2154015351}
!45 = !{i64 2154016305}
!46 = !{i64 3669708}
!47 = !{i64 2154016626}
!48 = !{i64 2154016947}
!49 = !{i64 2154017268}
!50 = !{i64 2154017589}
!51 = !{i64 2154017910}
!52 = !{i64 2154018231}
!53 = !{i64 2154019190}
!54 = !{i64 2153995528}
!55 = !{i64 2153995733}
!56 = !{i8 0, i8 2}
!57 = !{i64 2153996234}
!58 = !{i64 2153996438}
!59 = !{i64 2153996938}
!60 = !{i64 2153997142}
