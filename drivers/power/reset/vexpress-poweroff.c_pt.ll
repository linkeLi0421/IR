; ModuleID = '/llk/IR/drivers/power/reset/vexpress-poweroff.c_pt.bc'
source_filename = "../drivers/power/reset/vexpress-poweroff.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__initcall__kmod_vexpress_poweroff__162_149_vexpress_reset_driver_init6 = internal global ptr @vexpress_reset_driver_init, section ".initcall6.init", align 4
@vexpress_reset_driver = internal global %struct.platform_driver { ptr @vexpress_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @vexpress_reset_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"vexpress-reset\00", align 1
@vexpress_reset_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,vexpress-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,vexpress-shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,vexpress-reboot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@vexpress_power_off_device = internal unnamed_addr global ptr null, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@vexpress_restart_device = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"power off\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Unable to %s (%d)\0A\00", align 1
@vexpress_restart_nb_refcnt = internal global %struct.atomic_t zeroinitializer, align 4
@vexpress_restart_nb = internal global %struct.notifier_block { ptr @vexpress_restart, ptr null, i32 128 }, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @vexpress_reset_active_show, ptr @vexpress_reset_active_store }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_vexpress_poweroff__162_149_vexpress_reset_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vexpress_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vexpress_reset_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_reset_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @vexpress_reset_of_match, ptr noundef %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_regmap_init_vexpress_config(ptr noundef %2) #7
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %41

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %11, align 8
  %12 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  switch i32 %14, label %41 [
    i32 1, label %15
    i32 0, label %16
    i32 2, label %30
  ]

15:                                               ; preds = %10
  store ptr %2, ptr @vexpress_power_off_device, align 4
  store ptr @vexpress_power_off, ptr @pm_power_off, align 4
  br label %41

16:                                               ; preds = %10
  %17 = load ptr, ptr @vexpress_restart_device, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  store ptr %2, ptr @vexpress_restart_device, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vexpress_restart_nb_refcnt) #7, !srcloc !9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt, ptr nonnull @vexpress_restart_nb_refcnt, i32 1, ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt) #7, !srcloc !10
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = tail call i32 @register_restart_handler(ptr noundef nonnull @vexpress_restart_nb) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %24) #8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vexpress_restart_nb_refcnt) #7, !srcloc !9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt, ptr nonnull @vexpress_restart_nb_refcnt, i32 1, ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt) #7, !srcloc !12
  br label %41

28:                                               ; preds = %23, %19
  %29 = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @dev_attr_active) #7
  br label %41

30:                                               ; preds = %10
  store ptr %2, ptr @vexpress_restart_device, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vexpress_restart_nb_refcnt) #7, !srcloc !9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt, ptr nonnull @vexpress_restart_nb_refcnt, i32 1, ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt) #7, !srcloc !10
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = tail call i32 @register_restart_handler(ptr noundef nonnull @vexpress_restart_nb) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %35) #8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vexpress_restart_nb_refcnt) #7, !srcloc !9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt, ptr nonnull @vexpress_restart_nb_refcnt, i32 1, ptr nonnull elementtype(i32) @vexpress_restart_nb_refcnt) #7, !srcloc !12
  br label %41

39:                                               ; preds = %34, %30
  %40 = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @dev_attr_active) #7
  br label %41

41:                                               ; preds = %39, %37, %28, %26, %16, %15, %10, %8, %1
  %42 = phi i32 [ %9, %8 ], [ -22, %1 ], [ 0, %10 ], [ 0, %16 ], [ 0, %15 ], [ %24, %26 ], [ 0, %28 ], [ %35, %37 ], [ 0, %39 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_init_vexpress_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vexpress_power_off() #2 {
  %1 = load ptr, ptr @vexpress_power_off_device, align 4
  %2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  %6 = tail call i32 @regmap_write(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %8, %5
  %9 = phi i32 [ %10, %8 ], [ 1000, %5 ]
  %10 = add nsw i32 %9, -1
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %5, %0
  %14 = phi i32 [ %6, %5 ], [ -2, %0 ], [ 0, %8 ]
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %14) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_restart(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = load ptr, ptr @vexpress_restart_device, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %13, %11 ], [ 1000, %8 ]
  %13 = add nsw i32 %12, -1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %8, %3
  %17 = phi i32 [ %9, %8 ], [ -2, %3 ], [ 0, %11 ]
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %17) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_reset_active_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = load ptr, ptr @vexpress_restart_device, align 4
  %5 = icmp eq ptr %4, %0
  %6 = zext i1 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_reset_active_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #7
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store ptr %0, ptr @vexpress_restart_device, align 4
  br label %12

12:                                               ; preds = %11, %4
  %13 = select i1 %7, i32 %3, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2147991198}
!9 = !{i64 391193, i64 2147881164, i64 2147881190, i64 2147881237, i64 2147881259, i64 2147881287, i64 2147881307}
!10 = !{i64 2147894060, i64 2147894092, i64 2147894121, i64 2147894155, i64 2147894186, i64 2147894209}
!11 = !{i64 2147991401}
!12 = !{i64 2147895733, i64 2147895759, i64 2147895788, i64 2147895822, i64 2147895853, i64 2147895876}
!13 = !{!"auto-init"}
