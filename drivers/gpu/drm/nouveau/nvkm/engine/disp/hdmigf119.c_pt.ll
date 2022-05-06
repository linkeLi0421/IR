; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.135, %struct.anon.136 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.135 = type { i8, i8, i8, i8 }
%struct.anon.136 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_hdmi_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.packed_hdmi_infoframe, align 4
  %11 = alloca %struct.packed_hdmi_infoframe, align 4
  %12 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = select i1 %2, i32 1073741824, i32 0
  %17 = zext i8 %3 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %16
  %20 = zext i8 %4 to i32
  %21 = or i32 %19, %20
  %22 = shl i32 %1, 11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false), !annotation !8
  %23 = zext i8 %6 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %10, ptr noundef %5, i32 noundef %23) #4
  %24 = zext i8 %8 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %11, ptr noundef %7, i32 noundef %24) #4
  br i1 %2, label %55, label %25

25:                                               ; preds = %9
  %26 = add i32 %22, 6383512
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %26
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %31 = and i32 %30, -1073741825
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 %26
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !12
  %34 = add i32 %22, 6383408
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %38 = and i32 %37, -2
  %39 = load ptr, ptr %27, align 4
  %40 = getelementptr i8, ptr %39, i32 %34
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #4, !srcloc !12
  %41 = add i32 %22, 6383524
  %42 = load ptr, ptr %27, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %45 = and i32 %44, -2
  %46 = load ptr, ptr %27, align 4
  %47 = getelementptr i8, ptr %46, i32 %41
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #4, !srcloc !12
  %48 = add i32 %22, 6383380
  %49 = load ptr, ptr %27, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %52 = and i32 %51, -2
  %53 = load ptr, ptr %27, align 4
  %54 = getelementptr i8, ptr %53, i32 %48
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #4, !srcloc !12
  br label %152

55:                                               ; preds = %9
  %56 = add i32 %22, 6383380
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 %56
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %61 = and i32 %60, -2
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr i8, ptr %62, i32 %56
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #4, !srcloc !12
  %64 = icmp eq i8 %6, 0
  br i1 %64, label %96, label %65

65:                                               ; preds = %55
  %66 = load i32, ptr %10, align 4
  %67 = load ptr, ptr %57, align 4
  %68 = add i32 %22, 6383388
  %69 = getelementptr i8, ptr %67, i32 %68
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #4, !srcloc !12
  %70 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %57, align 4
  %73 = add i32 %22, 6383392
  %74 = getelementptr i8, ptr %72, i32 %73
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #4, !srcloc !12
  %75 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %57, align 4
  %78 = add i32 %22, 6383396
  %79 = getelementptr i8, ptr %77, i32 %78
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #4, !srcloc !12
  %80 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %57, align 4
  %83 = add i32 %22, 6383400
  %84 = getelementptr i8, ptr %82, i32 %83
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %81) #4, !srcloc !12
  %85 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %57, align 4
  %88 = add i32 %22, 6383404
  %89 = getelementptr i8, ptr %87, i32 %88
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %86) #4, !srcloc !12
  %90 = load ptr, ptr %57, align 4
  %91 = getelementptr i8, ptr %90, i32 %56
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %93 = or i32 %92, 1
  %94 = load ptr, ptr %57, align 4
  %95 = getelementptr i8, ptr %94, i32 %56
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #4, !srcloc !12
  br label %96

96:                                               ; preds = %65, %55
  %97 = add i32 %22, 6383408
  %98 = load ptr, ptr %57, align 4
  %99 = getelementptr i8, ptr %98, i32 %97
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %101 = and i32 %100, -65538
  %102 = or i32 %101, 65536
  %103 = load ptr, ptr %57, align 4
  %104 = getelementptr i8, ptr %103, i32 %97
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #4, !srcloc !12
  %105 = icmp eq i8 %8, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %96
  %107 = load i32, ptr %11, align 4
  %108 = load ptr, ptr %57, align 4
  %109 = add i32 %22, 6383416
  %110 = getelementptr i8, ptr %108, i32 %109
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %107) #4, !srcloc !12
  %111 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %57, align 4
  %114 = add i32 %22, 6383420
  %115 = getelementptr i8, ptr %113, i32 %114
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %112) #4, !srcloc !12
  %116 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %57, align 4
  %119 = add i32 %22, 6383424
  %120 = getelementptr i8, ptr %118, i32 %119
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %117) #4, !srcloc !12
  %121 = load ptr, ptr %57, align 4
  %122 = getelementptr i8, ptr %121, i32 %97
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %124 = or i32 %123, 1
  %125 = load ptr, ptr %57, align 4
  %126 = getelementptr i8, ptr %125, i32 %97
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #4, !srcloc !12
  br label %127

127:                                              ; preds = %106, %96
  %128 = add i32 %22, 6383524
  %129 = load ptr, ptr %57, align 4
  %130 = getelementptr i8, ptr %129, i32 %128
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %132 = and i32 %131, -2
  %133 = load ptr, ptr %57, align 4
  %134 = getelementptr i8, ptr %133, i32 %128
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #4, !srcloc !12
  %135 = load ptr, ptr %57, align 4
  %136 = add i32 %22, 6383532
  %137 = getelementptr i8, ptr %135, i32 %136
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 16) #4, !srcloc !12
  %138 = load ptr, ptr %57, align 4
  %139 = getelementptr i8, ptr %138, i32 %128
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %141 = or i32 %140, 1
  %142 = load ptr, ptr %57, align 4
  %143 = getelementptr i8, ptr %142, i32 %128
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #4, !srcloc !12
  %144 = add i32 %22, 6383512
  %145 = load ptr, ptr %57, align 4
  %146 = getelementptr i8, ptr %145, i32 %144
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %148 = and i32 %147, -1075773568
  %149 = or i32 %148, %21
  %150 = load ptr, ptr %57, align 4
  %151 = getelementptr i8, ptr %150, i32 %144
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #4, !srcloc !12
  br label %152

152:                                              ; preds = %127, %25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pack_hdmi_infoframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

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
!9 = !{i64 3951436}
!10 = !{i64 2151490889}
!11 = !{i64 2151492111}
!12 = !{i64 3951018}
