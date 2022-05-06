; ModuleID = '/llk/IR/drivers/mailbox/mailbox-sti.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox-sti.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sti_mbox_pdata = type { i32, i32 }
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
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sti_mbox_device = type { ptr, ptr, ptr, ptr, [4 x i32], %struct.spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.sti_channel = type { ptr, i32, i32 }

@sti_mailbox_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mbox_stih407_pdata }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license170 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [50 x i8] c"description=STMicroelectronics Mailbox Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [39 x i8] c"author=Lee Jones <lee.jones@linaro.org\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [27 x i8] c"alias=platform:mailbox-sti\00", section ".modinfo", align 1
@mbox_stih407_pdata = internal constant %struct.sti_mbox_pdata { i32 4, i32 32 }, align 4
@sti_mbox_driver = internal global %struct.platform_driver { ptr @sti_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_mailbox_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"sti-mailbox\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No configuration found\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mbox-name\00", align 1
@sti_mbox_ops = internal constant %struct.mbox_chan_ops { ptr @sti_mbox_send_data, ptr null, ptr @sti_mbox_startup_chan, ptr @sti_mbox_shutdown_chan, ptr @sti_mbox_tx_is_ready, ptr null }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: Registered Tx only Mailbox\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Can't claim IRQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: Registered Tx/Rx Mailbox\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Request to free non-existent channel\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Invalid channel requested instance: %d channel: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Channel in use\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"No free channels left\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Mbox: %s: Created channel: instance: %d channel: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Unexpected IRQ: %s\0A  instance: %d: channel: %d [enabled: %x]\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Spurious IRQ - was a channel requested?\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Channel not registered: instance: %d channel: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license170], section "llvm.metadata"

@__mod_of__sti_mailbox_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sti_mailbox_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_mbox_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_mbox_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_mbox_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @sti_mailbox_match, ptr noundef %2) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %57

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %10, ptr %11, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 36, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %15, align 8
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %17 = getelementptr inbounds %struct.sti_mbox_device, ptr %12, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i32
  br label %57

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.sti_mbox_device, ptr %12, i32 0, i32 3
  %23 = tail call i32 @of_property_read_string(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %22, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 88, i32 noundef 3520) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 2560, i32 noundef 3520) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %31
  store ptr %2, ptr %12, align 4
  %35 = getelementptr inbounds %struct.sti_mbox_device, ptr %12, i32 0, i32 1
  store ptr %29, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sti_mbox_device, ptr %12, i32 0, i32 5
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 4
  store i8 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 5
  store i8 1, ptr %38, align 1
  %39 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 6
  store i32 100, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 1
  store ptr @sti_mbox_ops, ptr %40, align 4
  store ptr %2, ptr %29, align 8
  %41 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 7
  store ptr @sti_mbox_xlate, ptr %41, align 8
  %42 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 2
  store ptr %32, ptr %42, align 8
  %43 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 3
  store i32 20, ptr %43, align 4
  %44 = tail call i32 @devm_mbox_controller_register(ptr noundef %2, ptr noundef nonnull %29) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  %47 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %48 = icmp slt i32 %47, 0
  %49 = load ptr, ptr %22, align 4
  br i1 %48, label %50, label %51

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %49) #6
  br label %57

51:                                               ; preds = %46
  %52 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %47, ptr noundef nonnull @sti_mbox_irq_handler, ptr noundef nonnull @sti_mbox_thread_handler, i32 noundef 8192, ptr noundef %49, ptr noundef nonnull %12) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %47) #6
  br label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %56) #6
  br label %57

57:                                               ; preds = %55, %54, %50, %34, %31, %28, %19, %8, %7
  %58 = phi i32 [ %20, %19 ], [ 0, %50 ], [ -22, %54 ], [ 0, %55 ], [ -19, %7 ], [ -12, %8 ], [ -12, %28 ], [ -12, %31 ], [ %44, %34 ]
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sti_mbox_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %8, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sti_mbox_pdata, ptr %8, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  br label %27

26:                                               ; preds = %15, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %12) #6
  br label %67

27:                                               ; preds = %50, %23
  %28 = phi i32 [ 0, %23 ], [ %52, %50 ]
  %29 = phi ptr [ null, %23 ], [ %51, %50 ]
  %30 = getelementptr %struct.mbox_chan, ptr %25, i32 %28, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %31, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %3, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sti_channel, ptr %31, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %10, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sti_channel, ptr %31, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %12, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %67

46:                                               ; preds = %27
  %47 = icmp eq ptr %29, null
  %48 = getelementptr %struct.mbox_chan, ptr %25, i32 %28
  %49 = select i1 %47, ptr %48, ptr %29
  br label %50

50:                                               ; preds = %46, %41, %37, %33
  %51 = phi ptr [ %29, %41 ], [ %29, %37 ], [ %29, %33 ], [ %49, %46 ]
  %52 = add nuw nsw i32 %28, 1
  %53 = icmp eq i32 %52, %21
  br i1 %53, label %54, label %27

54:                                               ; preds = %50
  %55 = icmp eq ptr %51, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %54, %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  br label %67

57:                                               ; preds = %54
  %58 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  store ptr %5, ptr %58, align 4
  %61 = getelementptr inbounds %struct.sti_channel, ptr %58, i32 0, i32 1
  store i32 %10, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sti_channel, ptr %58, i32 0, i32 2
  store i32 %12, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mbox_chan, ptr %51, i32 0, i32 9
  store ptr %58, ptr %63, align 4
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr inbounds %struct.sti_mbox_device, ptr %5, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.10, ptr noundef %66, i32 noundef %10, i32 noundef %12) #6
  br label %67

67:                                               ; preds = %60, %57, %56, %45, %26
  %68 = phi ptr [ inttoptr (i32 -22 to ptr), %26 ], [ inttoptr (i32 -16 to ptr), %45 ], [ %51, %60 ], [ inttoptr (i32 -16 to ptr), %56 ], [ inttoptr (i32 -12 to ptr), %57 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_mbox_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sti_mbox_device, ptr %1, i32 0, i32 3
  br label %10

10:                                               ; preds = %46, %8
  %11 = phi i32 [ 0, %8 ], [ %47, %46 ]
  %12 = phi i32 [ 0, %8 ], [ %48, %46 ]
  %13 = tail call fastcc ptr @sti_mbox_irq_to_channel(ptr noundef %1, i32 noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mbox_chan, ptr %13, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sti_channel, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sti_channel, ptr %17, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.sti_mbox_device, ptr %18, i32 0, i32 4, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 1, %22
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  %29 = load ptr, ptr %1, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr %struct.sti_mbox_device, ptr %1, i32 0, i32 4, i32 %12
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.11, ptr noundef %30, i32 noundef %20, i32 noundef %22, i32 noundef %32) #6
  %33 = icmp eq i32 %11, 0
  %34 = select i1 %33, i32 1, i32 %11
  br label %46

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.sti_mbox_device, ptr %18, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = shl i32 %20, 2
  %39 = getelementptr i8, ptr %37, i32 164
  %40 = getelementptr inbounds %struct.sti_mbox_device, ptr %18, i32 0, i32 5
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #5
  %42 = xor i32 %25, -1
  %43 = load i32, ptr %23, align 4
  %44 = and i32 %43, %42
  store i32 %44, ptr %23, align 4
  %45 = getelementptr i8, ptr %39, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %25) #5, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #5
  br label %46

46:                                               ; preds = %35, %28, %10
  %47 = phi i32 [ 2, %35 ], [ %34, %28 ], [ %11, %10 ]
  %48 = add nuw i32 %12, 1
  %49 = load i32, ptr %5, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %10, label %51

51:                                               ; preds = %46
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %51, %2
  %54 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.12) #6
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ 0, %53 ], [ %47, %51 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_mbox_thread_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %50, label %8

8:                                                ; preds = %46, %2
  %9 = phi i32 [ %47, %46 ], [ 0, %2 ]
  %10 = tail call fastcc ptr @sti_mbox_irq_to_channel(ptr noundef %1, i32 noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %44, %12 ], [ %10, %8 ]
  tail call void @mbox_chan_received_data(ptr noundef nonnull %13, ptr noundef null) #5
  %14 = getelementptr inbounds %struct.mbox_chan, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sti_channel, ptr %15, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sti_channel, ptr %15, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sti_mbox_device, ptr %16, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = shl i32 %18, 2
  %24 = getelementptr i8, ptr %22, i32 68
  %25 = shl nuw i32 1, %20
  %26 = getelementptr i8, ptr %24, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #5, !srcloc !8
  %27 = load ptr, ptr %14, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sti_channel, ptr %27, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sti_channel, ptr %27, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sti_mbox_device, ptr %28, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = shl i32 %30, 2
  %36 = getelementptr i8, ptr %34, i32 132
  %37 = getelementptr inbounds %struct.sti_mbox_device, ptr %28, i32 0, i32 5
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #5
  %39 = shl nuw i32 1, %32
  %40 = getelementptr %struct.sti_mbox_device, ptr %28, i32 0, i32 4, i32 %30
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 4
  %43 = getelementptr i8, ptr %36, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #5, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #5
  %44 = tail call fastcc ptr @sti_mbox_irq_to_channel(ptr noundef %1, i32 noundef %9)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %12

46:                                               ; preds = %12, %8
  %47 = add nuw i32 %9, 1
  %48 = load i32, ptr %5, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %8, label %50

50:                                               ; preds = %46, %2
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_mbox_send_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sti_channel, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sti_channel, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sti_mbox_device, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %7, 2
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = shl nuw i32 1, %9
  %15 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_mbox_startup_chan(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sti_channel, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sti_channel, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_mbox_device, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %6, 2
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = shl nuw i32 1, %8
  %14 = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #5, !srcloc !8
  %15 = load ptr, ptr %2, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sti_channel, ptr %15, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sti_channel, ptr %15, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sti_mbox_device, ptr %16, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = shl i32 %18, 2
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr inbounds %struct.sti_mbox_device, ptr %16, i32 0, i32 5
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #5
  %27 = shl nuw i32 1, %20
  %28 = getelementptr %struct.sti_mbox_device, ptr %16, i32 0, i32 4, i32 %18
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, ptr %28, align 4
  %31 = getelementptr i8, ptr %24, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #5, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_mbox_shutdown_chan(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sti_mbox_device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mbox_controller, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mbox_controller, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %15 = getelementptr %struct.mbox_chan, ptr %12, i32 %14
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %14, 1
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %23, label %13

20:                                               ; preds = %13, %1
  %21 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %22 = icmp eq i32 %8, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.6) #6
  br label %54

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sti_channel, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sti_channel, ptr %3, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sti_mbox_device, ptr %4, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = shl i32 %27, 2
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.sti_mbox_device, ptr %4, i32 0, i32 5
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #5
  %36 = shl nuw i32 1, %29
  %37 = xor i32 %36, -1
  %38 = getelementptr %struct.sti_mbox_device, ptr %4, i32 0, i32 4, i32 %27
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %37
  store i32 %40, ptr %38, align 4
  %41 = getelementptr i8, ptr %33, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %36) #5, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #5
  %42 = load ptr, ptr %2, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sti_channel, ptr %42, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sti_channel, ptr %42, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sti_mbox_device, ptr %43, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = shl i32 %45, 2
  %51 = getelementptr i8, ptr %49, i32 %50
  %52 = shl nuw i32 1, %47
  %53 = getelementptr i8, ptr %51, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #5, !srcloc !8
  store ptr null, ptr %2, align 4
  br label %54

54:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sti_mbox_tx_is_ready(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sti_channel, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sti_channel, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_mbox_device, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %6, 2
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !9
  %15 = shl nuw i32 1, %8
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %12, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !9
  %21 = and i32 %20, %15
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %1
  %24 = phi i1 [ false, %1 ], [ %22, %18 ]
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sti_mbox_irq_to_channel(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sti_mbox_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %6 = getelementptr inbounds %struct.sti_mbox_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 2
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  store i32 %11, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 2
  br label %16

16:                                               ; preds = %46, %13
  %17 = phi i32 [ 0, %13 ], [ %47, %46 ]
  %18 = call i32 @_test_and_clear_bit(i32 noundef %17, ptr noundef nonnull %3) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %14, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load ptr, ptr %15, align 8
  br label %25

25:                                               ; preds = %38, %23
  %26 = phi i32 [ 0, %23 ], [ %39, %38 ]
  %27 = getelementptr %struct.mbox_chan, ptr %24, i32 %26, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sti_channel, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sti_channel, ptr %28, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %17
  br i1 %37, label %43, label %38

38:                                               ; preds = %34, %30, %25
  %39 = add nuw nsw i32 %26, 1
  %40 = icmp eq i32 %39, %21
  br i1 %40, label %41, label %25

41:                                               ; preds = %38, %20
  %42 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef %17) #6
  br label %46

43:                                               ; preds = %34
  %44 = getelementptr %struct.mbox_chan, ptr %24, i32 %26
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %41, %16
  %47 = add i32 %17, 1
  %48 = load i32, ptr %3, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %16

50:                                               ; preds = %46, %43, %2
  %51 = phi ptr [ null, %2 ], [ %44, %43 ], [ null, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3061053}
!9 = !{i64 3061471}
