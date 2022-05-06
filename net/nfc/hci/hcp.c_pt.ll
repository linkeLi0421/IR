; ModuleID = '/llk/IR/net/nfc/hci/hcp.c_pt.bc'
source_filename = "../net/nfc/hci/hcp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.hci_msg = type { %struct.list_head, %struct.sk_buff_head, i8, ptr, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.84, i32, %struct.spinlock }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.sk_buff = type { %union.anon.64, %union.anon.67, %union.anon.68, [48 x i8], %union.anon.69, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.71, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr, %union.anon.66 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, ptr }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.73, i32, i32, i32, i16, i16, %union.anon.75, %union.anon.76, %union.anon.77, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.73 = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i16 }
%struct.hcp_packet = type { i8, %struct.hcp_message }
%struct.hcp_message = type { i8, [0 x i8] }

@.str = private unnamed_addr constant [48 x i8] c"\013hci: %s: UNKNOWN MSG Type %d, instruction=%d\0A\00", align 1
@__func__.nfc_hci_hcp_message_rx = private unnamed_addr constant [23 x i8] c"nfc_hci_hcp_message_rx\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_hcp_message_tx(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 40) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %92, label %14

14:                                               ; preds = %9
  store volatile ptr %12, ptr %12, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 1, i32 2
  store i32 0, ptr %17, align 4
  store ptr %16, ptr %16, align 8
  %18 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 1, i32 1
  store i32 0, ptr %19, align 8
  %20 = icmp eq i8 %2, 0
  %21 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 2
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 8
  %23 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 3
  store ptr %6, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 4
  store ptr %7, ptr %24, align 8
  %25 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 5
  store i32 %8, ptr %25, align 4
  %26 = icmp ult i32 %5, 2147483647
  br i1 %26, label %27, label %77

27:                                               ; preds = %14
  %28 = add nuw nsw i32 %5, 1
  %29 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.nfc_dev, ptr %10, i32 0, i32 15
  %31 = getelementptr inbounds %struct.nfc_dev, ptr %10, i32 0, i32 16
  %32 = shl i8 %2, 6
  %33 = and i8 %3, 63
  %34 = or i8 %33, %32
  br label %35

35:                                               ; preds = %75, %27
  %36 = phi i1 [ true, %27 ], [ false, %75 ]
  %37 = phi i32 [ %28, %27 ], [ %48, %75 ]
  %38 = phi ptr [ %4, %27 ], [ %71, %75 ]
  %39 = load i32, ptr %29, align 4
  %40 = icmp ult i32 %37, %39
  %41 = add i32 %39, -1
  %42 = select i1 %40, i32 %37, i32 %41
  %43 = load i32, ptr %30, align 8
  %44 = load i32, ptr %31, align 4
  %45 = add i32 %42, 1
  %46 = add i32 %45, %43
  %47 = add i32 %46, %44
  %48 = sub i32 %37, %42
  %49 = tail call ptr @__alloc_skb(i32 noundef %47, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %35
  %52 = load i32, ptr %30, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  store ptr %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 14
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr i8, ptr %57, i32 %52
  store ptr %58, ptr %56, align 8
  %59 = tail call ptr @skb_put(ptr noundef nonnull %49, i32 noundef %45) #6
  %60 = load ptr, ptr %53, align 4
  store i8 %1, ptr %60, align 1
  %61 = getelementptr inbounds %struct.hcp_packet, ptr %60, i32 0, i32 1
  br i1 %36, label %62, label %68

62:                                               ; preds = %51
  store i8 %34, ptr %61, align 1
  %63 = icmp eq ptr %38, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.hcp_packet, ptr %60, i32 1
  %66 = add i32 %42, -1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr nonnull align 1 %38, i32 %66, i1 false)
  %67 = getelementptr i8, ptr %38, i32 %66
  br label %70

68:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %38, i32 %42, i1 false)
  %69 = getelementptr i8, ptr %38, i32 %42
  br label %70

70:                                               ; preds = %68, %64, %62
  %71 = phi ptr [ %67, %64 ], [ null, %62 ], [ %69, %68 ]
  %72 = icmp eq i32 %48, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = or i8 %1, -128
  store i8 %74, ptr %60, align 1
  tail call void @skb_queue_tail(ptr noundef %16, ptr noundef nonnull %49) #6
  br label %77

75:                                               ; preds = %70
  tail call void @skb_queue_tail(ptr noundef %16, ptr noundef nonnull %49) #6
  %76 = icmp sgt i32 %48, 0
  br i1 %76, label %35, label %77

77:                                               ; preds = %75, %73, %14
  %78 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %78) #6
  %79 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 2
  %80 = load i8, ptr %79, align 4, !range !8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void @mutex_unlock(ptr noundef %78) #6
  br label %90

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 4
  %85 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 4, i32 1
  %86 = load ptr, ptr %85, align 4
  store ptr %12, ptr %85, align 4
  store ptr %84, ptr %12, align 8
  store ptr %86, ptr %15, align 4
  store volatile ptr %12, ptr %86, align 4
  tail call void @mutex_unlock(ptr noundef %78) #6
  %87 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5
  %88 = load ptr, ptr @system_wq, align 4
  %89 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %88, ptr noundef %87) #6
  br label %92

90:                                               ; preds = %82, %35
  %91 = phi i32 [ -108, %82 ], [ -12, %35 ]
  tail call void @skb_queue_purge(ptr noundef %16) #6
  tail call void @kfree(ptr noundef nonnull %12) #6
  br label %92

92:                                               ; preds = %90, %83, %9
  %93 = phi i32 [ %91, %90 ], [ 0, %83 ], [ -12, %9 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_hcp_message_rx(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  switch i8 %2, label %9 [
    i8 2, label %6
    i8 0, label %7
    i8 1, label %8
  ]

6:                                                ; preds = %5
  tail call void @nfc_hci_resp_received(ptr noundef %0, i8 noundef zeroext %3, ptr noundef %4) #6
  br label %13

7:                                                ; preds = %5
  tail call void @nfc_hci_cmd_received(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %3, ptr noundef %4) #6
  br label %13

8:                                                ; preds = %5
  tail call void @nfc_hci_event_received(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %3, ptr noundef %4) #6
  br label %13

9:                                                ; preds = %5
  %10 = zext i8 %2 to i32
  %11 = zext i8 %3 to i32
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfc_hci_hcp_message_rx, i32 noundef %10, i32 noundef %11) #7
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #6
  br label %13

13:                                               ; preds = %9, %8, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_resp_received(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_cmd_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_event_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
