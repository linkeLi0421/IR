; ModuleID = '/llk/IR/drivers/mailbox/hi6220-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/hi6220-mailbox.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hi6220_mbox = type { ptr, i32, i8, ptr, ptr, i32, ptr, [32 x ptr], ptr, %struct.mbox_controller }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.hi6220_mbox_chan = type { i32, i32, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_hi6220_mailbox__224_363_hi6220_mbox_init1 = internal global ptr @hi6220_mbox_init, section ".initcall1.init", align 4
@hi6220_mbox_driver = internal global %struct.platform_driver { ptr @hi6220_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi6220_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hi6220_mbox_exit = internal global ptr @hi6220_mbox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author225 = internal constant [51 x i8] c"hi6220_mailbox.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [49 x i8] c"hi6220_mailbox.description=Hi6220 mailbox driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [51 x i8] c"hi6220_mailbox.file=drivers/mailbox/hi6220-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [30 x i8] c"hi6220_mailbox.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"hi6220-mbox\00", align 1
@hi6220_mbox_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-mbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ioremap ipc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ioremap buffer failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to register a mailbox IRQ handler: %d\0A\00", align 1
@hi6220_mbox_ops = internal constant %struct.mbox_chan_ops { ptr @hi6220_mbox_send_data, ptr null, ptr @hi6220_mbox_startup, ptr @hi6220_mbox_shutdown, ptr @hi6220_mbox_last_tx_done, ptr null }, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"hi6220,mbox-tx-noirq\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to register mailbox %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Mailbox enabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: spurious interrupt\0A\00", align 1
@__func__.hi6220_mbox_interrupt = private unnamed_addr constant [22 x i8] c"hi6220_mbox_interrupt\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: unexpected irq vector %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Invalid channel idx %d dst_irq %d ack_irq %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Channel in use\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_hi6220_mbox_exit, ptr @__initcall__kmod_hi6220_mailbox__224_363_hi6220_mbox_init1, ptr @hi6220_mbox_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6220_mbox_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi6220_mbox_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi6220_mbox_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 248, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %105, label %7

7:                                                ; preds = %1
  store ptr %2, ptr %5, align 8
  %8 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 5
  store i32 32, ptr %8, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 640, i32 noundef 3520) #7
  %10 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 6
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %105, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %8, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 128) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 8
  store ptr null, ptr %17, align 4
  br label %105

18:                                               ; preds = %12
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %19, i32 noundef 3520) #7
  %21 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 8
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %105, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %25 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %105, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %29 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %32 = load ptr, ptr %29, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %105

34:                                               ; preds = %27
  %35 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #7
  %36 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %39 = load ptr, ptr %36, align 8
  %40 = ptrtoint ptr %39 to i32
  br label %105

41:                                               ; preds = %34
  %42 = load i32, ptr %25, align 4
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %47, %46 ], [ %44, %41 ]
  %50 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %42, ptr noundef nonnull @hi6220_mbox_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %49, ptr noundef nonnull %5) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %50) #8
  br label %105

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9
  store ptr %2, ptr %54, align 8
  %55 = load ptr, ptr %21, align 4
  %56 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 2
  store ptr %55, ptr %56, align 8
  %57 = load i32, ptr %8, align 4
  %58 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 1
  store ptr @hi6220_mbox_ops, ptr %59, align 4
  %60 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 7
  store ptr @hi6220_mbox_xlate, ptr %60, align 8
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr %struct.mbox_chan, ptr %55, i32 0, i32 9
  store ptr %63, ptr %64, align 4
  %65 = getelementptr %struct.hi6220_mbox, ptr %5, i32 0, i32 7, i32 0
  store ptr null, ptr %65, align 4
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr %struct.hi6220_mbox_chan, ptr %66, i32 0, i32 4
  store ptr %5, ptr %67, align 4
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr %struct.hi6220_mbox_chan, ptr %68, i32 0, i32 3
  store i32 0, ptr %69, align 4
  %70 = load i32, ptr %8, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %86

72:                                               ; preds = %72, %62
  %73 = phi i32 [ %83, %72 ], [ 1, %62 ]
  %74 = load ptr, ptr %21, align 4
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr %struct.hi6220_mbox_chan, ptr %75, i32 %73
  %77 = getelementptr %struct.mbox_chan, ptr %74, i32 %73, i32 9
  store ptr %76, ptr %77, align 4
  %78 = getelementptr %struct.hi6220_mbox, ptr %5, i32 0, i32 7, i32 %73
  store ptr null, ptr %78, align 4
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr %struct.hi6220_mbox_chan, ptr %79, i32 %73, i32 4
  store ptr %5, ptr %80, align 4
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr %struct.hi6220_mbox_chan, ptr %81, i32 %73, i32 3
  store i32 %73, ptr %82, align 4
  %83 = add nuw i32 %73, 1
  %84 = load i32, ptr %8, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %72, label %86

86:                                               ; preds = %72, %62, %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %87 = load ptr, ptr %29, align 4
  %88 = getelementptr i8, ptr %87, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %29, align 4
  %90 = getelementptr i8, ptr %89, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 -1) #7, !srcloc !10
  %91 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 2
  br i1 %92, label %94, label %96

94:                                               ; preds = %86
  store i8 1, ptr %93, align 8
  %95 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 4
  store i8 1, ptr %95, align 8
  br label %99

96:                                               ; preds = %86
  store i8 0, ptr %93, align 8
  %97 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 5
  store i8 1, ptr %97, align 1
  %98 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 9, i32 6
  store i32 5, ptr %98, align 4
  br label %99

99:                                               ; preds = %96, %94
  %100 = tail call i32 @devm_mbox_controller_register(ptr noundef %2, ptr noundef %54) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %100) #8
  br label %105

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %104, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %105

105:                                              ; preds = %103, %102, %52, %38, %31, %23, %18, %16, %7, %1
  %106 = phi i32 [ %33, %31 ], [ %40, %38 ], [ -19, %52 ], [ %100, %102 ], [ 0, %103 ], [ -12, %1 ], [ -12, %7 ], [ -12, %18 ], [ %24, %23 ], [ -12, %16 ]
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !12
  %4 = getelementptr inbounds %struct.hi6220_mbox, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1032
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hi6220_mbox, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 2
  %13 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 4
  %15 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 5
  %16 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 7
  br label %20

18:                                               ; preds = %2
  %19 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hi6220_mbox_interrupt) #8
  br label %111

20:                                               ; preds = %30, %9
  %21 = phi i32 [ %7, %9 ], [ %24, %30 ]
  %22 = call i32 @llvm.cttz.i32(i32 %21, i1 true) #7, !range !15
  %23 = add i32 %21, -1
  %24 = and i32 %23, %21
  %25 = getelementptr %struct.hi6220_mbox, ptr %1, i32 0, i32 7, i32 %22
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.hi6220_mbox_interrupt, i32 noundef %22) #8
  br label %30

30:                                               ; preds = %95, %28
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %111, label %20

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.mbox_chan, ptr %26, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %94, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %34, i32 0, i32 3
  %39 = load ptr, ptr %10, align 8
  %40 = load i32, ptr %38, align 4
  %41 = shl i32 %40, 6
  %42 = or i32 %41, 4
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %44, ptr %3, align 4
  %45 = load ptr, ptr %10, align 8
  %46 = load i32, ptr %38, align 4
  %47 = shl i32 %46, 6
  %48 = or i32 %47, 4
  %49 = getelementptr i8, ptr %45, i32 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %51, ptr %11, align 4
  %52 = load ptr, ptr %10, align 8
  %53 = load i32, ptr %38, align 4
  %54 = shl i32 %53, 6
  %55 = or i32 %54, 4
  %56 = getelementptr i8, ptr %52, i32 8
  %57 = getelementptr i8, ptr %56, i32 %55
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %58, ptr %12, align 4
  %59 = load ptr, ptr %10, align 8
  %60 = load i32, ptr %38, align 4
  %61 = shl i32 %60, 6
  %62 = or i32 %61, 4
  %63 = getelementptr i8, ptr %59, i32 12
  %64 = getelementptr i8, ptr %63, i32 %62
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %65, ptr %13, align 4
  %66 = load ptr, ptr %10, align 8
  %67 = load i32, ptr %38, align 4
  %68 = shl i32 %67, 6
  %69 = or i32 %68, 4
  %70 = getelementptr i8, ptr %66, i32 16
  %71 = getelementptr i8, ptr %70, i32 %69
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %72, ptr %14, align 4
  %73 = load ptr, ptr %10, align 8
  %74 = load i32, ptr %38, align 4
  %75 = shl i32 %74, 6
  %76 = or i32 %75, 4
  %77 = getelementptr i8, ptr %73, i32 20
  %78 = getelementptr i8, ptr %77, i32 %76
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %79, ptr %15, align 4
  %80 = load ptr, ptr %10, align 8
  %81 = load i32, ptr %38, align 4
  %82 = shl i32 %81, 6
  %83 = or i32 %82, 4
  %84 = getelementptr i8, ptr %80, i32 24
  %85 = getelementptr i8, ptr %84, i32 %83
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %86, ptr %16, align 4
  %87 = load ptr, ptr %10, align 8
  %88 = load i32, ptr %38, align 4
  %89 = shl i32 %88, 6
  %90 = or i32 %89, 4
  %91 = getelementptr i8, ptr %87, i32 28
  %92 = getelementptr i8, ptr %91, i32 %90
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  store i32 %93, ptr %17, align 4
  call void @mbox_chan_received_data(ptr noundef nonnull %26, ptr noundef nonnull %3) #7
  br label %95

94:                                               ; preds = %32
  call void @mbox_chan_txdone(ptr noundef nonnull %26, i32 noundef 0) #7
  br label %95

95:                                               ; preds = %94, %37
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %96 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %34, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = shl nuw i32 1, %97
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i8, ptr %99, i32 1036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #7, !srcloc !10
  %101 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %34, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %10, align 8
  %104 = shl i32 %102, 6
  %105 = getelementptr i8, ptr %103, i32 %104
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %107 = and i32 %106, -241
  %108 = or i32 %107, 16
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  call void @arm_heavy_mb() #7
  %109 = load ptr, ptr %10, align 8
  %110 = getelementptr i8, ptr %109, i32 %104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !10
  br label %30

111:                                              ; preds = %30, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi6220_mbox_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %7, %13
  %15 = icmp ult i32 %9, %13
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ult i32 %11, %13
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %9, i32 noundef %11) #8
  br label %35

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.mbox_chan, ptr %23, i32 %7
  %25 = getelementptr %struct.hi6220_mbox, ptr %5, i32 0, i32 7, i32 %11
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %24
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10) #8
  br label %35

30:                                               ; preds = %21
  %31 = getelementptr %struct.mbox_chan, ptr %23, i32 %7, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %32, i32 0, i32 1
  store i32 %9, ptr %33, align 4
  %34 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %32, i32 0, i32 2
  store i32 %11, ptr %34, align 4
  store ptr %24, ptr %25, align 4
  br label %35

35:                                               ; preds = %30, %28, %19
  %36 = phi ptr [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -16 to ptr), %28 ], [ %24, %30 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_send_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 1, ptr %4, align 4
  %9 = getelementptr inbounds %struct.hi6220_mbox, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = shl i32 %8, 6
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %14 = and i32 %13, -241
  %15 = or i32 %14, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr i8, ptr %16, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !10
  %18 = getelementptr inbounds %struct.hi6220_mbox, ptr %6, i32 0, i32 2
  %19 = load i8, ptr %18, align 8, !range !20
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr i8, ptr %21, i32 %11
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7
  br i1 %20, label %28, label %24

24:                                               ; preds = %2
  %25 = and i32 %23, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr i8, ptr %26, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !10
  br label %32

28:                                               ; preds = %2
  %29 = or i32 %23, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr i8, ptr %30, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !10
  br label %32

32:                                               ; preds = %28, %24
  %33 = or i32 %11, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %34 = load i32, ptr %1, align 4
  %35 = load ptr, ptr %9, align 8
  %36 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %37 = getelementptr i32, ptr %1, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr i8, ptr %39, i32 %33
  %41 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %42 = getelementptr i32, ptr %1, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr i8, ptr %44, i32 %33
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %47 = getelementptr i32, ptr %1, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %9, align 8
  %50 = getelementptr i8, ptr %49, i32 %33
  %51 = getelementptr i8, ptr %50, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %52 = getelementptr i32, ptr %1, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr i8, ptr %54, i32 %33
  %56 = getelementptr i8, ptr %55, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %57 = getelementptr i32, ptr %1, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr i8, ptr %59, i32 %33
  %61 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %62 = getelementptr i32, ptr %1, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %9, align 8
  %65 = getelementptr i8, ptr %64, i32 %33
  %66 = getelementptr i8, ptr %65, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %63) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %67 = getelementptr i32, ptr %1, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr i8, ptr %69, i32 %33
  %71 = getelementptr i8, ptr %70, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %72 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %4, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = shl nuw i32 1, %73
  %75 = getelementptr inbounds %struct.hi6220_mbox, ptr %6, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_startup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  store i32 0, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi6220_mbox_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #7, !srcloc !10
  %12 = load i32, ptr %6, align 4
  %13 = getelementptr %struct.hi6220_mbox, ptr %5, i32 0, i32 7, i32 %12
  store ptr null, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @hi6220_mbox_last_tx_done(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 8, !range !20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !26

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mailbox/hi6220-mailbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hi6220_mbox, ptr %5, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 6
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %18 = and i32 %17, 240
  %19 = icmp eq i32 %18, 16
  ret i1 %19
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 2152932422}
!10 = !{i64 3701282}
!11 = !{i64 2152932773}
!12 = !{!"auto-init"}
!13 = !{i64 3701700}
!14 = !{i64 2152925329}
!15 = !{i32 0, i32 33}
!16 = !{i64 2152927033}
!17 = !{i64 2152927373}
!18 = !{i64 2152921093}
!19 = !{i64 2152921357}
!20 = !{i8 0, i8 2}
!21 = !{i64 2152922219}
!22 = !{i64 2152924237}
!23 = !{i64 2152924742}
!24 = !{i64 2152927933}
!25 = !{i64 2152928482}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2152922715, i64 2152923212, i64 2152922752, i64 2152922808, i64 2152922842, i64 2152922866, i64 2152922907, i64 2152922928, i64 2152922956, i64 2152922990}
!28 = !{i64 2152923915}
