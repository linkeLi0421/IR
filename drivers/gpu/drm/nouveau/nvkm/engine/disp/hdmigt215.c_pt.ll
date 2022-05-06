; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigt215.c"
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
define dso_local void @gt215_hdmi_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.packed_hdmi_infoframe, align 4
  %11 = alloca %struct.packed_hdmi_infoframe, align 4
  %12 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = select i1 %2, i32 1593835520, i32 520093696
  %17 = zext i8 %3 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %16
  %20 = zext i8 %4 to i32
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false), !annotation !8
  %25 = zext i8 %6 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %10, ptr noundef %5, i32 noundef %25) #4
  %26 = zext i8 %8 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %11, ptr noundef %7, i32 noundef %26) #4
  %27 = and i32 %16, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %9
  %30 = add i32 %24, 6407588
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %35 = and i32 %34, -1073741825
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr i8, ptr %36, i32 %30
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #4, !srcloc !12
  %38 = add i32 %24, 6407484
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %42 = and i32 %41, -2
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr i8, ptr %43, i32 %38
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #4, !srcloc !12
  %45 = add i32 %24, 6407456
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr i8, ptr %46, i32 %45
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %49 = and i32 %48, -2
  %50 = load ptr, ptr %31, align 4
  %51 = getelementptr i8, ptr %50, i32 %45
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #4, !srcloc !12
  %52 = add i32 %24, 6407424
  %53 = load ptr, ptr %31, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %56 = and i32 %55, -2
  %57 = load ptr, ptr %31, align 4
  %58 = getelementptr i8, ptr %57, i32 %52
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #4, !srcloc !12
  br label %202

59:                                               ; preds = %9
  %60 = add i32 %24, 6407456
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 %60
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %65 = and i32 %64, -2
  %66 = load ptr, ptr %61, align 4
  %67 = getelementptr i8, ptr %66, i32 %60
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #4, !srcloc !12
  %68 = icmp eq i8 %6, 0
  br i1 %68, label %100, label %69

69:                                               ; preds = %59
  %70 = load i32, ptr %10, align 4
  %71 = load ptr, ptr %61, align 4
  %72 = add i32 %24, 6407464
  %73 = getelementptr i8, ptr %71, i32 %72
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %70) #4, !srcloc !12
  %74 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %61, align 4
  %77 = add i32 %24, 6407468
  %78 = getelementptr i8, ptr %76, i32 %77
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #4, !srcloc !12
  %79 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %61, align 4
  %82 = add i32 %24, 6407472
  %83 = getelementptr i8, ptr %81, i32 %82
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %80) #4, !srcloc !12
  %84 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %61, align 4
  %87 = add i32 %24, 6407476
  %88 = getelementptr i8, ptr %86, i32 %87
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %85) #4, !srcloc !12
  %89 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %61, align 4
  %92 = add i32 %24, 6407480
  %93 = getelementptr i8, ptr %91, i32 %92
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %90) #4, !srcloc !12
  %94 = load ptr, ptr %61, align 4
  %95 = getelementptr i8, ptr %94, i32 %60
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %97 = or i32 %96, 1
  %98 = load ptr, ptr %61, align 4
  %99 = getelementptr i8, ptr %98, i32 %60
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #4, !srcloc !12
  br label %100

100:                                              ; preds = %69, %59
  %101 = add i32 %24, 6407424
  %102 = load ptr, ptr %61, align 4
  %103 = getelementptr i8, ptr %102, i32 %101
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %105 = and i32 %104, -2
  %106 = load ptr, ptr %61, align 4
  %107 = getelementptr i8, ptr %106, i32 %101
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #4, !srcloc !12
  %108 = load ptr, ptr %61, align 4
  %109 = add i32 %24, 6407432
  %110 = getelementptr i8, ptr %108, i32 %109
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 655748) #4, !srcloc !12
  %111 = load ptr, ptr %61, align 4
  %112 = add i32 %24, 6407436
  %113 = getelementptr i8, ptr %111, i32 %112
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 113) #4, !srcloc !12
  %114 = load ptr, ptr %61, align 4
  %115 = add i32 %24, 6407440
  %116 = getelementptr i8, ptr %114, i32 %115
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #4, !srcloc !12
  %117 = load ptr, ptr %61, align 4
  %118 = getelementptr i8, ptr %117, i32 %101
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %120 = or i32 %119, 1
  %121 = load ptr, ptr %61, align 4
  %122 = getelementptr i8, ptr %121, i32 %101
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #4, !srcloc !12
  %123 = add i32 %24, 6407484
  %124 = load ptr, ptr %61, align 4
  %125 = getelementptr i8, ptr %124, i32 %123
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %127 = and i32 %126, -65538
  %128 = or i32 %127, 65536
  %129 = load ptr, ptr %61, align 4
  %130 = getelementptr i8, ptr %129, i32 %123
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #4, !srcloc !12
  %131 = icmp eq i8 %8, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %100
  %133 = load i32, ptr %11, align 4
  %134 = load ptr, ptr %61, align 4
  %135 = add i32 %24, 6407492
  %136 = getelementptr i8, ptr %134, i32 %135
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %133) #4, !srcloc !12
  %137 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %61, align 4
  %140 = add i32 %24, 6407496
  %141 = getelementptr i8, ptr %139, i32 %140
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %138) #4, !srcloc !12
  %142 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %61, align 4
  %145 = add i32 %24, 6407500
  %146 = getelementptr i8, ptr %144, i32 %145
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %143) #4, !srcloc !12
  %147 = load ptr, ptr %61, align 4
  %148 = getelementptr i8, ptr %147, i32 %123
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %150 = or i32 %149, 65537
  %151 = load ptr, ptr %61, align 4
  %152 = getelementptr i8, ptr %151, i32 %123
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #4, !srcloc !12
  br label %153

153:                                              ; preds = %132, %100
  %154 = add i32 %24, 6407632
  %155 = load ptr, ptr %61, align 4
  %156 = getelementptr i8, ptr %155, i32 %154
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %158 = and i32 %157, -458754
  %159 = or i32 %158, 65537
  %160 = load ptr, ptr %61, align 4
  %161 = getelementptr i8, ptr %160, i32 %154
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #4, !srcloc !12
  %162 = add i32 %24, 6407528
  %163 = load ptr, ptr %61, align 4
  %164 = getelementptr i8, ptr %163, i32 %162
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %166 = and i32 %165, -65794
  %167 = load ptr, ptr %61, align 4
  %168 = getelementptr i8, ptr %167, i32 %162
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #4, !srcloc !12
  %169 = add i32 %24, 6407544
  %170 = load ptr, ptr %61, align 4
  %171 = getelementptr i8, ptr %170, i32 %169
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %173 = or i32 %172, -2147483648
  %174 = load ptr, ptr %61, align 4
  %175 = getelementptr i8, ptr %174, i32 %169
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #4, !srcloc !12
  %176 = load ptr, ptr %61, align 4
  %177 = getelementptr i8, ptr %176, i32 6386492
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %179 = or i32 %178, 1048576
  %180 = load ptr, ptr %61, align 4
  %181 = getelementptr i8, ptr %180, i32 6386492
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #4, !srcloc !12
  %182 = load ptr, ptr %61, align 4
  %183 = getelementptr i8, ptr %182, i32 6386492
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %185 = or i32 %184, 268435456
  %186 = load ptr, ptr %61, align 4
  %187 = getelementptr i8, ptr %186, i32 6386492
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #4, !srcloc !12
  %188 = load ptr, ptr %61, align 4
  %189 = getelementptr i8, ptr %188, i32 6386492
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %191 = and i32 %190, -1048577
  %192 = load ptr, ptr %61, align 4
  %193 = getelementptr i8, ptr %192, i32 6386492
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #4, !srcloc !12
  %194 = add i32 %24, 6407588
  %195 = load ptr, ptr %61, align 4
  %196 = getelementptr i8, ptr %195, i32 %194
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %198 = and i32 %197, -1595867264
  %199 = or i32 %198, %21
  %200 = load ptr, ptr %61, align 4
  %201 = getelementptr i8, ptr %200, i32 %194
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #4, !srcloc !12
  br label %202

202:                                              ; preds = %153, %29
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
!9 = !{i64 3952036}
!10 = !{i64 2151491489}
!11 = !{i64 2151492711}
!12 = !{i64 3951618}
