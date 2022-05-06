; ModuleID = '/llk/IR/drivers/usb/musb/am35x.c_pt.bc'
source_filename = "../drivers/usb/musb/am35x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.am35x_glue = type { ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.omap_musb_board_data = type { i8, i8, i16, i8, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description254 = internal constant [34 x i8] c"description=AM35x MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [44 x i8] c"author=Ajay Kumar Gupta <ajay.gupta@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@am35x_driver = internal global %struct.platform_driver { ptr @am35x_probe, ptr @am35x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am35x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"musb-am35x\00", align 1
@am35x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @am35x_suspend, ptr @am35x_resume, ptr @am35x_suspend, ptr @am35x_resume, ptr @am35x_suspend, ptr @am35x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get PHY clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to enable PHY clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@am35x_ops = internal constant %struct.musb_platform_ops { i32 5, ptr @am35x_musb_init, ptr @am35x_musb_exit, ptr @am35x_musb_enable, ptr @am35x_musb_disable, ptr null, ptr null, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am35x_read_fifo, ptr null, ptr null, ptr null, ptr @musbhs_dma_controller_create, ptr @musbhs_dma_controller_destroy, ptr @am35x_musb_set_mode, ptr @am35x_musb_try_idle, ptr null, ptr null, ptr @am35x_musb_set_vbus, ptr null, ptr null, ptr null, ptr null }, align 4
@am35x_dev_info = internal unnamed_addr constant %struct.platform_device_info { ptr null, ptr null, i8 0, ptr @.str.10, i32 -2, ptr null, i32 0, ptr null, i32 0, i64 4294967295, ptr null }, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to register musb device: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [47 x i8] c"\014%s %d: VBUS error workaround (delay coming)\0A\00", align 1
@__func__.am35x_musb_interrupt = private unnamed_addr constant [21 x i8] c"am35x_musb_interrupt\00", align 1
@am35x_musb_try_idle.last_timer = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"drivers/usb/musb/am35x.c\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license256], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @am35x_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @am35x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  %13 = ptrtoint ptr %10 to i32
  br label %67

14:                                               ; preds = %9
  %15 = tail call ptr @clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  %18 = ptrtoint ptr %15 to i32
  br label %65

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %10) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  br label %63

23:                                               ; preds = %19
  %24 = tail call i32 @clk_enable(ptr noundef %15) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  br label %61

27:                                               ; preds = %23
  store ptr %3, ptr %7, align 8
  %28 = getelementptr inbounds %struct.am35x_glue, ptr %7, i32 0, i32 3
  store ptr %10, ptr %28, align 4
  %29 = getelementptr inbounds %struct.am35x_glue, ptr %7, i32 0, i32 4
  store ptr %15, ptr %29, align 8
  %30 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 10
  store ptr @am35x_ops, ptr %30, align 4
  %31 = tail call ptr @usb_phy_generic_register() #8
  %32 = getelementptr inbounds %struct.am35x_glue, ptr %7, i32 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = ptrtoint ptr %31 to i32
  br label %59

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %37, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @am35x_dev_info, i32 56, i1 false)
  store ptr %3, ptr %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 6
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 7
  store ptr %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 8
  store i32 32, ptr %45, align 8
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %struct.device_node, ptr %47, i32 0, i32 3
  %50 = select i1 %48, ptr null, ptr %49
  %51 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 2
  store i8 1, ptr %52, align 8
  %53 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #8
  %54 = getelementptr inbounds %struct.am35x_glue, ptr %7, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %69

56:                                               ; preds = %36
  %57 = ptrtoint ptr %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %57) #10
  %58 = load ptr, ptr %32, align 8
  call void @usb_phy_generic_unregister(ptr noundef %58) #8
  br label %59

59:                                               ; preds = %56, %34
  %60 = phi i32 [ %35, %34 ], [ %57, %56 ]
  call void @clk_disable(ptr noundef %15) #8
  br label %61

61:                                               ; preds = %59, %26
  %62 = phi i32 [ %24, %26 ], [ %60, %59 ]
  call void @clk_disable(ptr noundef %10) #8
  br label %63

63:                                               ; preds = %61, %22
  %64 = phi i32 [ %20, %22 ], [ %62, %61 ]
  call void @clk_put(ptr noundef %15) #8
  br label %65

65:                                               ; preds = %63, %17
  %66 = phi i32 [ %18, %17 ], [ %64, %63 ]
  call void @clk_put(ptr noundef %10) #8
  br label %67

67:                                               ; preds = %65, %12
  %68 = phi i32 [ %13, %12 ], [ %66, %65 ]
  call void @kfree(ptr noundef nonnull %7) #8
  br label %69

69:                                               ; preds = %67, %36, %1
  %70 = phi i32 [ 0, %36 ], [ %68, %67 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #8
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @usb_phy_generic_unregister(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  %12 = load ptr, ptr %8, align 4
  tail call void @clk_put(ptr noundef %12) #8
  %13 = load ptr, ptr %10, align 4
  tail call void @clk_put(ptr noundef %13) #8
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_musb_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 1024
  store ptr %12, ptr %10, align 8
  %13 = tail call i32 @musb_readl(ptr noundef %9, i32 noundef 0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %1
  %16 = tail call ptr @usb_get_phy(i32 noundef 1) #8
  %17 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  %19 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %22, ptr noundef nonnull @otg_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %23 = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void %24() #8
  br label %27

27:                                               ; preds = %26, %21
  tail call void @musb_writel(ptr noundef %9, i32 noundef 4, i32 noundef 1) #8
  %28 = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(i8 noundef zeroext 1) #8
  br label %32

32:                                               ; preds = %31, %27
  tail call void @msleep(i32 noundef 5) #8
  %33 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 5
  store ptr @am35x_musb_interrupt, ptr %33, align 4
  %34 = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35() #8
  br label %38

38:                                               ; preds = %37, %32, %15, %1
  %39 = phi i32 [ -19, %1 ], [ -517, %15 ], [ 0, %37 ], [ 0, %32 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_musb_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void %11(i8 noundef zeroext 0) #8
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %16 = load ptr, ptr %15, align 4
  tail call void @usb_put_phy(ptr noundef %16) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35x_musb_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = and i32 %7, -131072
  %9 = or i32 %8, %6
  tail call void @musb_writel(ptr noundef %3, i32 noundef 48, i32 noundef %9) #8
  tail call void @musb_writel(ptr noundef %3, i32 noundef 80, i32 noundef 33488896) #8
  tail call void @musb_writel(ptr noundef %3, i32 noundef 68, i32 noundef 16777216) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35x_musb_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  tail call void @musb_writel(ptr noundef %3, i32 noundef 84, i32 noundef 33488896) #8
  tail call void @musb_writel(ptr noundef %3, i32 noundef 52, i32 noundef -65537) #8
  tail call void @musb_writel(ptr noundef %3, i32 noundef 96, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35x_read_fifo(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %7 = ptrtoint ptr %2 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  %10 = icmp ugt i16 %1, 3
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %18, !prof !9

12:                                               ; preds = %3
  %13 = zext i16 %1 to i32
  %14 = lshr i32 %13, 2
  tail call void @__raw_readsl(ptr noundef %6, ptr noundef %2, i32 noundef %14) #8
  %15 = and i32 %13, 65532
  %16 = getelementptr i8, ptr %2, i32 %15
  %17 = and i16 %1, 3
  br label %32

18:                                               ; preds = %3
  %19 = icmp ugt i16 %1, 4
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = lshr i16 %1, 2
  %22 = zext i16 %21 to i32
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %28, %23 ], [ 0, %20 ]
  %25 = phi ptr [ %27, %23 ], [ %2, %20 ]
  %26 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 0) #8
  store i32 %26, ptr %25, align 4
  %27 = getelementptr i8, ptr %25, i32 4
  %28 = add nuw nsw i32 %24, 1
  %29 = icmp eq i32 %28, %22
  br i1 %29, label %30, label %23

30:                                               ; preds = %23
  %31 = and i16 %1, 3
  br label %32

32:                                               ; preds = %30, %18, %12
  %33 = phi i16 [ %31, %30 ], [ %1, %18 ], [ %17, %12 ]
  %34 = phi ptr [ %27, %30 ], [ %2, %18 ], [ %16, %12 ]
  %35 = icmp eq i16 %33, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = zext i16 %33 to i32
  %38 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 0) #8
  store i32 %38, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr nonnull align 4 %4, i32 %37, i1 false)
  br label %39

39:                                               ; preds = %36, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @musbhs_dma_controller_create(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musbhs_dma_controller_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_musb_set_mode(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_musb_board_data, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void %10(i8 noundef zeroext %1) #8
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i32 [ 0, %12 ], [ -5, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35x_musb_try_idle(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 1
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %10 = load i24, ptr %9, align 4
  %11 = and i24 %10, 4
  %12 = icmp eq i24 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 45
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %17, %7
  %26 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  %27 = tail call i32 @del_timer(ptr noundef %26) #8
  %28 = load volatile i32, ptr @jiffies, align 64
  store i32 %28, ptr @am35x_musb_try_idle.last_timer, align 4
  br label %40

29:                                               ; preds = %17, %13
  %30 = load i32, ptr @am35x_musb_try_idle.last_timer, align 4
  %31 = sub i32 %8, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22, i32 0, i32 1
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  store i32 %8, ptr @am35x_musb_try_idle.last_timer, align 4
  %38 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  %39 = tail call i32 @mod_timer(ptr noundef %38, i32 noundef %8) #8
  br label %40

40:                                               ; preds = %37, %33, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35x_musb_set_vbus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %6 = load i8, ptr %5, align 8, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 115, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @otg_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -700
  %3 = getelementptr i8, ptr %0, i32 44
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr @musb_readb, align 4
  %6 = tail call zeroext i8 %5(ptr noundef %4, i32 noundef 96) #8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %8 = getelementptr i8, ptr %0, i32 56
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %46 [
    i32 8, label %14
    i32 12, label %30
    i32 1, label %33
  ]

14:                                               ; preds = %1
  %15 = and i8 %6, -2
  %16 = load ptr, ptr @musb_writeb, align 4
  %17 = load ptr, ptr %3, align 8
  tail call void %16(ptr noundef %17, i32 noundef 96, i8 noundef zeroext %15) #8
  %18 = load ptr, ptr @musb_readb, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = tail call zeroext i8 %18(ptr noundef %19, i32 noundef 96) #8
  %21 = icmp sgt i8 %20, -1
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.usb_phy, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_otg, ptr %24, i32 0, i32 5
  br i1 %21, label %28, label %26

26:                                               ; preds = %14
  store i32 1, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 3684
  store i8 0, ptr %27, align 8
  br label %46

28:                                               ; preds = %14
  store i32 6, ptr %25, align 4
  %29 = getelementptr i8, ptr %0, i32 3684
  store i8 1, ptr %29, align 8
  br label %46

30:                                               ; preds = %1
  store i32 7, ptr %12, align 4
  %31 = getelementptr i8, ptr %0, i32 40
  %32 = load ptr, ptr %31, align 4
  tail call void @musb_writel(ptr noundef %32, i32 noundef 68, i32 noundef 8388608) #8
  br label %46

33:                                               ; preds = %1
  %34 = load ptr, ptr @musb_readb, align 4
  %35 = tail call zeroext i8 %34(ptr noundef %4, i32 noundef 96) #8
  %36 = icmp sgt i8 %35, -1
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = add i32 %38, 200
  %40 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %39) #8
  br label %46

41:                                               ; preds = %33
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.usb_phy, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_otg, ptr %44, i32 0, i32 5
  store i32 6, ptr %45, align 4
  br label %46

46:                                               ; preds = %41, %37, %30, %28, %26, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_musb_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %12 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef 56) #8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  tail call void @musb_writel(ptr noundef %4, i32 noundef 40, i32 noundef %12) #8
  %15 = lshr i32 %12, 16
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, -2
  %18 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  store i16 %17, ptr %18, align 2
  %19 = trunc i32 %12 to i16
  %20 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  store i16 %19, ptr %20, align 8
  %21 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef 88) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %81, label %26

23:                                               ; preds = %2
  %24 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef 88) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ %21, %14 ], [ %24, %23 ]
  tail call void @musb_writel(ptr noundef %4, i32 noundef 72, i32 noundef %27) #8
  %28 = lshr i32 %27, 16
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  store i8 %29, ptr %30, align 4
  %31 = and i32 %27, 16777216
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %81, label %33

33:                                               ; preds = %26
  %34 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef 8) #8
  %35 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr @musb_readb, align 4
  %38 = tail call zeroext i8 %37(ptr noundef %36, i32 noundef 96) #8
  %39 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  %40 = load i8, ptr %39, align 4
  %41 = icmp sgt i8 %40, -1
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = and i8 %40, 127
  store i8 %43, ptr %39, align 4
  %44 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_phy, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_otg, ptr %47, i32 0, i32 5
  store i32 12, ptr %48, align 4
  %49 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 22
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = add i32 %50, 200
  %52 = tail call i32 @mod_timer(ptr noundef %49, i32 noundef %51) #8
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.am35x_musb_interrupt, i32 noundef 263) #10
  br label %81

54:                                               ; preds = %33
  %55 = icmp eq i32 %34, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 44
  store i8 1, ptr %57, align 8
  %58 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.usb_phy, ptr %59, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.usb_otg, ptr %61, i32 0, i32 5
  store i32 7, ptr %62, align 4
  %63 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 13
  %64 = load i32, ptr %63, align 8
  %65 = or i32 %64, 256
  store i32 %65, ptr %63, align 8
  %66 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 22
  %67 = tail call i32 @del_timer(ptr noundef %66) #8
  br label %81

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 47
  %70 = load i24, ptr %69, align 4
  %71 = and i24 %70, -5
  store i24 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 44
  store i8 0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.usb_phy, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.usb_otg, ptr %76, i32 0, i32 5
  store i32 1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 13
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, -257
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %68, %56, %42, %26, %14
  %82 = phi i1 [ true, %26 ], [ true, %56 ], [ true, %68 ], [ true, %42 ], [ false, %14 ]
  %83 = phi i32 [ 0, %26 ], [ 1, %56 ], [ 1, %68 ], [ 1, %42 ], [ 0, %14 ]
  %84 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  %85 = load i8, ptr %84, align 4
  %86 = and i8 %85, 32
  %87 = icmp eq i8 %86, 0
  %88 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  br i1 %87, label %91, label %89

89:                                               ; preds = %81
  store i16 0, ptr %88, align 8
  %90 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  store i16 0, ptr %90, align 2
  br label %100

91:                                               ; preds = %81
  %92 = load i16, ptr %88, align 8
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, 0
  %98 = icmp eq i8 %85, 0
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %103, label %100

100:                                              ; preds = %94, %91, %89
  %101 = tail call i32 @musb_interrupt(ptr noundef %1) #8
  %102 = or i32 %101, %83
  br label %103

103:                                              ; preds = %100, %94, %23
  %104 = phi i1 [ %82, %100 ], [ false, %23 ], [ %82, %94 ]
  %105 = phi i32 [ %102, %100 ], [ 0, %23 ], [ %83, %94 ]
  %106 = icmp eq i32 %105, 1
  %107 = select i1 %106, i1 true, i1 %13
  %108 = or i1 %107, %104
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.omap_musb_board_data, ptr %10, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void %111() #8
  br label %114

114:                                              ; preds = %113, %109
  tail call void @musb_writel(ptr noundef %4, i32 noundef 96, i32 noundef 0) #8
  br label %115

115:                                              ; preds = %114, %103
  %116 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.usb_phy, ptr %117, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.usb_otg, ptr %119, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 22
  %125 = load volatile i32, ptr @jiffies, align 64
  %126 = add i32 %125, 200
  %127 = tail call i32 @mod_timer(ptr noundef %124, i32 noundef %126) #8
  br label %128

128:                                              ; preds = %123, %115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %11) #8
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void %9(i8 noundef zeroext 0) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am35x_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.omap_musb_board_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void %9(i8 noundef zeroext 1) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_enable(ptr noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.am35x_glue, ptr %3, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_enable(ptr noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ @.str.5, %12 ], [ @.str.6, %17 ]
  %24 = phi i32 [ %15, %12 ], [ %20, %17 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %23) #10
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ 0, %17 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 2002}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
