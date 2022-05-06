; ModuleID = '/llk/IR/drivers/media/mc/mc-dev-allocator.c_pt.bc'
source_filename = "../drivers/media/mc/mc-dev-allocator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_usb_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_usb_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_usb_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_delete\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.media_device_instance = type { %struct.media_device, ptr, %struct.list_head, %struct.kref }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.58], %struct.media_entity_enum, i32 }
%struct.anon.58 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }

@media_device_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @media_device_lock, i64 12), ptr getelementptr (i8, ptr @media_device_lock, i64 12) } }, align 4
@__kstrtab_media_device_usb_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_usb_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_usb_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_usb_allocate to i32), ptr @__kstrtab_media_device_usb_allocate, ptr @__kstrtabns_media_device_usb_allocate }, section "___ksymtab_gpl+media_device_usb_allocate", align 4
@__kstrtab_media_device_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_delete to i32), ptr @__kstrtab_media_device_delete, ptr @__kstrtabns_media_device_delete }, section "___ksymtab_gpl+media_device_delete", align 4
@media_device_list = internal global %struct.list_head { ptr @media_device_list, ptr @media_device_list }, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: module %s get owner reference error\0A\00", align 1
@__func__.__media_device_get = private unnamed_addr constant [19 x i8] c"__media_device_get\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_media_device_delete, ptr @__ksymtab_media_device_usb_allocate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @media_device_usb_allocate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @media_device_lock) #4
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ @media_device_list, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @media_device_list
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -428
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -428
  %15 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #4, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #4, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %13
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %13
  %24 = phi i32 [ 2, %13 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #4
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr i8, ptr %7, i32 -4
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = tail call zeroext i1 @try_module_get(ptr noundef %27) #4
  br i1 %30, label %42, label %31

31:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__media_device_get, ptr noundef %1) #5
  br label %42

32:                                               ; preds = %5
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 440) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.media_device_instance, ptr %34, i32 0, i32 1
  store ptr %2, ptr %37, align 8
  %38 = getelementptr inbounds %struct.media_device_instance, ptr %34, i32 0, i32 3
  store volatile i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.media_device_instance, ptr %34, i32 0, i32 2
  %40 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @media_device_list, i32 0, i32 1), align 4
  store ptr %39, ptr getelementptr inbounds (%struct.list_head, ptr @media_device_list, i32 0, i32 1), align 4
  store ptr @media_device_list, ptr %39, align 4
  %41 = getelementptr inbounds %struct.media_device_instance, ptr %34, i32 0, i32 2, i32 1
  store ptr %40, ptr %41, align 8
  store volatile ptr %39, ptr %40, align 4
  br label %44

42:                                               ; preds = %31, %29, %25
  %43 = icmp eq ptr %14, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42, %36
  %45 = phi ptr [ %34, %36 ], [ %14, %42 ]
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 31
  %50 = load ptr, ptr %49, align 8
  tail call void @__media_device_usb_init(ptr noundef nonnull %45, ptr noundef %0, ptr noundef %50, ptr noundef %1) #4
  br label %51

51:                                               ; preds = %48, %44, %42, %32
  %52 = phi ptr [ inttoptr (i32 -12 to ptr), %32 ], [ inttoptr (i32 -12 to ptr), %42 ], [ %45, %48 ], [ %45, %44 ]
  tail call void @mutex_unlock(ptr noundef nonnull @media_device_lock) #4
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_device_usb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_delete(ptr noundef %0, ptr nocapture readnone %1, ptr noundef readnone %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @media_device_lock) #4
  %4 = getelementptr inbounds %struct.media_device_instance, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @module_put(ptr noundef %5) #4
  br label %8

8:                                                ; preds = %7, %3
  tail call void @mutex_unlock(ptr noundef nonnull @media_device_lock) #4
  %9 = getelementptr inbounds %struct.media_device_instance, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #4, !srcloc !8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #4, !srcloc !13
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %22, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #4
  br label %22

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void @mutex_lock(ptr noundef nonnull @media_device_lock) #4
  tail call void @media_device_unregister(ptr noundef %0) #4
  tail call void @media_device_cleanup(ptr noundef %0) #4
  %17 = getelementptr %struct.media_device_instance, ptr %0, i32 0, i32 2
  %18 = getelementptr %struct.media_device_instance, ptr %0, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @media_device_lock) #4
  tail call void @kfree(ptr noundef %0) #4
  br label %22

22:                                               ; preds = %16, %15, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 656883, i64 2148146854, i64 2148146880, i64 2148146927, i64 2148146949, i64 2148146977, i64 2148146997}
!9 = !{i64 2148159727, i64 2148159759, i64 2148159788, i64 2148159822, i64 2148159853, i64 2148159876}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148259949}
!13 = !{i64 2148162084, i64 2148162116, i64 2148162145, i64 2148162179, i64 2148162210, i64 2148162233}
!14 = !{i64 2148893475}
