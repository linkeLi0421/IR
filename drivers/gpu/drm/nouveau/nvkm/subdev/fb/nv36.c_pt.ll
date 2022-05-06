; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv36.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv36.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.123, %struct.anon.124, ptr, i8, ptr }
%struct.anon.123 = type { ptr, ptr }
%struct.anon.124 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.136, %struct.anon.137, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.136 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.137 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
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

@nv36_fb = internal constant %struct.nvkm_fb_func { ptr null, ptr @nv20_fb_tags, ptr null, ptr @nv30_fb_init, ptr null, ptr null, ptr null, ptr null, %struct.anon.123 zeroinitializer, %struct.anon.124 { i32 8, ptr @nv30_fb_tile_init, ptr @nv36_fb_tile_comp, ptr @nv20_fb_tile_fini, ptr @nv20_fb_tile_prog }, ptr @nv20_ram_new, i8 0, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv36_fb_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_fb_new_(ptr noundef nonnull @nv36_fb, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_fb_tags(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv30_fb_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv30_fb_tile_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv36_fb_tile_comp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
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
  %17 = tail call i32 @nvkm_mm_head(ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %15, i32 noundef %15, i32 noundef 1, ptr noundef %4) #2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = and i32 %3, 2
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %4, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = select i1 %21, i32 536870912, i32 268435456
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
  %34 = shl i32 %33, 8
  %35 = and i32 %34, -16384
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
