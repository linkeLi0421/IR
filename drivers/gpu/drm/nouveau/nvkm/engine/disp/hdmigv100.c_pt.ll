; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigv100.c"
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
define dso_local void @gv100_hdmi_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
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
  %23 = shl i32 %1, 10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false), !annotation !8
  %24 = zext i8 %6 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %10, ptr noundef %5, i32 noundef %24) #4
  %25 = zext i8 %8 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %11, ptr noundef %7, i32 noundef %25) #4
  br i1 %2, label %56, label %26

26:                                               ; preds = %9
  %27 = add i32 %22, 6383040
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %27
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %32 = and i32 %31, -1073741825
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr i8, ptr %33, i32 %27
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #4, !srcloc !12
  %35 = add i32 %23, 7274752
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %39 = and i32 %38, -2
  %40 = load ptr, ptr %28, align 4
  %41 = getelementptr i8, ptr %40, i32 %35
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #4, !srcloc !12
  %42 = add i32 %23, 7274688
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %46 = and i32 %45, -2
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr i8, ptr %47, i32 %42
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #4, !srcloc !12
  %49 = add i32 %23, 7274496
  %50 = load ptr, ptr %28, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %53 = and i32 %52, -2
  %54 = load ptr, ptr %28, align 4
  %55 = getelementptr i8, ptr %54, i32 %49
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #4, !srcloc !12
  br label %170

56:                                               ; preds = %9
  %57 = add i32 %23, 7274496
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %62 = and i32 %61, -2
  %63 = load ptr, ptr %58, align 4
  %64 = getelementptr i8, ptr %63, i32 %57
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #4, !srcloc !12
  %65 = icmp eq i8 %6, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %56
  %67 = load i32, ptr %10, align 4
  %68 = load ptr, ptr %58, align 4
  %69 = add i32 %23, 7274504
  %70 = getelementptr i8, ptr %68, i32 %69
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %67) #4, !srcloc !12
  %71 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %58, align 4
  %74 = add i32 %23, 7274508
  %75 = getelementptr i8, ptr %73, i32 %74
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %72) #4, !srcloc !12
  %76 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %58, align 4
  %79 = add i32 %23, 7274512
  %80 = getelementptr i8, ptr %78, i32 %79
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #4, !srcloc !12
  %81 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %58, align 4
  %84 = add i32 %23, 7274516
  %85 = getelementptr i8, ptr %83, i32 %84
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %82) #4, !srcloc !12
  %86 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr %58, align 4
  %89 = add i32 %23, 7274520
  %90 = getelementptr i8, ptr %88, i32 %89
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #4, !srcloc !12
  %91 = load ptr, ptr %58, align 4
  %92 = getelementptr i8, ptr %91, i32 %57
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %94 = or i32 %93, 1
  %95 = load ptr, ptr %58, align 4
  %96 = getelementptr i8, ptr %95, i32 %57
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #4, !srcloc !12
  br label %97

97:                                               ; preds = %66, %56
  %98 = add i32 %23, 7274752
  %99 = load ptr, ptr %58, align 4
  %100 = getelementptr i8, ptr %99, i32 %98
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %102 = and i32 %101, -65538
  %103 = load ptr, ptr %58, align 4
  %104 = getelementptr i8, ptr %103, i32 %98
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #4, !srcloc !12
  %105 = icmp eq i8 %8, 0
  br i1 %105, label %142, label %106

106:                                              ; preds = %97
  %107 = load i32, ptr %11, align 4
  %108 = load ptr, ptr %58, align 4
  %109 = add i32 %23, 7274760
  %110 = getelementptr i8, ptr %108, i32 %109
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %107) #4, !srcloc !12
  %111 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %58, align 4
  %114 = add i32 %23, 7274764
  %115 = getelementptr i8, ptr %113, i32 %114
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %112) #4, !srcloc !12
  %116 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %58, align 4
  %119 = add i32 %23, 7274768
  %120 = getelementptr i8, ptr %118, i32 %119
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %117) #4, !srcloc !12
  %121 = load ptr, ptr %58, align 4
  %122 = add i32 %23, 7274772
  %123 = getelementptr i8, ptr %121, i32 %122
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 0) #4, !srcloc !12
  %124 = load ptr, ptr %58, align 4
  %125 = add i32 %23, 7274776
  %126 = getelementptr i8, ptr %124, i32 %125
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #4, !srcloc !12
  %127 = load ptr, ptr %58, align 4
  %128 = add i32 %23, 7274780
  %129 = getelementptr i8, ptr %127, i32 %128
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 0) #4, !srcloc !12
  %130 = load ptr, ptr %58, align 4
  %131 = add i32 %23, 7274784
  %132 = getelementptr i8, ptr %130, i32 %131
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 0) #4, !srcloc !12
  %133 = load ptr, ptr %58, align 4
  %134 = add i32 %23, 7274788
  %135 = getelementptr i8, ptr %133, i32 %134
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #4, !srcloc !12
  %136 = load ptr, ptr %58, align 4
  %137 = getelementptr i8, ptr %136, i32 %98
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %139 = or i32 %138, 1
  %140 = load ptr, ptr %58, align 4
  %141 = getelementptr i8, ptr %140, i32 %98
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #4, !srcloc !12
  br label %142

142:                                              ; preds = %106, %97
  %143 = add i32 %23, 7274688
  %144 = load ptr, ptr %58, align 4
  %145 = getelementptr i8, ptr %144, i32 %143
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %147 = and i32 %146, -2
  %148 = load ptr, ptr %58, align 4
  %149 = getelementptr i8, ptr %148, i32 %143
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #4, !srcloc !12
  %150 = load ptr, ptr %58, align 4
  %151 = add i32 %23, 7274700
  %152 = getelementptr i8, ptr %150, i32 %151
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 16) #4, !srcloc !12
  %153 = load ptr, ptr %58, align 4
  %154 = getelementptr i8, ptr %153, i32 %143
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %156 = or i32 %155, 1
  %157 = load ptr, ptr %58, align 4
  %158 = getelementptr i8, ptr %157, i32 %143
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #4, !srcloc !12
  %159 = load ptr, ptr %58, align 4
  %160 = add i32 %23, 7274624
  %161 = getelementptr i8, ptr %159, i32 %160
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 -2113929216) #4, !srcloc !12
  %162 = add i32 %22, 6383040
  %163 = load ptr, ptr %58, align 4
  %164 = getelementptr i8, ptr %163, i32 %162
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %166 = and i32 %165, -1075773568
  %167 = or i32 %166, %21
  %168 = load ptr, ptr %58, align 4
  %169 = getelementptr i8, ptr %168, i32 %162
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #4, !srcloc !12
  br label %170

170:                                              ; preds = %142, %26
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
!9 = !{i64 3951605}
!10 = !{i64 2151491058}
!11 = !{i64 2151492280}
!12 = !{i64 3951187}
