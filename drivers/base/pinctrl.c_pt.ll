; ModuleID = '/llk/IR/drivers/base/pinctrl.c_pt.bc'
source_filename = "../drivers/base/pinctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dev_pin_info = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"idle\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_bind_pins(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %66

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 20, i32 noundef 3520) #2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 13
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %66, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @devm_pinctrl_get(ptr noundef %0) #2
  %12 = load ptr, ptr %8, align 4
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = ptrtoint ptr %14 to i32
  br label %59

18:                                               ; preds = %10
  %19 = tail call ptr @pinctrl_lookup_state(ptr noundef %14, ptr noundef nonnull @.str) #2
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.dev_pin_info, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.dev_pin_info, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %54, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %22, align 4
  %28 = tail call ptr @pinctrl_lookup_state(ptr noundef %27, ptr noundef nonnull @.str.1) #2
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.dev_pin_info, ptr %29, i32 0, i32 2
  store ptr %28, ptr %30, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.dev_pin_info, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %35 = load ptr, ptr %31, align 4
  br i1 %34, label %36, label %39

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.dev_pin_info, ptr %31, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = phi ptr [ %38, %36 ], [ %33, %26 ]
  %41 = tail call i32 @pinctrl_select_state(ptr noundef %35, ptr noundef %40) #2
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr %8, align 4
  br i1 %42, label %44, label %54

44:                                               ; preds = %39
  %45 = load ptr, ptr %43, align 4
  %46 = tail call ptr @pinctrl_lookup_state(ptr noundef %45, ptr noundef nonnull @.str.2) #2
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr inbounds %struct.dev_pin_info, ptr %47, i32 0, i32 3
  store ptr %46, ptr %48, align 4
  %49 = load ptr, ptr %8, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr @pinctrl_lookup_state(ptr noundef %50, ptr noundef nonnull @.str.3) #2
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr inbounds %struct.dev_pin_info, ptr %52, i32 0, i32 4
  store ptr %51, ptr %53, align 4
  br label %66

54:                                               ; preds = %39, %18
  %55 = phi ptr [ %22, %18 ], [ %43, %39 ]
  %56 = phi i32 [ 0, %18 ], [ %41, %39 ]
  %57 = load ptr, ptr %55, align 4
  tail call void @devm_pinctrl_put(ptr noundef %57) #2
  %58 = load ptr, ptr %8, align 4
  br label %59

59:                                               ; preds = %54, %16
  %60 = phi ptr [ %13, %16 ], [ %58, %54 ]
  %61 = phi i32 [ %17, %16 ], [ %56, %54 ]
  tail call void @devm_kfree(ptr noundef %0, ptr noundef %60) #2
  store ptr null, ptr %8, align 4
  %62 = icmp eq i32 %61, -22
  %63 = select i1 %62, i32 -22, i32 0
  %64 = icmp eq i32 %61, -517
  %65 = select i1 %64, i32 -517, i32 %63
  br label %66

66:                                               ; preds = %59, %44, %6, %1
  %67 = phi i32 [ 0, %44 ], [ 0, %1 ], [ -12, %6 ], [ %65, %59 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
