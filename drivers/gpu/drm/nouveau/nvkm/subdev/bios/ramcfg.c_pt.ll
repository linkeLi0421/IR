; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/ramcfg.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/ramcfg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_M0203E = type { i8, i8, i8 }
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_ramcfg_count(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  %3 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 77, ptr noundef nonnull %2) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  %9 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 2
  %10 = load i16, ptr %9, align 2
  %11 = icmp ugt i16 %10, 4
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 2
  br label %26

18:                                               ; preds = %5
  %19 = icmp eq i8 %7, 2
  %20 = icmp ugt i16 %10, 2
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %22, %13
  %27 = phi i32 [ %25, %22 ], [ %17, %13 ]
  %28 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #4
  br label %29

29:                                               ; preds = %26, %18, %1
  %30 = phi i8 [ 0, %18 ], [ 0, %1 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #4
  ret i8 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_ramcfg_index(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bit_entry, align 2
  %3 = alloca %struct.nvbios_M0203E, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1052672
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 2
  %16 = and i8 %15, 15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  %17 = call i32 @bit_entry(ptr noundef %9, i8 noundef zeroext 77, ptr noundef nonnull %2) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 1
  %23 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 2
  %24 = load i16, ptr %23, align 2
  %25 = icmp ugt i16 %24, 4
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %30, 3
  %32 = call zeroext i16 @nvbios_rd16(ptr noundef %9, i32 noundef %31) #4
  %33 = zext i16 %32 to i32
  %34 = load i16, ptr %23, align 2
  %35 = load i8, ptr %20, align 1
  br label %36

36:                                               ; preds = %27, %19
  %37 = phi i8 [ %35, %27 ], [ %21, %19 ]
  %38 = phi i16 [ %34, %27 ], [ %24, %19 ]
  %39 = phi i32 [ %33, %27 ], [ 0, %19 ]
  %40 = icmp eq i8 %37, 2
  %41 = icmp ugt i16 %38, 2
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = icmp ugt i16 %38, 6
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = call i32 @nvbios_M0203Em(ptr noundef %9, i8 noundef zeroext %16, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.nvbios_M0203E, ptr %3, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  br label %65

51:                                               ; preds = %45, %43
  %52 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, 1
  %56 = call zeroext i16 @nvbios_rd16(ptr noundef %9, i32 noundef %55) #4
  %57 = zext i16 %56 to i32
  br label %58

58:                                               ; preds = %51, %36
  %59 = phi i32 [ %57, %51 ], [ %39, %36 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = zext i8 %16 to i32
  %63 = add nuw nsw i32 %59, %62
  %64 = call zeroext i8 @nvbios_rd08(ptr noundef %9, i32 noundef %63) #4
  br label %65

65:                                               ; preds = %61, %58, %48, %1
  %66 = phi i8 [ %50, %48 ], [ %64, %61 ], [ %16, %58 ], [ %16, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #4
  ret i8 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0203Em(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!9 = !{i64 3939064}
!10 = !{i64 2151478517}
