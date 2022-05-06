; ModuleID = '/llk/IR/drivers/rpmsg/rpmsg_ns.c_pt.bc'
source_filename = "../drivers/rpmsg/rpmsg_ns.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_ns_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_ns_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_ns_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
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
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
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
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.rpmsg_ns_msg = type { [32 x i8], i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rpmsg_ns\00", align 1
@__kstrtab_rpmsg_ns_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_ns_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_ns_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_ns_register_device to i32), ptr @__kstrtab_rpmsg_ns_register_device, ptr @__kstrtabns_rpmsg_ns_register_device }, section "___ksymtab+rpmsg_ns_register_device", align 4
@__UNIQUE_ID_description206 = internal constant [51 x i8] c"description=Name service announcement rpmsg driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author207 = internal constant [50 x i8] c"author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias208 = internal constant [21 x i8] c"alias=rpmsg:rpmsg_ns\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@rpmsg_ns_driver = internal global %struct.rpmsg_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @rpmsg_ns_probe, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register rpmsg driver\0A\00", align 1
@__func__.rpmsg_ns_init = private unnamed_addr constant [14 x i8] c"rpmsg_ns_init\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create the ns ept\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"malformed ns msg (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%sing channel %s addr 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"creat\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"rpmsg_destroy_channel failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"rpmsg_create_channel failed\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias208, ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description206, ptr @__UNIQUE_ID_license209, ptr @__ksymtab_rpmsg_ns_register_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_ns_register_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str, i32 9, i1 false)
  %3 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 2
  store ptr @.str, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 3
  store i32 53, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 4
  store i32 53, ptr %5, align 4
  %6 = tail call i32 @rpmsg_register_device(ptr noundef %0) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @rpmsg_ns_driver, ptr noundef nonnull @__this_module) #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rpmsg_ns_init) #8
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @rpmsg_ns_driver) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_ns_probe(ptr noundef %0) #0 {
  %2 = tail call ptr @rpmsg_create_ept(ptr noundef %0, ptr noundef nonnull @rpmsg_ns_cb, ptr noundef null, [10 x i32] [i32 1701667182, i32 1919251295, i32 1701013878, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 53]) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 5
  store ptr %2, ptr %6, align 8
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ 0, %5 ], [ -12, %4 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_ns_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = alloca %struct.rpmsg_channel_info, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %2, 40
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %2) #8
  br label %58

11:                                               ; preds = %5
  %12 = getelementptr [32 x i8], ptr %1, i32 0, i32 31
  store i8 0, ptr %12, align 1
  %13 = call ptr @strncpy(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 32)
  %14 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %6, i32 0, i32 1
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 1
  br label %31

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 7
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = call i32 @llvm.bswap.i32(i32 %16) #7
  %26 = select i1 %24, i32 %25, i32 %16
  %27 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  %30 = select i1 %24, i32 %29, i32 %28
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi i32 [ %16, %18 ], [ %26, %21 ]
  %33 = phi ptr [ %19, %18 ], [ %27, %21 ]
  %34 = phi i32 [ %20, %18 ], [ %30, %21 ]
  %35 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %6, i32 0, i32 2
  store i32 %32, ptr %35, align 4
  %36 = and i32 %34, 1
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @.str.6, ptr @.str.5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %38, ptr noundef %1, i32 noundef %32) #8
  %39 = load i32, ptr %33, align 1
  br i1 %17, label %46, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 7
  %42 = load i8, ptr %41, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = call i32 @llvm.bswap.i32(i32 %39) #7
  %45 = select i1 %43, i32 %44, i32 %39
  br label %46

46:                                               ; preds = %40, %31
  %47 = phi i32 [ %45, %40 ], [ %39, %31 ]
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = call i32 @rpmsg_release_channel(ptr noundef %0, ptr noundef nonnull %6) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %51) #8
  br label %58

54:                                               ; preds = %46
  %55 = call ptr @rpmsg_create_channel(ptr noundef %0, ptr noundef nonnull %6) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #8
  br label %58

58:                                               ; preds = %57, %54, %53, %50, %10
  %59 = phi i32 [ -22, %10 ], [ 0, %54 ], [ 0, %57 ], [ 0, %50 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_release_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
