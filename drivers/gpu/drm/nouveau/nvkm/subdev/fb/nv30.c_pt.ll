; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv30.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv30.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.136, %struct.anon.137, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.136 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.137 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.125, i32, i32, i32, i32, i32, i32, %union.anon.129, i32, i32, [11 x i32], %union.anon.133 }>
%union.anon.125 = type { %struct.anon.128 }
%struct.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i32, i8 }
%union.anon.133 = type <{ %struct.anon.135, [12 x i8] }>
%struct.anon.135 = type { i48 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

@nv30_fb = internal constant %struct.nvkm_fb_func { ptr null, ptr @nv20_fb_tags, ptr null, ptr @nv30_fb_init, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 { i32 8, ptr @nv30_fb_tile_init, ptr @nv30_fb_tile_comp, ptr @nv20_fb_tile_fini, ptr @nv20_fb_tile_prog }, ptr @nv20_ram_new, i8 0, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv30_fb_tile_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = and i32 %5, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_fb_func, ptr %11, i32 0, i32 9, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void %13(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %6) #3
  br label %16

16:                                               ; preds = %15, %10, %7
  %17 = phi i32 [ 0, %7 ], [ 16, %15 ], [ 16, %10 ]
  %18 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %6, i32 0, i32 1
  %19 = or i32 %17, %2
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = add i32 %3, %2
  %22 = icmp eq i32 %21, 0
  %23 = add i32 %21, -1
  %24 = select i1 %22, i32 0, i32 %23
  %25 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %6, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %6, i32 0, i32 3
  store i32 %4, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv30_fb_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %39 [
    i32 48, label %6
    i32 49, label %6
    i32 53, label %6
  ]

6:                                                ; preds = %1, %1, %1
  %7 = icmp eq i32 %5, 49
  %8 = select i1 %7, i32 2, i32 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1049552
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i32 [ 0, %6 ], [ %37, %13 ]
  %15 = mul nuw nsw i32 %14, 12
  %16 = add nuw nsw i32 %15, 1049468
  %17 = tail call fastcc i32 @calc_ref(ptr noundef %0, i32 noundef %12, i32 noundef 0, i32 noundef 0)
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #3, !srcloc !11
  %20 = tail call fastcc i32 @calc_ref(ptr noundef %0, i32 noundef %12, i32 noundef 0, i32 noundef 1)
  %21 = load ptr, ptr %9, align 4
  %22 = add nuw nsw i32 %15, 1049472
  %23 = getelementptr i8, ptr %21, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #3, !srcloc !11
  %24 = tail call fastcc i32 @calc_ref(ptr noundef %0, i32 noundef %12, i32 noundef 0, i32 noundef 2)
  %25 = load ptr, ptr %9, align 4
  %26 = add nuw nsw i32 %15, 1049476
  %27 = getelementptr i8, ptr %25, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #3, !srcloc !11
  %28 = shl i32 %14, 3
  %29 = add nuw nsw i32 %28, 1049516
  %30 = tail call fastcc i32 @calc_ref(ptr noundef %0, i32 noundef %12, i32 noundef 1, i32 noundef 0)
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #3, !srcloc !11
  %33 = tail call fastcc i32 @calc_ref(ptr noundef %0, i32 noundef %12, i32 noundef 1, i32 noundef 1)
  %34 = load ptr, ptr %9, align 4
  %35 = add nuw nsw i32 %28, 1049520
  %36 = getelementptr i8, ptr %34, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %33) #3, !srcloc !11
  %37 = add nuw nsw i32 %14, 1
  %38 = icmp eq i32 %37, %8
  br i1 %38, label %39, label %13

39:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calc_ref(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %6 = shl i32 %2, 4
  %7 = shl i32 %3, 2
  %8 = xor i32 %7, 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 48
  br i1 %12, label %13, label %57

13:                                               ; preds = %4
  %14 = add i32 %6, 4652
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %19 = lshr i32 %18, %8
  %20 = and i32 %19, 15
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 48
  br i1 %24, label %25, label %57

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = add i32 %6, 4656
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %31 = lshr i32 %30, %8
  %32 = and i32 %31, 15
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 48
  br i1 %36, label %37, label %57

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = add i32 %6, 4660
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %43 = lshr i32 %42, %8
  %44 = and i32 %43, 15
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 48
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = add i32 %6, 4664
  %53 = getelementptr i8, ptr %51, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %55 = lshr i32 %54, %8
  %56 = and i32 %55, 15
  br label %57

57:                                               ; preds = %49, %37, %25, %13, %4
  %58 = phi i32 [ %44, %49 ], [ %44, %37 ], [ 0, %25 ], [ 0, %13 ], [ 0, %4 ]
  %59 = phi i32 [ %20, %49 ], [ %20, %37 ], [ %20, %25 ], [ %20, %13 ], [ 0, %4 ]
  %60 = phi i32 [ %32, %49 ], [ %32, %37 ], [ %32, %25 ], [ 0, %13 ], [ 0, %4 ]
  %61 = phi i32 [ %56, %49 ], [ 0, %37 ], [ 0, %25 ], [ 0, %13 ], [ 0, %4 ]
  %62 = and i32 %60, 8
  %63 = icmp eq i32 %62, 0
  %64 = shl nuw nsw i32 %60, 1
  %65 = or i32 %64, -32
  %66 = select i1 %63, i32 %64, i32 %65
  %67 = shl i32 %3, 3
  %68 = ashr i32 %1, %67
  %69 = and i32 %68, 255
  %70 = add nsw i32 %66, %69
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 0)
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 31)
  %73 = shl nuw nsw i32 %72, 8
  %74 = and i32 %59, 8
  %75 = icmp eq i32 %74, 0
  %76 = shl nuw nsw i32 %59, 1
  %77 = or i32 %76, -32
  %78 = select i1 %75, i32 %76, i32 %77
  %79 = add nsw i32 %78, %69
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0)
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 31)
  %82 = or i32 %73, %81
  %83 = and i32 %58, 8
  %84 = icmp eq i32 %83, 0
  %85 = shl nuw nsw i32 %58, 1
  %86 = or i32 %85, -32
  %87 = select i1 %84, i32 %85, i32 %86
  %88 = add nsw i32 %87, %69
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 0)
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 31)
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %82
  %93 = and i32 %61, 8
  %94 = icmp eq i32 %93, 0
  %95 = shl nuw nsw i32 %61, 1
  %96 = or i32 %95, -32
  %97 = select i1 %94, i32 %95, i32 %96
  %98 = add nsw i32 %97, %69
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0)
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 31)
  %101 = shl nuw nsw i32 %100, 24
  %102 = or i32 %101, %92
  %103 = or i32 %102, -2139062144
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv30_fb_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_fb_new_(ptr noundef nonnull @nv30_fb, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_fb_tags(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv30_fb_tile_comp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = add i32 %2, 63
  %7 = lshr i32 %6, 6
  %8 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_ram, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = udiv i32 %7, %11
  %13 = add nsw i32 %12, -1
  %14 = or i32 %13, 63
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 4, i32 1
  %17 = tail call i32 @nvkm_mm_head(ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %15, i32 noundef %15, i32 noundef 1, ptr noundef %4) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = and i32 %3, 2
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %4, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = select i1 %21, i32 33554432, i32 16777216
  %25 = or i32 %23, %24
  store i32 %25, ptr %22, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.nvkm_mm_node, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 6
  %30 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %4, i32 0, i32 4
  %31 = or i32 %25, %29
  store i32 %31, ptr %30, align 4
  %32 = load i32, ptr %27, align 4
  %33 = add i32 %32, %14
  %34 = shl i32 %33, 6
  %35 = and i32 %34, -4096
  %36 = or i32 %35, %31
  store i32 %36, ptr %30, align 4
  br label %37

37:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_fb_tile_fini(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_fb_tile_prog(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_ram_new(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3948974}
!9 = !{i64 2151488427}
!10 = !{i64 2151489649}
!11 = !{i64 3948556}
