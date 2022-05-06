; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.gk104_fifo_func = type { %struct.anon.132, ptr, %struct.anon.133, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.132 = type { ptr }
%struct.anon.133 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }

@gk110_fifo_runlist = dso_local constant %struct.gk104_fifo_runlist_func { i8 8, ptr @gk110_fifo_runlist_cgrp, ptr @gk104_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, align 4
@gk110_fifo = internal constant %struct.gk104_fifo_func { %struct.anon.132 { ptr @gf100_fifo_intr_fault }, ptr @gk104_fifo_pbdma, %struct.anon.133 { ptr @gk104_fifo_fault_access, ptr @gk104_fifo_fault_engine, ptr @gk104_fifo_fault_reason, ptr @gk104_fifo_fault_hubclient, ptr @gk104_fifo_fault_gpcclient }, ptr @gk110_fifo_runlist, %struct.gk104_fifo_user_user zeroinitializer, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 41327, ptr null, ptr null }, ptr @gk104_fifo_gpfifo_new }, i8 0 }, align 4
@gk104_fifo_pbdma = external dso_local constant %struct.gk104_fifo_pbdma_func, align 4
@gk104_fifo_fault_access = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_engine = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_reason = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_hubclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_gpcclient = external dso_local constant [0 x %struct.nvkm_enum], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk110_fifo_runlist_cgrp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 26
  %12 = load i32, ptr %0, align 4
  %13 = or i32 %12, %11
  %14 = or i32 %13, 33611776
  tail call void %7(ptr noundef %1, i64 noundef %8, i32 noundef %14) #2
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = add i32 %2, 4
  %19 = zext i32 %18 to i64
  tail call void %17(ptr noundef %1, i64 noundef %19, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_chan(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_commit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk110_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gk104_fifo_new_(ptr noundef nonnull @gk110_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 4096, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_intr_fault(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

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
