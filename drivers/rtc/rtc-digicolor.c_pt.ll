; ModuleID = '/llk/IR/drivers/rtc/rtc-digicolor.c_pt.bc'
source_filename = "../drivers/rtc/rtc-digicolor.c"
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dc_rtc = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dc_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author210 = internal constant [40 x i8] c"author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [59 x i8] c"description=Conexant Digicolor Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@dc_rtc_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"digicolor_rtc\00", align 1
@dc_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @dc_rtc_read_time, ptr @dc_rtc_set_time, ptr @dc_rtc_read_alarm, ptr @dc_rtc_set_alarm, ptr null, ptr @dc_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

@__mod_of__dc_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @dc_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @dc_rtc_driver, ptr noundef nonnull @dc_rtc_probe, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dc_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dc_rtc_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %7 = getelementptr inbounds %struct.dc_rtc, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %31

11:                                               ; preds = %5
  %12 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #4
  store ptr %12, ptr %3, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %31

16:                                               ; preds = %11
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8
  %21 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %17, ptr noundef nonnull @dc_rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef %20, ptr noundef nonnull %3) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %24, align 8
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 3
  store ptr @dc_rtc_ops, ptr %26, align 8
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 23
  store i64 4294967295, ptr %28, align 8
  %29 = load ptr, ptr %3, align 4
  %30 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %29) #4
  br label %31

31:                                               ; preds = %23, %19, %16, %14, %9, %1
  %32 = phi i32 [ %10, %9 ], [ %15, %14 ], [ %30, %23 ], [ -12, %1 ], [ %17, %16 ], [ %21, %19 ]
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_rtc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.dc_rtc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 1) #4, !srcloc !8
  %6 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %6, i32 noundef 1, i32 noundef 160) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_rtc_read_time(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = call fastcc i32 @dc_rtc_read(ptr noundef %5, ptr noundef nonnull %3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = zext i32 %9 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %10, ptr noundef %1) #4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 0, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_rtc_set_time(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #4
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.dc_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #4, !srcloc !10
  %10 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 -125) #4, !srcloc !8
  %11 = tail call i64 @ktime_get() #4
  %12 = add i64 %11, 5000000000
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #4, !srcloc !11
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %27, label %16

16:                                               ; preds = %19, %2
  %17 = tail call i64 @ktime_get() #4
  %18 = icmp sgt i64 %17, %12
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #4, !srcloc !11
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %27, label %16

23:                                               ; preds = %16
  %24 = load ptr, ptr %7, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #4, !srcloc !11
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %27, label %82

27:                                               ; preds = %23, %19, %2
  %28 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 -128) #4, !srcloc !8
  %29 = tail call i64 @ktime_get() #4
  %30 = add i64 %29, 5000000000
  %31 = load ptr, ptr %7, align 4
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #4, !srcloc !11
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %45, label %34

34:                                               ; preds = %37, %27
  %35 = tail call i64 @ktime_get() #4
  %36 = icmp sgt i64 %35, %30
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %38 = load ptr, ptr %7, align 4
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #4, !srcloc !11
  %40 = icmp sgt i8 %39, -1
  br i1 %40, label %45, label %34

41:                                               ; preds = %34
  %42 = load ptr, ptr %7, align 4
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #4, !srcloc !11
  %44 = icmp sgt i8 %43, -1
  br i1 %44, label %45, label %82

45:                                               ; preds = %41, %37, %27
  %46 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 -127) #4, !srcloc !8
  %47 = tail call i64 @ktime_get() #4
  %48 = add i64 %47, 5000000000
  %49 = load ptr, ptr %7, align 4
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #4, !srcloc !11
  %51 = icmp sgt i8 %50, -1
  br i1 %51, label %63, label %52

52:                                               ; preds = %55, %45
  %53 = tail call i64 @ktime_get() #4
  %54 = icmp sgt i64 %53, %48
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %56 = load ptr, ptr %7, align 4
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %56) #4, !srcloc !11
  %58 = icmp sgt i8 %57, -1
  br i1 %58, label %63, label %52

59:                                               ; preds = %52
  %60 = load ptr, ptr %7, align 4
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #4, !srcloc !11
  %62 = icmp sgt i8 %61, -1
  br i1 %62, label %63, label %82

63:                                               ; preds = %59, %55, %45
  %64 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 -128) #4, !srcloc !8
  %65 = tail call i64 @ktime_get() #4
  %66 = add i64 %65, 5000000000
  %67 = load ptr, ptr %7, align 4
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %67) #4, !srcloc !11
  %69 = icmp sgt i8 %68, -1
  br i1 %69, label %81, label %70

70:                                               ; preds = %73, %63
  %71 = tail call i64 @ktime_get() #4
  %72 = icmp sgt i64 %71, %66
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %74 = load ptr, ptr %7, align 4
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %74) #4, !srcloc !11
  %76 = icmp sgt i8 %75, -1
  br i1 %76, label %81, label %70

77:                                               ; preds = %70
  %78 = load ptr, ptr %7, align 4
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %78) #4, !srcloc !11
  %80 = icmp sgt i8 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73, %63
  br label %82

82:                                               ; preds = %81, %77, %59, %41, %23
  %83 = phi i32 [ -110, %23 ], [ -110, %41 ], [ -110, %59 ], [ -110, %77 ], [ 0, %81 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.dc_rtc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !12
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = add i32 %12, %9
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %14, ptr noundef %15) #4
  %16 = call fastcc i32 @dc_rtc_read(ptr noundef %5, ptr noundef nonnull %3)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %13, %19
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i8, ptr %23, i32 22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !12
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %18, %2
  %28 = phi i32 [ 0, %18 ], [ %16, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = tail call i64 @rtc_tm_to_time64(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.dc_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !12
  %11 = trunc i64 %6 to i32
  %12 = sub i32 %11, %10
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !10
  %15 = load i8, ptr %1, align 4
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i8
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i8
  %7 = getelementptr inbounds %struct.dc_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %6) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dc_rtc_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dc_rtc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -124) #4, !srcloc !8
  %5 = tail call i64 @ktime_get() #4
  %6 = add i64 %5, 5000000000
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #4, !srcloc !11
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %21, label %10

10:                                               ; preds = %13, %2
  %11 = tail call i64 @ktime_get() #4
  %12 = icmp sgt i64 %11, %6
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #4, !srcloc !11
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %21, label %10

17:                                               ; preds = %10
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #4, !srcloc !11
  %20 = icmp sgt i8 %19, -1
  br i1 %20, label %21, label %54

21:                                               ; preds = %17, %13, %2
  %22 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 -128) #4, !srcloc !8
  %23 = tail call i64 @ktime_get() #4
  %24 = add i64 %23, 5000000000
  %25 = load ptr, ptr %3, align 4
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #4, !srcloc !11
  %27 = icmp sgt i8 %26, -1
  br i1 %27, label %39, label %28

28:                                               ; preds = %31, %21
  %29 = tail call i64 @ktime_get() #4
  %30 = icmp sgt i64 %29, %24
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %32 = load ptr, ptr %3, align 4
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #4, !srcloc !11
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %39, label %28

35:                                               ; preds = %28
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #4, !srcloc !11
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %39, label %54

39:                                               ; preds = %35, %31, %21
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !12
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !12
  br label %46

46:                                               ; preds = %46, %39
  %47 = phi i32 [ %45, %39 ], [ %50, %46 ]
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #4, !srcloc !12
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %46

52:                                               ; preds = %46
  %53 = add i32 %47, %42
  store i32 %53, ptr %1, align 4
  br label %54

54:                                               ; preds = %52, %35, %17
  %55 = phi i32 [ 0, %52 ], [ -110, %35 ], [ -110, %17 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{i64 363698}
!9 = !{!"auto-init"}
!10 = !{i64 363895}
!11 = !{i64 364093}
!12 = !{i64 364313}
