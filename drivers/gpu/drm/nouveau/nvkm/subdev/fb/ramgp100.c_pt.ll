; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.122, i32, i32, i32, i32, i32, i32, %union.anon.126, i32, i32, [11 x i32], %union.anon.130 }>
%union.anon.122 = type { %struct.anon.125 }
%struct.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32, i8 }
%union.anon.130 = type <{ %struct.anon.132, [12 x i8] }>
%struct.anon.132 = type { i48 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.133, %struct.anon.134, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.133 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.134 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@gp100_ram = internal constant %struct.nvkm_ram_func { i64 68719476736, ptr @gm107_ram_probe_fbp, ptr @gm200_ram_probe_fbp_amount, ptr @gp100_ram_probe_fbpa, ptr null, ptr @gp100_ram_init, ptr null, ptr null, ptr null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_ram_new(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 600) #5
  store ptr %4, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @gf100_ram_ctor(ptr noundef nonnull @gp100_ram, ptr noundef %0, ptr noundef nonnull %4) #6
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -12, %2 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ram_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_ram_probe_fbp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_ram_probe_fbp_amount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp100_ram_probe_fbpa(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 14
  %6 = add i32 %5, 9437708
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp100_ram_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.nvbios_init, align 4
  %9 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_fb, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_fb, ptr %10, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 21
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !10
  %16 = call i32 @nvbios_rammapTe(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %17 = icmp eq i32 %16, 0
  %18 = load i8, ptr %3, align 1
  %19 = icmp ult i8 %18, 21
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %93, label %21

21:                                               ; preds = %1
  %22 = add i32 %16, 20
  %23 = call zeroext i8 @nvbios_rd08(ptr noundef %15, i32 noundef %22) #6
  store i8 %23, ptr %4, align 1
  %24 = add i32 %16, 16
  %25 = call i32 @nvbios_rd32(ptr noundef %15, i32 noundef %24) #6
  %26 = load i8, ptr %4, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %77, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 10094172
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %33 = and i32 %32, 240
  %34 = load i8, ptr %4, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %28
  %37 = lshr exact i32 %33, 4
  %38 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 2
  %40 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 3
  %41 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 4
  %42 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 5
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 6
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 7
  %45 = getelementptr inbounds i8, ptr %8, i32 4
  br label %46

46:                                               ; preds = %63, %36
  %47 = phi i8 [ %34, %36 ], [ %64, %63 ]
  %48 = phi i32 [ %25, %36 ], [ %66, %63 ]
  %49 = phi i32 [ 0, %36 ], [ %65, %63 ]
  %50 = icmp eq i32 %49, %37
  br i1 %50, label %63, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %29, align 4
  %53 = getelementptr i8, ptr %52, i32 10094172
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %55 = and i32 %54, -241
  %56 = shl i32 %49, 4
  %57 = or i32 %55, %56
  %58 = load ptr, ptr %29, align 4
  %59 = getelementptr i8, ptr %58, i32 10094172
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #6, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %45, i8 0, i32 40, i1 false), !annotation !10
  store ptr %11, ptr %8, align 4
  %60 = call i32 @nvbios_rd32(ptr noundef %15, i32 noundef %48) #6
  store i32 %60, ptr %38, align 4
  store ptr null, ptr %39, align 4
  store i32 -1, ptr %40, align 4
  store i32 0, ptr %41, align 4
  store i32 -1, ptr %42, align 4
  store i8 1, ptr %43, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  %61 = call i32 @nvbios_exec(ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #6
  %62 = load i8, ptr %4, align 1
  br label %63

63:                                               ; preds = %51, %46
  %64 = phi i8 [ %47, %46 ], [ %62, %51 ]
  %65 = add nuw nsw i32 %49, 1
  %66 = add i32 %48, 4
  %67 = zext i8 %64 to i32
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %46, label %69

69:                                               ; preds = %63, %28
  %70 = load ptr, ptr %29, align 4
  %71 = getelementptr i8, ptr %70, i32 10094172
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %73 = and i32 %72, -241
  %74 = or i32 %73, %33
  %75 = load ptr, ptr %29, align 4
  %76 = getelementptr i8, ptr %75, i32 10094172
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #6, !srcloc !12
  br label %77

77:                                               ; preds = %69, %21
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 10093956
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %82 = and i32 %81, -285212673
  %83 = load ptr, ptr %78, align 4
  %84 = getelementptr i8, ptr %83, i32 10093956
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #6, !srcloc !12
  %85 = load ptr, ptr %78, align 4
  %86 = getelementptr i8, ptr %85, i32 1109184
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 -1) #6, !srcloc !12
  %87 = load ptr, ptr %78, align 4
  %88 = getelementptr i8, ptr %87, i32 10092896
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %90 = or i32 %89, 16
  %91 = load ptr, ptr %78, align 4
  %92 = getelementptr i8, ptr %91, i32 10092896
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #6, !srcloc !12
  br label %93

93:                                               ; preds = %77, %1
  %94 = phi i32 [ 0, %77 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapTe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
!8 = !{i64 3951461}
!9 = !{i64 2151490914}
!10 = !{!"auto-init"}
!11 = !{i64 2151492136}
!12 = !{i64 3951043}
