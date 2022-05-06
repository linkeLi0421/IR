; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.144, %struct.anon.145, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.144 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.145 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_nvdec = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.103 }
%struct.anon.103 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.121, %struct.anon.122, %struct.nvkm_engine }
%struct.anon.121 = type { i32, ptr, i32, i8 }
%struct.anon.122 = type { i32, ptr, i32, i8 }
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_load_header = type { i32, i32, i32, i32, i32, [0 x i32] }

@.str = private unnamed_addr constant [15 x i8] c"nvdec/scrubber\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gp102_fb = internal constant %struct.nvkm_fb_func { ptr @gf100_fb_dtor, ptr null, ptr @gf100_fb_oneinit, ptr @gp100_fb_init, ptr @gp100_fb_init_remapper, ptr @gm200_fb_init_page, ptr null, ptr null, %struct.anon { ptr @gp102_fb_vpr_scrub_required, ptr @gp102_fb_vpr_scrub }, %struct.anon.0 zeroinitializer, ptr @gp100_ram_new, i8 0, ptr null }, align 4
@__UNIQUE_ID_firmware252 = internal constant [41 x i8] c"firmware=nvidia/gp102/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [41 x i8] c"firmware=nvidia/gp104/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [41 x i8] c"firmware=nvidia/gp106/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [41 x i8] c"firmware=nvidia/gp107/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [41 x i8] c"firmware=nvidia/gp108/nvdec/scrubber.bin\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_fb_vpr_scrub(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 61
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_nvdec, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 2
  %9 = tail call i32 @nvkm_falcon_get(ptr noundef %7, ptr noundef %2) #3
  %10 = load ptr, ptr %8, align 4
  %11 = tail call ptr @nvfw_bin_hdr(ptr noundef %2, ptr noundef %10) #3
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %11, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call ptr @nvfw_hs_header(ptr noundef %2, ptr noundef %15) #3
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.nvfw_hs_header, ptr %16, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call ptr @nvfw_hs_load_header(ptr noundef %2, ptr noundef %20) #3
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %11, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = getelementptr inbounds %struct.nvfw_hs_header, ptr %16, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %22, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvfw_hs_header, ptr %16, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %22, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_nvdec, ptr %6, i32 0, i32 2, i32 10
  %35 = load i8, ptr %34, align 2, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr i8, ptr %25, i32 %29
  %38 = getelementptr inbounds %struct.nvfw_hs_header, ptr %16, i32 0, i32 2
  %39 = getelementptr inbounds %struct.nvfw_hs_header, ptr %16, i32 0, i32 3
  %40 = getelementptr inbounds %struct.nvfw_hs_header, ptr %16, i32 0, i32 1
  %41 = select i1 %36, ptr %39, ptr %40
  %42 = select i1 %36, ptr %38, ptr %16
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %22, i32 %43
  %45 = getelementptr i8, ptr %44, i32 %33
  %46 = load i32, ptr %41, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %45, i32 %46, i1 false)
  %47 = tail call i32 @nvkm_falcon_reset(ptr noundef %7) #3
  tail call void @nvkm_falcon_bind_context(ptr noundef %7, ptr noundef null) #3
  %48 = load i32, ptr %21, align 4
  %49 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %21, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %48, 8
  %52 = trunc i32 %51 to i16
  tail call void @nvkm_falcon_load_imem(ptr noundef %7, ptr noundef %25, i32 noundef %48, i32 noundef %50, i16 noundef zeroext %52, i8 noundef zeroext 0, i1 noundef zeroext false) #3
  %53 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %21, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %25, i32 %54
  %56 = add i32 %54, 255
  %57 = and i32 %56, -256
  %58 = getelementptr %struct.nvfw_hs_load_header, ptr %21, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %54, 8
  %61 = trunc i32 %60 to i16
  tail call void @nvkm_falcon_load_imem(ptr noundef %7, ptr noundef %55, i32 noundef %57, i32 noundef %59, i16 noundef zeroext %61, i8 noundef zeroext 0, i1 noundef zeroext true) #3
  %62 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %21, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %25, i32 %63
  %65 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %21, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %7, ptr noundef %64, i32 noundef 0, i32 noundef %66, i8 noundef zeroext 0) #3
  tail call void @nvkm_falcon_set_start_addr(ptr noundef %7, i32 noundef 0) #3
  tail call void @nvkm_falcon_start(ptr noundef %7) #3
  %67 = tail call i32 @nvkm_falcon_wait_for_halt(ptr noundef %7, i32 noundef 500) #3
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %1
  %70 = tail call i32 @nvkm_falcon_reset(ptr noundef %7) #3
  br label %71

71:                                               ; preds = %69, %1
  %72 = phi i32 [ %67, %69 ], [ -110, %1 ]
  tail call void @nvkm_falcon_put(ptr noundef %7, ptr noundef %2) #3
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bin_hdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_load_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_bind_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_set_start_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_wait_for_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @gp102_fb_vpr_scrub_required(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1051856
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #3, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 1051856
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %10 = and i32 %9, 16
  %11 = icmp ne i32 %10, 0
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_fb_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @gf100_fb_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 2
  %12 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %11) #3
  br label %13

13:                                               ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_fb_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_fb_new_(ptr noundef nonnull @gp102_fb, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nvkm_fb, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %8, i32 0, i32 2
  %11 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %10) #3
  br label %12

12:                                               ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_fb_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_fb_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_fb_init_remapper(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_fb_init_page(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_ram_new(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2151490877}
!10 = !{i64 3949784}
!11 = !{i64 3950202}
!12 = !{i64 2151489655}
