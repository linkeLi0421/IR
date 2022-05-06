; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifotu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifotu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gk104_fifo_engn = type { ptr, ptr }

@.str = private unnamed_addr constant [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [125 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x runlist %016llx priv %d\0A\00", align 1
@tu102_fifo_gpfifo = internal constant %struct.nvkm_fifo_chan_func { ptr @gk104_fifo_gpfifo_dtor, ptr @gk104_fifo_gpfifo_init, ptr @gk104_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gk104_fifo_gpfifo_engine_ctor, ptr @gk104_fifo_gpfifo_engine_dtor, ptr @gv100_fifo_gpfifo_engine_init, ptr @gv100_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr @tu102_fifo_gpfifo_submit_token }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_fifo_gpfifo_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %3) #4
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %3, 47
  br i1 %21, label %22, label %66

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = icmp eq i32 %3, 48
  br i1 %26, label %27, label %66

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 5
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i64 noundef %39, i64 noundef %41, i32 noundef %43, i64 noundef %45, i32 noundef %48) #4
  br label %50

50:                                               ; preds = %32, %27
  %51 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 5
  %52 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 2
  %53 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 6
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 7
  %61 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = icmp ne i8 %62, 0
  %64 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %2, i32 0, i32 8
  %65 = tail call i32 @gv100_fifo_gpfifo_new_(ptr noundef nonnull @tu102_fifo_gpfifo, ptr noundef %0, ptr noundef %51, ptr noundef %52, i64 noundef %54, i64 noundef %56, i64 noundef %59, ptr noundef %60, i1 noundef zeroext %63, ptr noundef %64, ptr noundef %1, ptr noundef %4) #5
  br label %66

66:                                               ; preds = %50, %25, %22, %20
  %67 = phi i32 [ %65, %50 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ]
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fifo_gpfifo_new_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_gpfifo_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fifo_chan_ntfy(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_engine_ctor(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_engine_dtor(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fifo_gpfifo_engine_init(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fifo_gpfifo_engine_fini(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @tu102_fifo_gpfifo_submit_token(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 16
  %5 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = or i32 %4, %7
  ret i32 %8
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
