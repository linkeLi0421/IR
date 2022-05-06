; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.gk104_fifo_func = type { %struct.anon.133, ptr, %struct.anon.134, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.133 = type { ptr }
%struct.anon.134 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.68, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.68 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gm107_fifo_runlist = dso_local constant %struct.gk104_fifo_runlist_func { i8 8, ptr @gk110_fifo_runlist_cgrp, ptr @gm107_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, align 4
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CAPTURE\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IFB\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"BAR1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"BAR2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SCHED\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"HOST0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"HOST1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"HOST2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"HOST3\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"HOST4\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"HOST5\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"HOST6\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"HOST7\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"HOSTSR\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"PERF\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"PTP\00", align 1
@gm107_fifo_fault_engine = dso_local constant [19 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.2, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.3, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.4, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.6, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.7, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.8, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.9, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.10, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.11, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.12, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.13, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gm107_fifo = internal constant %struct.gk104_fifo_func { %struct.anon.133 { ptr @gm107_fifo_intr_fault }, ptr @gk208_fifo_pbdma, %struct.anon.134 { ptr @gk104_fifo_fault_access, ptr @gm107_fifo_fault_engine, ptr @gk104_fifo_fault_reason, ptr @gk104_fifo_fault_hubclient, ptr @gk104_fifo_fault_gpcclient }, ptr @gm107_fifo_runlist, %struct.gk104_fifo_user_user zeroinitializer, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 41327, ptr null, ptr null }, ptr @gk104_fifo_gpfifo_new }, i8 0 }, align 4
@gk208_fifo_pbdma = external dso_local constant %struct.gk104_fifo_pbdma_func, align 4
@gk104_fifo_fault_access = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_reason = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_hubclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_gpcclient = external dso_local constant [0 x %struct.nvkm_enum], align 4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk110_fifo_runlist_cgrp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_fifo_runlist_chan(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  tail call void %7(ptr noundef %1, i64 noundef %8, i32 noundef %11) #3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %2, 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %18, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = lshr i64 %20, 12
  %22 = trunc i64 %21 to i32
  tail call void %14(ptr noundef %1, i64 noundef %16, i32 noundef %22) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_commit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_fifo_intr_fault(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.nvkm_fault_data, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 4
  %9 = add i32 %8, 10240
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = load ptr, ptr %6, align 4
  %13 = add i32 %8, 10244
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %16 = load ptr, ptr %6, align 4
  %17 = add i32 %8, 10248
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = load ptr, ptr %6, align 4
  %21 = add i32 %8, 10252
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #3
  %24 = getelementptr inbounds i8, ptr %3, i32 24
  store i64 0, ptr %24, align 8, !annotation !10
  %25 = zext i32 %11 to i64
  %26 = shl nuw nsw i64 %25, 12
  %27 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 1
  store i64 %26, ptr %27, align 8
  %28 = zext i32 %19 to i64
  %29 = shl nuw i64 %28, 32
  %30 = zext i32 %15 to i64
  %31 = or i64 %29, %30
  store i64 %31, ptr %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 2
  store i64 0, ptr %32, align 8
  %33 = trunc i32 %1 to i8
  %34 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 3
  store i8 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 4
  store i8 1, ptr %35, align 1
  %36 = lshr i32 %23, 24
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 31
  %39 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 5
  store i8 %38, ptr %39, align 2
  %40 = lshr i32 %23, 8
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 63
  %43 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 8
  store i8 %42, ptr %43, align 1
  %44 = trunc i32 %23 to i8
  %45 = lshr i8 %44, 7
  %46 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 7
  store i8 %45, ptr %46, align 4
  %47 = lshr i8 %44, 6
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 6
  store i8 %48, ptr %49, align 1
  %50 = and i8 %44, 15
  %51 = getelementptr inbounds %struct.nvkm_fault_data, ptr %3, i32 0, i32 9
  store i8 %50, ptr %51, align 2
  call void @nvkm_fifo_fault(ptr noundef %0, ptr noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm107_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = tail call i32 @gk104_fifo_new_(ptr noundef nonnull @gm107_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 2048, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 3952041}
!9 = !{i64 2151491494}
!10 = !{!"auto-init"}
