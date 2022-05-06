; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/npde.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/npde.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_pcirT = type { i16, i16, [3 x i8], i32, i16, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_npdeT = type { i32, i8 }

@.str = private unnamed_addr constant [41 x i8] c"%s: %08x: NPDE signature (%08x) unknown\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_npdeTe(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvbios_pcirT, align 4
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = call i32 @nvbios_pcirTp(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #5
  %7 = load i16, ptr %5, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %6, 15
  %10 = add i32 %9, %8
  %11 = and i32 %10, -16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %11) #5
  %15 = icmp eq i32 %14, 1162104910
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %26 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %11) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %11, i32 noundef %26) #6
  br label %27

27:                                               ; preds = %20, %16, %13, %2
  %28 = phi i32 [ %11, %13 ], [ 0, %2 ], [ 0, %20 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pcirTp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_npdeTp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @nvbios_npdeTe(ptr noundef %0, i32 noundef %1)
  store i64 0, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = add i32 %4, 8
  %8 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %7) #5
  %9 = zext i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 9
  store i32 %10, ptr %2, align 4
  %11 = add i32 %4, 10
  %12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %11) #5
  %13 = getelementptr inbounds %struct.nvbios_npdeT, ptr %2, i32 0, i32 1
  %14 = lshr i8 %12, 7
  store i8 %14, ptr %13, align 4
  br label %15

15:                                               ; preds = %6, %3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{!"auto-init"}
