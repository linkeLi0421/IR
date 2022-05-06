; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.137 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.70 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.70 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@nv40_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv44_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [17 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv40_gr_init, ptr null, ptr @nv40_gr_intr, ptr @nv44_gr_tile, ptr null, ptr @nv40_gr_chan_new, ptr null, ptr @nv40_gr_units, ptr null, %struct.anon.137 zeroinitializer, [17 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12386, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12425, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12446, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 17559, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@.str = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv44_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv40_gr_new_(ptr noundef nonnull @nv44_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_gr_intr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv44_gr_tile(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 52
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  call void @nvkm_fifo_pause(ptr noundef %8, ptr noundef nonnull %4) #3
  %9 = call zeroext i1 @nv04_gr_idle(ptr noundef %0) #3
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %90 [
    i32 68, label %12
    i32 74, label %12
    i32 70, label %30
    i32 76, label %30
    i32 99, label %30
    i32 103, label %30
    i32 104, label %30
    i32 78, label %60
  ]

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %1, 4
  %18 = add i32 %17, 4196616
  %19 = getelementptr i8, ptr %16, i32 %18
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #3, !srcloc !10
  %20 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %15, align 4
  %23 = add i32 %17, 4196612
  %24 = getelementptr i8, ptr %22, i32 %23
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #3, !srcloc !10
  %25 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = add i32 %17, 4196608
  %29 = getelementptr i8, ptr %27, i32 %28
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #3, !srcloc !10
  br label %91

30:                                               ; preds = %3, %3, %3, %3, %3
  %31 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = shl i32 %1, 4
  %36 = add i32 %35, 4197640
  %37 = getelementptr i8, ptr %34, i32 %36
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #3, !srcloc !10
  %38 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %33, align 4
  %41 = add i32 %35, 4197636
  %42 = getelementptr i8, ptr %40, i32 %41
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #3, !srcloc !10
  %43 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %33, align 4
  %46 = add i32 %35, 4197632
  %47 = getelementptr i8, ptr %45, i32 %46
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #3, !srcloc !10
  %48 = load i32, ptr %31, align 4
  %49 = load ptr, ptr %33, align 4
  %50 = add i32 %35, 4221192
  %51 = getelementptr i8, ptr %49, i32 %50
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #3, !srcloc !10
  %52 = load i32, ptr %38, align 4
  %53 = load ptr, ptr %33, align 4
  %54 = add i32 %35, 4221188
  %55 = getelementptr i8, ptr %53, i32 %54
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #3, !srcloc !10
  %56 = load i32, ptr %43, align 4
  %57 = load ptr, ptr %33, align 4
  %58 = add i32 %35, 4221184
  %59 = getelementptr i8, ptr %57, i32 %58
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #3, !srcloc !10
  br label %91

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = shl i32 %1, 4
  %66 = add i32 %65, 4196616
  %67 = getelementptr i8, ptr %64, i32 %66
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %62) #3, !srcloc !10
  %68 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %63, align 4
  %71 = add i32 %65, 4196612
  %72 = getelementptr i8, ptr %70, i32 %71
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #3, !srcloc !10
  %73 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %63, align 4
  %76 = add i32 %65, 4196608
  %77 = getelementptr i8, ptr %75, i32 %76
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #3, !srcloc !10
  %78 = load i32, ptr %61, align 4
  %79 = load ptr, ptr %63, align 4
  %80 = add i32 %65, 4221192
  %81 = getelementptr i8, ptr %79, i32 %80
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %78) #3, !srcloc !10
  %82 = load i32, ptr %68, align 4
  %83 = load ptr, ptr %63, align 4
  %84 = add i32 %65, 4221188
  %85 = getelementptr i8, ptr %83, i32 %84
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %82) #3, !srcloc !10
  %86 = load i32, ptr %73, align 4
  %87 = load ptr, ptr %63, align 4
  %88 = add i32 %65, 4221184
  %89 = getelementptr i8, ptr %87, i32 %88
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %86) #3, !srcloc !10
  br label %91

90:                                               ; preds = %3
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #3
  br label %91

91:                                               ; preds = %90, %60, %30, %12
  call void @nvkm_fifo_start(ptr noundef %8, ptr noundef nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_chan_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv40_gr_units(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151488918}
!10 = !{i64 3947825}
