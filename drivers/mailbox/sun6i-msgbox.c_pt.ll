; ModuleID = '/llk/IR/drivers/mailbox/sun6i-msgbox.c_pt.bc'
source_filename = "../drivers/mailbox/sun6i-msgbox.c"
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
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.sun6i_msgbox = type { %struct.mbox_controller, ptr, %struct.spinlock, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }

@__initcall__kmod_sun6i_msgbox__170_315_sun6i_msgbox_driver_init6 = internal global ptr @sun6i_msgbox_driver_init, section ".initcall6.init", align 4
@sun6i_msgbox_driver = internal global %struct.platform_driver { ptr @sun6i_msgbox_probe, ptr @sun6i_msgbox_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_msgbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun6i_msgbox_driver_exit = internal global ptr @sun6i_msgbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [57 x i8] c"sun6i_msgbox.author=Samuel Holland <samuel@sholland.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [72 x i8] c"sun6i_msgbox.description=Allwinner sun6i/sun8i/sun9i/sun50i Message Box\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [47 x i8] c"sun6i_msgbox.file=drivers/mailbox/sun6i-msgbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"sun6i_msgbox.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"sun6i-msgbox\00", align 1
@sun6i_msgbox_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-msgbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to get reset control: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to deassert reset: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to map MMIO resource: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to register IRQ handler: %d\0A\00", align 1
@sun6i_msgbox_chan_ops = internal constant %struct.mbox_chan_ops { ptr @sun6i_msgbox_send_data, ptr null, ptr @sun6i_msgbox_startup, ptr @sun6i_msgbox_shutdown, ptr @sun6i_msgbox_last_tx_done, ptr @sun6i_msgbox_peek_data }, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register controller: %d\0A\00", align 1
@sun6i_msgbox_send_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"drivers/mailbox/sun6i-msgbox.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_sun6i_msgbox_driver_exit, ptr @__initcall__kmod_sun6i_msgbox__170_315_sun6i_msgbox_driver_init6, ptr @sun6i_msgbox_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_msgbox_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_msgbox_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_msgbox_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 104, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1024, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %5
  %9 = getelementptr %struct.mbox_chan, ptr %6, i32 0, i32 9
  store ptr %3, ptr %9, align 4
  %10 = getelementptr %struct.mbox_chan, ptr %6, i32 1, i32 9
  store ptr %3, ptr %10, align 4
  %11 = getelementptr %struct.mbox_chan, ptr %6, i32 2, i32 9
  store ptr %3, ptr %11, align 4
  %12 = getelementptr %struct.mbox_chan, ptr %6, i32 3, i32 9
  store ptr %3, ptr %12, align 4
  %13 = getelementptr %struct.mbox_chan, ptr %6, i32 4, i32 9
  store ptr %3, ptr %13, align 4
  %14 = getelementptr %struct.mbox_chan, ptr %6, i32 5, i32 9
  store ptr %3, ptr %14, align 4
  %15 = getelementptr %struct.mbox_chan, ptr %6, i32 6, i32 9
  store ptr %3, ptr %15, align 4
  %16 = getelementptr %struct.mbox_chan, ptr %6, i32 7, i32 9
  store ptr %3, ptr %16, align 4
  %17 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %18 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = ptrtoint ptr %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %21) #6
  br label %77

22:                                               ; preds = %8
  %23 = tail call i32 @clk_prepare(ptr noundef %17) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef %17) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %26, %28 ], [ %23, %22 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %30) #6
  br label %77

31:                                               ; preds = %25
  %32 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %35) #6
  br label %74

36:                                               ; preds = %31
  %37 = tail call i32 @reset_control_deassert(ptr noundef %32) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %37) #6
  br label %74

40:                                               ; preds = %36
  %41 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %42 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 3
  store ptr %41, ptr %42, align 8
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %45) #6
  br label %74

46:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %47 = load ptr, ptr %42, align 8
  %48 = getelementptr i8, ptr %47, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #5, !srcloc !9
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @irq_of_parse_and_map(ptr noundef %50, i32 noundef 0) #5
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load ptr, ptr %2, align 4
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi ptr [ %56, %55 ], [ %53, %46 ]
  %59 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %51, ptr noundef nonnull @sun6i_msgbox_irq, ptr noundef null, i32 noundef 0, ptr noundef %58, ptr noundef nonnull %3) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %59) #6
  br label %74

62:                                               ; preds = %57
  store ptr %2, ptr %3, align 8
  %63 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 1
  store ptr @sun6i_msgbox_chan_ops, ptr %63, align 4
  %64 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 2
  store ptr %6, ptr %64, align 8
  %65 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 3
  store i32 8, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 4
  store i8 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 5
  store i8 1, ptr %67, align 1
  %68 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 6
  store i32 5, ptr %68, align 4
  %69 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 2
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %70, align 8
  %71 = tail call i32 @mbox_controller_register(ptr noundef nonnull %3) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %71) #6
  br label %74

74:                                               ; preds = %73, %61, %44, %39, %34
  %75 = phi i32 [ %35, %34 ], [ %37, %39 ], [ %45, %44 ], [ %59, %61 ], [ %71, %73 ]
  %76 = load ptr, ptr %18, align 8
  tail call void @clk_disable(ptr noundef %76) #5
  tail call void @clk_unprepare(ptr noundef %76) #5
  br label %77

77:                                               ; preds = %74, %62, %29, %20, %5, %1
  %78 = phi i32 [ %21, %20 ], [ %30, %29 ], [ %75, %74 ], [ -12, %1 ], [ -12, %5 ], [ 0, %62 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mbox_controller_unregister(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr i8, ptr %8, i32 112
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %11 = and i32 %10, %7
  %12 = and i32 %11, 21845
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %68, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 2
  br label %16

16:                                               ; preds = %65, %14
  %17 = phi i32 [ 0, %14 ], [ %66, %65 ]
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr %struct.mbox_chan, ptr %18, i32 %17
  %20 = shl nuw i32 %17, 1
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %16
  %25 = getelementptr %struct.mbox_chan, ptr %18, i32 %17, i32 9
  %26 = ptrtoint ptr %19 to i32
  %27 = load ptr, ptr %25, align 4
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.mbox_controller, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i32
  %32 = sub i32 %26, %31
  %33 = getelementptr inbounds %struct.sun6i_msgbox, ptr %27, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = ashr exact i32 %32, 5
  %36 = add nsw i32 %35, 320
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %24
  %42 = shl i32 %17, 2
  %43 = add nuw nsw i32 %42, 384
  br label %44

44:                                               ; preds = %44, %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !14
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr i8, ptr %45, i32 %43
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  store i32 %47, ptr %3, align 4
  call void @mbox_chan_received_data(ptr noundef %19, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %48 = load ptr, ptr %25, align 4
  %49 = load ptr, ptr %19, align 4
  %50 = getelementptr inbounds %struct.mbox_controller, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %26, %52
  %54 = getelementptr inbounds %struct.sun6i_msgbox, ptr %48, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = ashr exact i32 %53, 5
  %57 = add nsw i32 %56, 320
  %58 = getelementptr i8, ptr %55, i32 %57
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %60 = and i32 %59, 7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %44

62:                                               ; preds = %44, %24
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  call void @arm_heavy_mb() #5
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr i8, ptr %63, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %21) #5, !srcloc !9
  br label %65

65:                                               ; preds = %62, %16
  %66 = add nuw nsw i32 %17, 1
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %68, label %16

68:                                               ; preds = %65, %2
  %69 = phi i32 [ 0, %2 ], [ 1, %65 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sun6i_msgbox_peek_data(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mbox_controller, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = ashr exact i32 %9, 5
  %13 = add nsw i32 %12, 320
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %16 = and i32 %15, 7
  %17 = icmp ne i32 %16, 0
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_send_data(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 7
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr inbounds %struct.sun6i_msgbox, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = freeze i32 %11
  %16 = sdiv i32 %15, 4
  %17 = shl nsw i32 %16, 2
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %20 = mul i32 %16, 4
  %21 = sub i32 %15, %20
  %22 = shl nsw i32 %21, 3
  %23 = or i32 %22, 4
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %19
  %26 = icmp eq i32 %25, 0
  %27 = load i1, ptr @sun6i_msgbox_send_data.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !18

30:                                               ; preds = %2
  store i1 true, ptr @sun6i_msgbox_send_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 106, i32 noundef 9, ptr noundef null) #5
  br label %31

31:                                               ; preds = %30, %2
  br i1 %26, label %37, label %32

32:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %33 = load ptr, ptr %13, align 8
  %34 = ashr exact i32 %10, 5
  %35 = add nsw i32 %34, 384
  %36 = getelementptr i8, ptr %33, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %12) #5, !srcloc !9
  br label %37

37:                                               ; preds = %32, %31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mbox_controller, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = ashr exact i32 %9, 7
  %11 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = freeze i32 %10
  %14 = sdiv i32 %13, 4
  %15 = shl nsw i32 %14, 2
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %18 = mul i32 %14, 4
  %19 = sub i32 %13, %18
  %20 = shl nsw i32 %19, 3
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %2, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.mbox_controller, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = sub i32 %7, %29
  %31 = getelementptr inbounds %struct.sun6i_msgbox, ptr %25, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = ashr exact i32 %30, 5
  %34 = add nsw i32 %33, 320
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %37 = and i32 %36, 7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %24
  %40 = ashr exact i32 %9, 5
  %41 = add nsw i32 %40, 384
  br label %42

42:                                               ; preds = %42, %39
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %46 = load ptr, ptr %2, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.mbox_controller, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = ptrtoint ptr %49 to i32
  %51 = sub i32 %7, %50
  %52 = getelementptr inbounds %struct.sun6i_msgbox, ptr %46, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = ashr exact i32 %51, 5
  %55 = add nsw i32 %54, 320
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %58 = and i32 %57, 7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %42

60:                                               ; preds = %42, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %61 = ashr exact i32 %9, 6
  %62 = shl nuw i32 1, %61
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr i8, ptr %63, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #5, !srcloc !9
  %65 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %65) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr i8, ptr %66, i32 96
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %69 = or i32 %68, %62
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr i8, ptr %70, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #5, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !25
  %72 = load i16, ptr %65, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  br label %74

74:                                               ; preds = %60, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_msgbox_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mbox_controller, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = ashr exact i32 %9, 7
  %11 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = freeze i32 %10
  %14 = sdiv i32 %13, 4
  %15 = shl nsw i32 %14, 2
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %18 = mul i32 %14, 4
  %19 = sub i32 %13, %18
  %20 = shl nsw i32 %19, 3
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %80, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %25) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr i8, ptr %26, i32 96
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %29 = ashr exact i32 %9, 6
  %30 = shl nuw i32 1, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr i8, ptr %33, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !25
  %35 = load i16, ptr %25, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %37 = ashr exact i32 %9, 5
  %38 = add nsw i32 %37, 384
  br label %39

39:                                               ; preds = %72, %24
  %40 = load ptr, ptr %2, align 4
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.mbox_controller, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = sub i32 %7, %44
  %46 = getelementptr inbounds %struct.sun6i_msgbox, ptr %40, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = ashr exact i32 %45, 5
  %49 = add nsw i32 %48, 320
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %52 = and i32 %51, 7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %54, %39
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr i8, ptr %55, i32 %38
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !32
  %58 = load ptr, ptr %2, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.mbox_controller, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %61 to i32
  %63 = sub i32 %7, %62
  %64 = getelementptr inbounds %struct.sun6i_msgbox, ptr %58, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = ashr exact i32 %63, 5
  %67 = add nsw i32 %66, 320
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %70 = and i32 %69, 7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %54

72:                                               ; preds = %54, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr i8, ptr %73, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %30) #5, !srcloc !9
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr i8, ptr %75, i32 112
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !34
  %78 = and i32 %77, %30
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %39

80:                                               ; preds = %72, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sun6i_msgbox_last_tx_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mbox_controller, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = getelementptr inbounds %struct.sun6i_msgbox, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %14 = ashr exact i32 %9, 6
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_controller_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2151754049}
!9 = !{i64 3732460}
!10 = !{i64 3732878}
!11 = !{i64 2151731933}
!12 = !{i64 2151732280}
!13 = !{i64 2151745842}
!14 = !{!"auto-init"}
!15 = !{i64 2151732806}
!16 = !{i64 2151733878}
!17 = !{i64 2151735408}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2151736343}
!20 = !{i64 2151737633}
!21 = !{i64 2151738162}
!22 = !{i64 2151738498}
!23 = !{i64 2151739564}
!24 = !{i64 2151740083}
!25 = !{i64 2148886055}
!26 = !{i64 2148881879}
!27 = !{i64 2148881954, i64 2148881981, i64 2148882028, i64 2148882050, i64 2148882078, i64 2148882098}
!28 = !{i64 2148909058}
!29 = !{i64 2151741290}
!30 = !{i64 2151742273}
!31 = !{i64 2151742794}
!32 = !{i64 2151743251}
!33 = !{i64 2151743587}
!34 = !{i64 2151744137}
!35 = !{i64 2151745325}
