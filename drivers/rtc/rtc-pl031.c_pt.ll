; ModuleID = '/llk/IR/drivers/rtc/rtc-pl031.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pl031.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pl031_vendor_data = type { %struct.rtc_class_ops, i8, i8, i32, i64, i64 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl031_local = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_pl031__247_466_pl031_driver_init6 = internal global ptr @pl031_driver_init, section ".initcall6.init", align 4
@pl031_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl031_probe, ptr @pl031_remove, ptr null, ptr @pl031_ids }, align 4
@__exitcall_pl031_driver_exit = internal global ptr @pl031_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [53 x i8] c"rtc_pl031.author=Deepak Saxena <dsaxena@plexity.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"rtc_pl031.description=ARM AMBA PL031 RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [37 x i8] c"rtc_pl031.file=drivers/rtc/rtc-pl031\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [22 x i8] c"rtc_pl031.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"rtc-pl031\00", align 1
@pl031_ids = internal constant [4 x %struct.amba_id] [%struct.amba_id { i32 266289, i32 1048575, ptr @arm_pl031 }, %struct.amba_id { i32 1572913, i32 16777215, ptr @stv1_pl031 }, %struct.amba_id { i32 2621489, i32 16777215, ptr @stv2_pl031 }, %struct.amba_id zeroinitializer], align 4
@arm_pl031 = internal global %struct.pl031_vendor_data { %struct.rtc_class_ops { ptr null, ptr @pl031_read_time, ptr @pl031_set_time, ptr @pl031_read_alarm, ptr @pl031_set_alarm, ptr null, ptr @pl031_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, i8 0, i8 0, i32 0, i64 0, i64 4294967295 }, align 8
@stv1_pl031 = internal global %struct.pl031_vendor_data { %struct.rtc_class_ops { ptr null, ptr @pl031_read_time, ptr @pl031_set_time, ptr @pl031_read_alarm, ptr @pl031_set_alarm, ptr null, ptr @pl031_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, i8 1, i8 1, i32 0, i64 0, i64 4294967295 }, align 8
@stv2_pl031 = internal global %struct.pl031_vendor_data { %struct.rtc_class_ops { ptr null, ptr @pl031_stv2_read_time, ptr @pl031_stv2_set_time, ptr @pl031_stv2_read_alarm, ptr @pl031_stv2_set_alarm, ptr null, ptr @pl031_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, i8 1, i8 1, i32 262272, i64 -62167219200, i64 253402300799 }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid wday value %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_pl031_driver_exit, ptr @__initcall__kmod_rtc_pl031__247_466_pl031_driver_init6, ptr @pl031_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pl031_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl031_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pl031_driver_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl031_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.amba_id, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @amba_request_regions(ptr noundef %0, ptr noundef null) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %94

7:                                                ; preds = %2
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #7
  %9 = tail call ptr @devm_kmemdup(ptr noundef %0, ptr noundef %4, i32 noundef 44, i32 noundef 3264) #7
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %92

13:                                               ; preds = %7
  store ptr %4, ptr %8, align 4
  %14 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 1, %15
  %19 = add i32 %18, %17
  %20 = tail call ptr @devm_ioremap(ptr noundef %0, i32 noundef %15, i32 noundef %19) #7
  %21 = getelementptr inbounds %struct.pl031_local, ptr %8, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %92, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %24, align 8
  %25 = getelementptr i8, ptr %20, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %27 = getelementptr inbounds %struct.pl031_vendor_data, ptr %4, i32 0, i32 1
  %28 = load i8, ptr %27, align 4, !range !10
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 1, i32 67108864
  %31 = or i32 %30, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #7, !srcloc !12
  %34 = getelementptr inbounds %struct.pl031_vendor_data, ptr %4, i32 0, i32 2
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr i8, ptr %38, i32 48
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %41 = icmp eq i32 %40, 8192
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load ptr, ptr %21, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %45 = and i32 %44, 536739840
  %46 = icmp eq i32 %45, 34734080
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = or i32 %44, 917504
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr i8, ptr %49, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 8192) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #7, !srcloc !12
  br label %53

53:                                               ; preds = %47, %42, %37, %23
  %54 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.pl031_local, ptr %8, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rtc_device, ptr %59, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %60) #7
  br label %61

61:                                               ; preds = %57, %53
  %62 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext true) #7
  %63 = tail call ptr @devm_rtc_allocate_device(ptr noundef %0) #7
  %64 = getelementptr inbounds %struct.pl031_local, ptr %8, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i32
  br label %92

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.rtc_device, ptr %63, i32 0, i32 3
  store ptr %9, ptr %69, align 8
  %70 = getelementptr inbounds %struct.pl031_vendor_data, ptr %4, i32 0, i32 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %64, align 4
  %73 = getelementptr inbounds %struct.rtc_device, ptr %72, i32 0, i32 22
  store i64 %71, ptr %73, align 8
  %74 = getelementptr inbounds %struct.pl031_vendor_data, ptr %4, i32 0, i32 5
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %64, align 4
  %77 = getelementptr inbounds %struct.rtc_device, ptr %76, i32 0, i32 23
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %64, align 4
  %79 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %78) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load i32, ptr %54, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.pl031_vendor_data, ptr %4, i32 0, i32 3
  %86 = load i32, ptr %85, align 8
  %87 = tail call i32 @request_threaded_irq(i32 noundef %82, ptr noundef nonnull @pl031_interrupt, ptr noundef null, i32 noundef %86, ptr noundef nonnull @.str, ptr noundef nonnull %8) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, ptr %54, align 8
  %91 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %0, i32 noundef %90) #7
  br label %94

92:                                               ; preds = %84, %68, %66, %13, %7
  %93 = phi i32 [ %67, %66 ], [ %79, %68 ], [ %87, %84 ], [ -12, %7 ], [ -12, %13 ]
  tail call void @amba_release_regions(ptr noundef %0) #7
  br label %94

94:                                               ; preds = %92, %89, %81, %2
  %95 = phi i32 [ 0, %89 ], [ 0, %81 ], [ %5, %2 ], [ %93, %92 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl031_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @dev_pm_clear_wake_irq(ptr noundef %0) #7
  %4 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext false) #7
  %5 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %3) #7
  br label %10

10:                                               ; preds = %8, %1
  tail call void @amba_release_regions(ptr noundef %0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #7, !srcloc !12
  %12 = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #7
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_read_time(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %8 = zext i32 %7 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %8, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_set_time(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #7
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_read_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %9, ptr noundef %10) #7
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  store i8 %21, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_set_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = tail call i64 @rtc_tm_to_time64(ptr noundef %5) #7
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !12
  %11 = load i8, ptr %1, align 4
  %12 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %13 = getelementptr inbounds %struct.pl031_local, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #7, !srcloc !12
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %19 = icmp eq i8 %11, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = or i32 %18, 1
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !12
  br label %28

24:                                               ; preds = %2
  %25 = and i32 %18, -2
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !12
  br label %28

28:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #7, !srcloc !12
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %11 = icmp eq i32 %1, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = or i32 %10, 1
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !12
  br label %20

16:                                               ; preds = %2
  %17 = and i32 %10, -2
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !12
  br label %20

20:                                               ; preds = %16, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_stv2_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = tail call i32 @_bcd2bin(i8 noundef zeroext %12) #8
  %14 = trunc i32 %10 to i8
  %15 = tail call i32 @_bcd2bin(i8 noundef zeroext %14) #8
  %16 = mul i32 %13, 100
  %17 = add i32 %16, %15
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = lshr i32 %7, 25
  %20 = and i32 %19, 15
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  %23 = lshr i32 %7, 20
  %24 = and i32 %23, 31
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = lshr i32 %7, 17
  %27 = and i32 %26, 7
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %28, ptr %29, align 4
  %30 = lshr i32 %7, 12
  %31 = and i32 %30, 31
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = lshr i32 %7, 6
  %34 = and i32 %33, 63
  %35 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = and i32 %7, 63
  store i32 %36, ptr %1, align 4
  %37 = tail call i32 @rtc_year_days(i32 noundef %24, i32 noundef %21, i32 noundef %17) #7
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %18, align 4
  %40 = add i32 %39, -1900
  store i32 %40, ptr %18, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_stv2_set_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !29
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = call fastcc i32 @pl031_stv2_tm_to_time(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds %struct.pl031_local, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %14 = load i32, ptr %3, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !12
  br label %17

17:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_stv2_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pl031_local, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %12 = lshr i32 %11, 8
  %13 = trunc i32 %12 to i8
  %14 = tail call i32 @_bcd2bin(i8 noundef zeroext %13) #8
  %15 = trunc i32 %11 to i8
  %16 = tail call i32 @_bcd2bin(i8 noundef zeroext %15) #8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %18 = mul i32 %14, 100
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %19, ptr %20, align 4
  %21 = lshr i32 %8, 25
  %22 = and i32 %21, 15
  %23 = add nsw i32 %22, -1
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %23, ptr %24, align 4
  %25 = lshr i32 %8, 20
  %26 = and i32 %25, 31
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %26, ptr %27, align 4
  %28 = lshr i32 %8, 17
  %29 = and i32 %28, 7
  %30 = add nsw i32 %29, -1
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %30, ptr %31, align 4
  %32 = lshr i32 %8, 12
  %33 = and i32 %32, 31
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %33, ptr %34, align 4
  %35 = lshr i32 %8, 6
  %36 = and i32 %35, 63
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  %38 = and i32 %8, 63
  store i32 %38, ptr %17, align 4
  %39 = tail call i32 @rtc_year_days(i32 noundef %26, i32 noundef %23, i32 noundef %19) #7
  %40 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %20, align 4
  %42 = add i32 %41, -1900
  store i32 %42, ptr %20, align 4
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 20
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %47, ptr %48, align 1
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  store i8 %53, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl031_stv2_set_alarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !29
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %8 = call fastcc i32 @pl031_stv2_tm_to_time(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr inbounds %struct.pl031_local, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %15 = load i32, ptr %3, align 4
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !12
  %18 = load i8, ptr %1, align 4
  %19 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %20 = getelementptr inbounds %struct.pl031_local, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #7, !srcloc !12
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %26 = icmp eq i8 %18, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %26, label %27, label %31

27:                                               ; preds = %10
  %28 = or i32 %25, 1
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !12
  br label %35

31:                                               ; preds = %10
  %32 = and i32 %25, -2
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !12
  br label %35

35:                                               ; preds = %31, %27, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl031_stv2_tm_to_time(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca %struct.rtc_time, align 4
  %6 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1900
  %9 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -7
  %12 = icmp ult i32 %11, -8
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %10) #9
  br label %53

14:                                               ; preds = %4
  %15 = icmp eq i32 %10, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false), !annotation !29
  %17 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #7
  call void @rtc_time64_to_tm(i64 noundef %17, ptr noundef nonnull %5) #7
  %18 = getelementptr inbounds %struct.rtc_time, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #7
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %19, %16 ], [ %10, %14 ]
  %22 = freeze i32 %8
  %23 = sdiv i32 %22, 100
  %24 = mul i32 %23, 100
  %25 = sub i32 %22, %24
  %26 = call zeroext i8 @_bin2bcd(i32 noundef %25) #8
  %27 = zext i8 %26 to i32
  %28 = call zeroext i8 @_bin2bcd(i32 noundef %23) #8
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %30, %27
  store i32 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 25
  %35 = add i32 %34, 33554432
  %36 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 20
  %39 = shl i32 %21, 17
  %40 = add i32 %39, 131072
  %41 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 12
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 6
  %47 = load i32, ptr %1, align 4
  %48 = or i32 %38, %40
  %49 = or i32 %48, %35
  %50 = or i32 %49, %43
  %51 = or i32 %50, %46
  %52 = or i32 %51, %47
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %20, %13
  %54 = phi i32 [ -22, %13 ], [ 0, %20 ]
  ret i32 %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
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
!8 = !{i64 3478330}
!9 = !{i64 2153529282}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153529493}
!12 = !{i64 3477912}
!13 = !{i64 2153529967}
!14 = !{i64 2153530309}
!15 = !{i64 2153530587}
!16 = !{i64 2153530915}
!17 = !{i64 2153524666}
!18 = !{i64 2153524880}
!19 = !{i64 2153525372}
!20 = !{i64 2153525580}
!21 = !{i64 2153526086}
!22 = !{i64 2153526428}
!23 = !{i64 2153526779}
!24 = !{i64 2153527006}
!25 = !{i64 2153518309}
!26 = !{i64 2153518791}
!27 = !{i64 2153521276}
!28 = !{i64 2153521618}
!29 = !{!"auto-init"}
!30 = !{i64 2153521814}
!31 = !{i64 2153522146}
!32 = !{i64 2153522620}
!33 = !{i64 2153522962}
!34 = !{i64 2153523304}
!35 = !{i64 2153523655}
!36 = !{i64 2153523860}
!37 = !{i64 2153524192}
