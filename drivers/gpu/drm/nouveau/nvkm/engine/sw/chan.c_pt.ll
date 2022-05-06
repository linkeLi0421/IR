; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_sw_chan = type { ptr, %struct.nvkm_object, ptr, ptr, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_sw_chan_func = type { ptr, ptr }
%struct.nvkm_sw = type { ptr, %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@nvkm_sw_chan = internal constant %struct.nvkm_object_func { ptr @nvkm_sw_chan_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nvkm_sw_chan_event = internal constant %struct.nvkm_event_func { ptr @nvkm_sw_chan_event_ctor, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_sw_chan_mthd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %2, label %7 [
    i32 0, label %14
    i32 1280, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %0, i32 0, i32 5
  tail call void @nvkm_event_send(ptr noundef %6, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #3
  br label %14

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.nvkm_sw_chan_func, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i1 %10(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3
  br label %14

14:                                               ; preds = %12, %7, %5, %4
  %15 = phi i1 [ %13, %12 ], [ true, %5 ], [ true, %4 ], [ false, %7 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_sw_chan_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %4, i32 0, i32 1
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_sw_chan, ptr noundef %3, ptr noundef %6) #3
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %4, i32 0, i32 2
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %4, i32 0, i32 3
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_sw, ptr %1, i32 0, i32 1, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #3
  %11 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %4, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvkm_sw, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %13, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %4, i32 0, i32 4, i32 1
  store ptr %12, ptr %15, align 4
  store volatile ptr %11, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #3
  %16 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %4, i32 0, i32 5
  %17 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_sw_chan_event, i32 noundef 1, i32 noundef 1, ptr noundef %16) #3
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_sw_chan_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 72
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr %6(ptr noundef %2) #3
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %2, %1 ]
  %12 = getelementptr i8, ptr %0, i32 88
  tail call void @nvkm_event_fini(ptr noundef %12) #3
  %13 = getelementptr inbounds %struct.nvkm_sw, ptr %4, i32 0, i32 1, i32 2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #3
  %15 = getelementptr i8, ptr %0, i32 80
  %16 = getelementptr i8, ptr %0, i32 84
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #3
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_sw_chan_event_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %6 ], [ -38, %4 ]
  ret i32 %11
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
