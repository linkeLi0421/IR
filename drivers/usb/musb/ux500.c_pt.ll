; ModuleID = '/llk/IR/drivers/usb/musb/ux500.c_pt.bc'
source_filename = "../drivers/usb/musb/ux500.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ux500_glue = type { ptr, ptr, ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
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
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@ux500_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description252 = internal constant [34 x i8] c"description=UX500 MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [62 x i8] c"author=Mian Yousaf Kaukab <mian.yousaf.kaukab@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@ux500_driver = internal global %struct.platform_driver { ptr @ux500_probe, ptr @ux500_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ux500_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"musb-ux500\00", align 1
@ux500_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ux500_suspend, ptr @ux500_resume, ptr @ux500_suspend, ptr @ux500_resume, ptr @ux500_suspend, ptr @ux500_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"no pdata or device tree found\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@ux500_ops = internal constant %struct.musb_platform_ops { i32 65, ptr @ux500_musb_init, ptr @ux500_musb_exit, ptr null, ptr null, ptr null, ptr null, i16 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_dma_controller_create, ptr @ux500_dma_controller_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ux500_musb_set_vbus, ptr null, ptr null, ptr null, ptr null }, align 4
@ux500_musb_hdrc_config = internal constant %struct.musb_hdrc_config { ptr null, i32 0, i8 3, i8 16, i8 16, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"No 'dr_mode' property found\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\013HS USB OTG: no transceiver configured\0A\00", align 1
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"configured as A device timeout\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__ux500_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ux500_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ux500_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ux500_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = icmp eq ptr %7, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = call ptr @of_get_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %2) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  br label %33

18:                                               ; preds = %14
  %19 = load i32, ptr %2, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = call i32 @strcmp(ptr noundef nonnull %15, ptr noundef nonnull dereferenceable(5) @.str.11) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8 1, ptr %12, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = call i32 @strcmp(ptr noundef nonnull %15, ptr noundef nonnull dereferenceable(4) @.str.12) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8 3, ptr %12, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = call i32 @strcmp(ptr noundef nonnull %15, ptr noundef nonnull dereferenceable(11) @.str.13) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  store i8 2, ptr %12, align 4
  br label %34

33:                                               ; preds = %17, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %87

34:                                               ; preds = %32, %29, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  store ptr %12, ptr %4, align 4
  br label %36

35:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %87

36:                                               ; preds = %34, %1
  %37 = phi ptr [ %5, %1 ], [ %12, %34 ]
  %38 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %87, label %40

40:                                               ; preds = %36
  %41 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef -2) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %87

44:                                               ; preds = %40
  %45 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %48 = ptrtoint ptr %45 to i32
  br label %85

49:                                               ; preds = %44
  %50 = call i32 @clk_prepare(ptr noundef %45) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = call i32 @clk_enable(ptr noundef %45) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  call void @clk_unprepare(ptr noundef %45) #6
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ %53, %55 ], [ %50, %49 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %85

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %60 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3, i32 1
  store ptr %3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %62 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3, i32 16
  store ptr %61, ptr %62, align 4
  %63 = load i64, ptr %61, align 8
  %64 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3, i32 17
  store i64 %63, ptr %64, align 8
  call void @device_set_of_node_from_dev(ptr noundef %59, ptr noundef %3) #6
  store ptr %3, ptr %38, align 4
  %65 = getelementptr inbounds %struct.ux500_glue, ptr %38, i32 0, i32 1
  store ptr %41, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ux500_glue, ptr %38, i32 0, i32 2
  store ptr %45, ptr %66, align 4
  %67 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %37, i32 0, i32 10
  store ptr @ux500_ops, ptr %67, align 4
  %68 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %37, i32 0, i32 8
  store ptr @ux500_musb_hdrc_config, ptr %68, align 4
  %69 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %38, ptr %69, align 8
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @platform_device_add_resources(ptr noundef nonnull %41, ptr noundef %71, i32 noundef %73) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %58
  %77 = call i32 @platform_device_add_data(ptr noundef nonnull %41, ptr noundef nonnull %37, i32 noundef 32) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = call i32 @platform_device_add(ptr noundef nonnull %41) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79, %76, %58
  %83 = phi ptr [ @.str.6, %58 ], [ @.str.7, %76 ], [ @.str.8, %79 ]
  %84 = phi i32 [ %74, %58 ], [ %77, %76 ], [ %80, %79 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %83) #7
  call void @clk_disable(ptr noundef %45) #6
  call void @clk_unprepare(ptr noundef %45) #6
  br label %85

85:                                               ; preds = %82, %56, %47
  %86 = phi i32 [ %48, %47 ], [ %57, %56 ], [ %84, %82 ]
  call void @platform_device_put(ptr noundef nonnull %41) #6
  br label %87

87:                                               ; preds = %85, %79, %43, %36, %35, %33
  %88 = phi i32 [ 0, %79 ], [ %86, %85 ], [ -12, %43 ], [ -12, %36 ], [ -12, %33 ], [ -12, %35 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ux500_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.ux500_glue, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_musb_init(ptr noundef %0) #2 {
  %2 = tail call ptr @usb_get_phy(i32 noundef 1) #6
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  store ptr %2, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  br label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 23
  store ptr @musb_otg_notifications, ptr %10, align 8
  %11 = getelementptr inbounds %struct.usb_phy, ptr %2, i32 0, i32 18
  %12 = tail call i32 @atomic_notifier_chain_register(ptr noundef %11, ptr noundef %10) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 5
  store ptr @ux500_musb_interrupt, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %9, %7
  %17 = phi i32 [ -517, %7 ], [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_musb_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 23
  %5 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %6 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %5, ptr noundef %4) #6
  %7 = load ptr, ptr %2, align 4
  tail call void @usb_put_phy(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ux500_dma_controller_create(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ux500_dma_controller_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ux500_musb_set_vbus(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 100
  %5 = load ptr, ptr @musb_readb, align 4
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i8 %5(ptr noundef %7, i32 noundef 96) #6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %34

18:                                               ; preds = %10
  %19 = or i8 %8, 1
  %20 = load ptr, ptr @musb_writeb, align 4
  %21 = load ptr, ptr %6, align 8
  tail call void %20(ptr noundef %21, i32 noundef 96, i8 noundef zeroext %19) #6
  br label %22

22:                                               ; preds = %27, %18
  %23 = load ptr, ptr @musb_readb, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = tail call zeroext i8 %23(ptr noundef %24, i32 noundef 96) #6
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %55, label %27

27:                                               ; preds = %22
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = sub i32 %4, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %22

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15) #7
  br label %55

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %36 = load i24, ptr %35, align 4
  %37 = or i24 %36, 4
  store i24 %37, ptr %35, align 4
  %38 = load ptr, ptr %13, align 4
  %39 = getelementptr inbounds %struct.usb_otg, ptr %38, i32 0, i32 5
  store i32 7, ptr %39, align 4
  %40 = or i8 %8, 1
  %41 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %41, align 8
  br label %55

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %44 = load i24, ptr %43, align 4
  %45 = and i24 %44, -5
  store i24 %45, ptr %43, align 4
  %46 = and i8 %8, -2
  %47 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 0, ptr %47, align 8
  %48 = load ptr, ptr @musb_writeb, align 4
  %49 = load ptr, ptr %6, align 8
  tail call void %48(ptr noundef %49, i32 noundef 96, i8 noundef zeroext %46) #6
  br label %50

50:                                               ; preds = %50, %42
  %51 = phi i32 [ 200, %42 ], [ %52, %50 ]
  %52 = add nsw i32 %51, -1
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %59, label %50

55:                                               ; preds = %34, %31, %22
  %56 = phi i8 [ %40, %34 ], [ %19, %31 ], [ %19, %22 ]
  %57 = load ptr, ptr @musb_writeb, align 4
  %58 = load ptr, ptr %6, align 8
  tail call void %57(ptr noundef %58, i32 noundef 96, i8 noundef zeroext %56) #6
  br label %59

59:                                               ; preds = %55, %50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_otg_notifications(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  switch i32 %1, label %74 [
    i32 2, label %4
    i32 1, label %73
    i32 0, label %46
  ]

4:                                                ; preds = %3
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 100
  %7 = load ptr, ptr @musb_readb, align 4
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load ptr, ptr %8, align 8
  %10 = tail call zeroext i8 %7(ptr noundef %9, i32 noundef 96) #6
  %11 = getelementptr i8, ptr %0, i32 36
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = or i8 %10, 1
  %20 = load ptr, ptr @musb_writeb, align 4
  %21 = load ptr, ptr %8, align 8
  tail call void %20(ptr noundef %21, i32 noundef 96, i8 noundef zeroext %19) #6
  br label %22

22:                                               ; preds = %27, %18
  %23 = load ptr, ptr @musb_readb, align 4
  %24 = load ptr, ptr %8, align 8
  %25 = tail call zeroext i8 %23(ptr noundef %24, i32 noundef 96) #6
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = sub i32 %6, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %22

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 16
  %33 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15) #7
  br label %42

34:                                               ; preds = %4
  %35 = getelementptr i8, ptr %0, i32 3676
  %36 = load i24, ptr %35, align 4
  %37 = or i24 %36, 4
  store i24 %37, ptr %35, align 4
  %38 = load ptr, ptr %13, align 4
  %39 = getelementptr inbounds %struct.usb_otg, ptr %38, i32 0, i32 5
  store i32 7, ptr %39, align 4
  %40 = or i8 %10, 1
  %41 = getelementptr i8, ptr %0, i32 3664
  store i8 1, ptr %41, align 8
  br label %42

42:                                               ; preds = %34, %31, %22
  %43 = phi i8 [ %40, %34 ], [ %19, %31 ], [ %19, %22 ]
  %44 = load ptr, ptr @musb_writeb, align 4
  %45 = load ptr, ptr %8, align 8
  tail call void %44(ptr noundef %45, i32 noundef 96, i8 noundef zeroext %43) #6
  br label %73

46:                                               ; preds = %3
  %47 = getelementptr i8, ptr %0, i32 3664
  %48 = load i8, ptr %47, align 8, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = load ptr, ptr @musb_readb, align 4
  %53 = getelementptr i8, ptr %0, i32 24
  %54 = load ptr, ptr %53, align 8
  %55 = tail call zeroext i8 %52(ptr noundef %54, i32 noundef 96) #6
  %56 = getelementptr i8, ptr %0, i32 3676
  %57 = load i24, ptr %56, align 4
  %58 = and i24 %57, -5
  store i24 %58, ptr %56, align 4
  %59 = and i8 %55, -2
  store i8 0, ptr %47, align 8
  %60 = load ptr, ptr @musb_writeb, align 4
  %61 = load ptr, ptr %53, align 8
  tail call void %60(ptr noundef %61, i32 noundef 96, i8 noundef zeroext %59) #6
  br label %62

62:                                               ; preds = %62, %50
  %63 = phi i32 [ 200, %50 ], [ %64, %62 ]
  %64 = add nsw i32 %63, -1
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #6
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %73, label %62

67:                                               ; preds = %46
  %68 = getelementptr i8, ptr %0, i32 36
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.usb_phy, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_otg, ptr %71, i32 0, i32 5
  store i32 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %67, %62, %42, %3
  br label %74

74:                                               ; preds = %73, %3
  %75 = phi i32 [ 1, %73 ], [ 0, %3 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_musb_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 10) #6
  %8 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  store i8 %7, ptr %8, align 4
  %9 = load ptr, ptr @musb_readw, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = tail call zeroext i16 %9(ptr noundef %10, i32 noundef 2) #6
  %12 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  store i16 %11, ptr %12, align 8
  %13 = load ptr, ptr @musb_readw, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = tail call zeroext i16 %13(ptr noundef %14, i32 noundef 4) #6
  %16 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  store i16 %15, ptr %16, align 2
  %17 = load i8, ptr %8, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i16, ptr %12, align 8
  %21 = icmp eq i16 %20, 0
  %22 = icmp eq i16 %15, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %2
  %25 = tail call i32 @musb_interrupt(ptr noundef %1) #6
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #6
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ux500_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef nonnull %11, i32 noundef 1) #6
  br label %19

19:                                               ; preds = %17, %13, %9, %1
  %20 = getelementptr inbounds %struct.ux500_glue, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ux500_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ux500_glue, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = phi i32 [ %13, %15 ], [ %10, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  br label %30

18:                                               ; preds = %12
  %19 = icmp eq ptr %7, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 31
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_phy, ptr %22, i32 0, i32 26
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef nonnull %22, i32 noundef 0) #6
  br label %30

30:                                               ; preds = %28, %24, %20, %18, %16
  %31 = phi i32 [ %17, %16 ], [ 0, %18 ], [ 0, %20 ], [ 0, %24 ], [ 0, %28 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
