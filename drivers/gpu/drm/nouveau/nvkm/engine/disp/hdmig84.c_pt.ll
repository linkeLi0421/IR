; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmig84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmig84.c"
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
define dso_local void @g84_hdmi_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
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
  %22 = shl i32 %1, 11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false), !annotation !8
  %23 = zext i8 %6 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %10, ptr noundef %5, i32 noundef %23) #4
  %24 = zext i8 %8 to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %11, ptr noundef %7, i32 noundef %24) #4
  %25 = and i32 %16, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %9
  %28 = add i32 %22, 6383012
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %33 = and i32 %32, -1073741825
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 %28
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #4, !srcloc !12
  %36 = add i32 %22, 6382908
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %40 = and i32 %39, -2
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr i8, ptr %41, i32 %36
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #4, !srcloc !12
  %43 = add i32 %22, 6382880
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %47 = and i32 %46, -2
  %48 = load ptr, ptr %29, align 4
  %49 = getelementptr i8, ptr %48, i32 %43
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #4, !srcloc !12
  %50 = add i32 %22, 6382848
  %51 = load ptr, ptr %29, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %54 = and i32 %53, -2
  %55 = load ptr, ptr %29, align 4
  %56 = getelementptr i8, ptr %55, i32 %50
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #4, !srcloc !12
  br label %200

57:                                               ; preds = %9
  %58 = add i32 %22, 6382880
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %63 = and i32 %62, -2
  %64 = load ptr, ptr %59, align 4
  %65 = getelementptr i8, ptr %64, i32 %58
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #4, !srcloc !12
  %66 = icmp eq i8 %6, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %57
  %68 = load i32, ptr %10, align 4
  %69 = load ptr, ptr %59, align 4
  %70 = add i32 %22, 6382888
  %71 = getelementptr i8, ptr %69, i32 %70
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #4, !srcloc !12
  %72 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %59, align 4
  %75 = add i32 %22, 6382892
  %76 = getelementptr i8, ptr %74, i32 %75
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #4, !srcloc !12
  %77 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %59, align 4
  %80 = add i32 %22, 6382896
  %81 = getelementptr i8, ptr %79, i32 %80
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %78) #4, !srcloc !12
  %82 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %59, align 4
  %85 = add i32 %22, 6382900
  %86 = getelementptr i8, ptr %84, i32 %85
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %83) #4, !srcloc !12
  %87 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %10, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %59, align 4
  %90 = add i32 %22, 6382904
  %91 = getelementptr i8, ptr %89, i32 %90
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %88) #4, !srcloc !12
  %92 = load ptr, ptr %59, align 4
  %93 = getelementptr i8, ptr %92, i32 %58
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %95 = or i32 %94, 1
  %96 = load ptr, ptr %59, align 4
  %97 = getelementptr i8, ptr %96, i32 %58
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #4, !srcloc !12
  br label %98

98:                                               ; preds = %67, %57
  %99 = add i32 %22, 6382848
  %100 = load ptr, ptr %59, align 4
  %101 = getelementptr i8, ptr %100, i32 %99
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %103 = and i32 %102, -2
  %104 = load ptr, ptr %59, align 4
  %105 = getelementptr i8, ptr %104, i32 %99
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #4, !srcloc !12
  %106 = load ptr, ptr %59, align 4
  %107 = add i32 %22, 6382856
  %108 = getelementptr i8, ptr %106, i32 %107
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 655748) #4, !srcloc !12
  %109 = load ptr, ptr %59, align 4
  %110 = add i32 %22, 6382860
  %111 = getelementptr i8, ptr %109, i32 %110
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 113) #4, !srcloc !12
  %112 = load ptr, ptr %59, align 4
  %113 = add i32 %22, 6382864
  %114 = getelementptr i8, ptr %112, i32 %113
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 0) #4, !srcloc !12
  %115 = load ptr, ptr %59, align 4
  %116 = getelementptr i8, ptr %115, i32 %99
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %118 = or i32 %117, 1
  %119 = load ptr, ptr %59, align 4
  %120 = getelementptr i8, ptr %119, i32 %99
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #4, !srcloc !12
  %121 = add i32 %22, 6382908
  %122 = load ptr, ptr %59, align 4
  %123 = getelementptr i8, ptr %122, i32 %121
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %125 = and i32 %124, -65538
  %126 = or i32 %125, 65536
  %127 = load ptr, ptr %59, align 4
  %128 = getelementptr i8, ptr %127, i32 %121
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #4, !srcloc !12
  %129 = icmp eq i8 %8, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %98
  %131 = load i32, ptr %11, align 4
  %132 = load ptr, ptr %59, align 4
  %133 = add i32 %22, 6382916
  %134 = getelementptr i8, ptr %132, i32 %133
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %131) #4, !srcloc !12
  %135 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %59, align 4
  %138 = add i32 %22, 6382920
  %139 = getelementptr i8, ptr %137, i32 %138
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %136) #4, !srcloc !12
  %140 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %11, i32 0, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = load ptr, ptr %59, align 4
  %143 = add i32 %22, 6382924
  %144 = getelementptr i8, ptr %142, i32 %143
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %141) #4, !srcloc !12
  %145 = load ptr, ptr %59, align 4
  %146 = getelementptr i8, ptr %145, i32 %121
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %148 = or i32 %147, 65537
  %149 = load ptr, ptr %59, align 4
  %150 = getelementptr i8, ptr %149, i32 %121
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #4, !srcloc !12
  br label %151

151:                                              ; preds = %130, %98
  %152 = add i32 %22, 6383056
  %153 = load ptr, ptr %59, align 4
  %154 = getelementptr i8, ptr %153, i32 %152
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %156 = and i32 %155, -458754
  %157 = or i32 %156, 65537
  %158 = load ptr, ptr %59, align 4
  %159 = getelementptr i8, ptr %158, i32 %152
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #4, !srcloc !12
  %160 = add i32 %22, 6382952
  %161 = load ptr, ptr %59, align 4
  %162 = getelementptr i8, ptr %161, i32 %160
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %164 = and i32 %163, -65794
  %165 = load ptr, ptr %59, align 4
  %166 = getelementptr i8, ptr %165, i32 %160
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #4, !srcloc !12
  %167 = add i32 %22, 6382968
  %168 = load ptr, ptr %59, align 4
  %169 = getelementptr i8, ptr %168, i32 %167
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %171 = or i32 %170, -2147483648
  %172 = load ptr, ptr %59, align 4
  %173 = getelementptr i8, ptr %172, i32 %167
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #4, !srcloc !12
  %174 = load ptr, ptr %59, align 4
  %175 = getelementptr i8, ptr %174, i32 6386492
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %177 = or i32 %176, 1048576
  %178 = load ptr, ptr %59, align 4
  %179 = getelementptr i8, ptr %178, i32 6386492
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #4, !srcloc !12
  %180 = load ptr, ptr %59, align 4
  %181 = getelementptr i8, ptr %180, i32 6386492
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %183 = or i32 %182, 268435456
  %184 = load ptr, ptr %59, align 4
  %185 = getelementptr i8, ptr %184, i32 6386492
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %183) #4, !srcloc !12
  %186 = load ptr, ptr %59, align 4
  %187 = getelementptr i8, ptr %186, i32 6386492
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %189 = and i32 %188, -1048577
  %190 = load ptr, ptr %59, align 4
  %191 = getelementptr i8, ptr %190, i32 6386492
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %189) #4, !srcloc !12
  %192 = add i32 %22, 6383012
  %193 = load ptr, ptr %59, align 4
  %194 = getelementptr i8, ptr %193, i32 %192
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %196 = and i32 %195, -1595867264
  %197 = or i32 %196, %21
  %198 = load ptr, ptr %59, align 4
  %199 = getelementptr i8, ptr %198, i32 %192
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #4, !srcloc !12
  br label %200

200:                                              ; preds = %151, %27
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
!9 = !{i64 3952033}
!10 = !{i64 2151491486}
!11 = !{i64 2151492708}
!12 = !{i64 3951615}
