; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gp102_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 2304, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gp102_grctx_generate_attrib, i32 1200, i32 800, i32 3072, i32 2048, i32 2984, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gp100_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r419a3c, ptr @gp102_grctx_generate_r408840, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp102_grctx_generate_attrib(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 16
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = mul i32 %13, %16
  %18 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 13
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i32 [ 0, %22 ], [ %35, %26 ]
  %28 = phi i32 [ %17, %22 ], [ %34, %26 ]
  %29 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %11, %31
  %33 = mul i32 %32, %25
  %34 = add i32 %33, %28
  %35 = add nuw nsw i32 %27, 1
  %36 = icmp eq i32 %35, %20
  br i1 %36, label %37, label %26

37:                                               ; preds = %26, %1
  %38 = phi i32 [ %17, %1 ], [ %34, %26 ]
  %39 = shl i32 %38, 5
  %40 = add i32 %39, 128
  %41 = and i32 %40, -128
  %42 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %41, i32 noundef 4096, i1 noundef zeroext false) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %42) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %42) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %42) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299520, i32 noundef 0, i32 noundef 12, i32 noundef %42) #2
  %43 = lshr i32 %40, 7
  %44 = or i32 %43, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299524, i32 noundef %44, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216880, i32 noundef %9, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216924, i32 noundef %7, i32 noundef 0, i32 noundef -1) #2
  %45 = shl i32 %7, 14
  %46 = or i32 %45, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4220100, i32 noundef %46, i32 noundef 0, i32 noundef -1) #2
  %47 = load i8, ptr %18, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %121, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 22
  br label %51

51:                                               ; preds = %113, %49
  %52 = phi i8 [ %47, %49 ], [ %114, %113 ]
  %53 = phi i32 [ 0, %49 ], [ %117, %113 ]
  %54 = phi i32 [ 0, %49 ], [ %118, %113 ]
  %55 = phi i32 [ %17, %49 ], [ %116, %113 ]
  %56 = phi i32 [ 0, %49 ], [ %115, %113 ]
  %57 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %54
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %113, label %60

60:                                               ; preds = %51
  %61 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 18, i32 %54
  %62 = shl i32 %54, 15
  %63 = add nuw nsw i32 %62, 5246020
  %64 = add nuw nsw i32 %62, 5255168
  br label %65

65:                                               ; preds = %103, %60
  %66 = phi i8 [ %58, %60 ], [ %104, %103 ]
  %67 = phi i32 [ %53, %60 ], [ %108, %103 ]
  %68 = phi i32 [ 0, %60 ], [ %107, %103 ]
  %69 = phi i32 [ %55, %60 ], [ %106, %103 ]
  %70 = phi i32 [ %56, %60 ], [ %105, %103 ]
  %71 = load i8, ptr %61, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 1, %68
  %74 = and i32 %73, %72
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %65
  %77 = shl i32 %68, 2
  %78 = add nuw nsw i32 %63, %77
  %79 = shl i32 %68, 9
  %80 = add nuw nsw i32 %64, %79
  %81 = shl i32 %67, 2
  %82 = add i32 %81, 4296352
  %83 = load i8, ptr %50, align 1
  %84 = zext i8 %83 to i32
  %85 = mul i32 %11, %84
  %86 = mul i32 %9, %84
  %87 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 20, i32 %54, i32 %68
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = mul i32 %7, %89
  %91 = or i32 %80, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %91, i32 noundef %85, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %78, i32 noundef %86, i32 noundef 0, i32 noundef -1) #2
  %92 = or i32 %80, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %92, i32 noundef %69, i32 noundef 0, i32 noundef -1) #2
  %93 = or i32 %80, 240
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %93, i32 noundef %86, i32 noundef 0, i32 noundef -1) #2
  %94 = add i32 %85, %69
  %95 = or i32 %80, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %95, i32 noundef %90, i32 noundef 0, i32 noundef -1) #2
  %96 = or i32 %80, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %96, i32 noundef %70, i32 noundef 0, i32 noundef -1) #2
  %97 = load i32, ptr %12, align 4
  %98 = load i8, ptr %87, align 1
  %99 = zext i8 %98 to i32
  %100 = mul i32 %97, %99
  %101 = add i32 %100, %70
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %82, i32 noundef %86, i32 noundef 0, i32 noundef -1) #2
  %102 = load i8, ptr %57, align 1
  br label %103

103:                                              ; preds = %76, %65
  %104 = phi i8 [ %102, %76 ], [ %66, %65 ]
  %105 = phi i32 [ %101, %76 ], [ %70, %65 ]
  %106 = phi i32 [ %94, %76 ], [ %69, %65 ]
  %107 = add nuw nsw i32 %68, 1
  %108 = add i32 %67, 1
  %109 = zext i8 %104 to i32
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %65, label %111

111:                                              ; preds = %103
  %112 = load i8, ptr %18, align 1
  br label %113

113:                                              ; preds = %111, %51
  %114 = phi i8 [ %52, %51 ], [ %112, %111 ]
  %115 = phi i32 [ %56, %51 ], [ %105, %111 ]
  %116 = phi i32 [ %55, %51 ], [ %106, %111 ]
  %117 = phi i32 [ %53, %51 ], [ %108, %111 ]
  %118 = add nuw nsw i32 %54, 1
  %119 = zext i8 %114 to i32
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %51, label %121

121:                                              ; preds = %113, %37
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4293092, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4308732, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_tpc_mask(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r419a3c(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp102_grctx_generate_r408840(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4229184
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %8 = and i32 %7, -4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4229184
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 3972842}
!9 = !{i64 2151512295}
!10 = !{i64 2151513517}
!11 = !{i64 3972424}
