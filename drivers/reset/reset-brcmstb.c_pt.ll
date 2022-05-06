; ModuleID = '/llk/IR/drivers/reset/reset-brcmstb.c_pt.bc'
source_filename = "../drivers/reset/reset-brcmstb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.brcmstb_reset = type { ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_reset_brcmstb__162_123_brcmstb_reset_driver_init6 = internal global ptr @brcmstb_reset_driver_init, section ".initcall6.init", align 4
@brcmstb_reset_driver = internal global %struct.platform_driver { ptr @brcmstb_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_reset_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcmstb_reset_driver_exit = internal global ptr @brcmstb_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [30 x i8] c"reset_brcmstb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [56 x i8] c"reset_brcmstb.description=Broadcom STB reset controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [47 x i8] c"reset_brcmstb.file=drivers/reset/reset-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"reset_brcmstb.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"brcmstb-reset\00", align 1
@brcmstb_reset_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@brcmstb_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @brcmstb_reset_assert, ptr @brcmstb_reset_deassert, ptr @brcmstb_reset_status }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_brcmstb_reset_driver_exit, ptr @__initcall__kmod_reset_brcmstb__162_123_brcmstb_reset_driver_init6, ptr @brcmstb_reset_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_reset_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmstb_reset_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_reset_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_reset_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 48, i32 noundef 3520) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #3
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #3
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %31

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %12, align 8
  %13 = getelementptr inbounds %struct.brcmstb_reset, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.brcmstb_reset, ptr %3, i32 0, i32 1, i32 1
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %16, 1
  %19 = sub i32 %18, %17
  %20 = lshr i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %21, i64 6148914691236517205) #4, !srcloc !8
  %23 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %21, i64 %22) #4, !srcloc !9
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 5
  %26 = getelementptr inbounds %struct.brcmstb_reset, ptr %3, i32 0, i32 1, i32 8
  store i32 %25, ptr %26, align 4
  store ptr @brcmstb_reset_ops, ptr %13, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.brcmstb_reset, ptr %3, i32 0, i32 1, i32 5
  store ptr %28, ptr %29, align 4
  %30 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %13) #3
  br label %31

31:                                               ; preds = %11, %9, %1
  %32 = phi i32 [ %10, %9 ], [ %30, %11 ], [ -12, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 5
  %4 = mul nuw i32 %3, 24
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #3, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 5
  %4 = mul nuw i32 %3, 24
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 %4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #3, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 5
  %4 = mul nuw i32 %3, 24
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !11
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!8 = !{i64 178603, i64 178630}
!9 = !{i64 178943, i64 178970, i64 179004, i64 179025}
!10 = !{i64 3615434}
!11 = !{i64 3615852}
