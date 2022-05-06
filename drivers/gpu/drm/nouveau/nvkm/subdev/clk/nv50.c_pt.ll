; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.120, %struct.anon.120 }
%struct.anon.120 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv50_clk = type { %struct.nvkm_clk, %struct.nv50_clk_hwsq }
%struct.nv50_clk_hwsq = type { %struct.hwsq, %struct.hwsq_reg, [2 x %struct.hwsq_reg], [2 x %struct.hwsq_reg], %struct.hwsq_reg, %struct.hwsq_reg }
%struct.hwsq = type { ptr, ptr, i32 }
%struct.hwsq_reg = type { i32, i8, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: unknown clock source %d %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: bad pll %06x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: ref: bad pll %06x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@nv50_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @nv50_clk_read, ptr @nv50_clk_calc, ptr @nv50_clk_prog, ptr @nv50_clk_tidy, ptr null, i32 0, [6 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 -1, i8 0, ptr @.str.3, i32 1000 }, %struct.nvkm_domain { i32 17, i8 -1, i8 0, ptr @.str.4, i32 1000 }, %struct.nvkm_domain { i32 18, i8 -1, i8 0, ptr @.str.5, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@switch.table.nv50_clk_new_ = private unnamed_addr constant [5 x i32] [i32 18432, i32 18176, i32 18432, i32 18176, i32 18432], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 49216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  switch i32 %1, label %288 [
    i32 0, label %9
    i32 1, label %297
    i32 2, label %12
    i32 3, label %20
    i32 4, label %23
    i32 8, label %27
    i32 15, label %33
    i32 17, label %89
    i32 18, label %143
    i32 27, label %198
    i32 28, label %257
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  br label %297

12:                                               ; preds = %2
  %13 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 27778
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %15) #8, !srcloc !10
  %17 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %15, i64 %16) #8, !srcloc !11
  %18 = lshr i64 %17, 11
  %19 = trunc i64 %18 to i32
  br label %297

20:                                               ; preds = %2
  %21 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 2) #7
  %22 = mul i32 %21, 3
  br label %297

23:                                               ; preds = %2
  %24 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 2) #7
  %25 = mul i32 %24, 3
  %26 = sdiv i32 %25, 2
  br label %297

27:                                               ; preds = %2
  %28 = and i32 %8, 805306368
  switch i32 %28, label %288 [
    i32 0, label %29
    i32 805306368, label %31
    i32 536870912, label %31
  ]

29:                                               ; preds = %27
  %30 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  br label %297

31:                                               ; preds = %27, %27
  %32 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 2) #7
  br label %297

33:                                               ; preds = %2
  %34 = and i32 %8, 1048576
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 16424
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 7
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i32 [ 0, %33 ], [ %41, %36 ]
  %44 = and i32 %8, 3
  switch i32 %44, label %88 [
    i32 0, label %45
    i32 1, label %48
    i32 2, label %50
    i32 3, label %85
  ]

45:                                               ; preds = %42
  %46 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  %47 = ashr i32 %46, %43
  br label %297

48:                                               ; preds = %42
  %49 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 28) #7
  br label %297

50:                                               ; preds = %42
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 49216
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr i8, ptr %56, i32 16416
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %59 = load ptr, ptr %52, align 4
  %60 = getelementptr i8, ptr %59, i32 16420
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %62 = tail call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef 16416) #7
  %63 = lshr i32 %61, 24
  %64 = lshr i32 %61, 16
  %65 = and i32 %64, 255
  %66 = and i32 %61, 255
  %67 = icmp slt i32 %58, 0
  %68 = icmp ne i32 %66, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %82

70:                                               ; preds = %50
  %71 = lshr i32 %61, 8
  %72 = and i32 %71, 255
  %73 = mul i32 %62, %72
  %74 = udiv i32 %73, %66
  %75 = and i32 %58, 1073742080
  %76 = icmp eq i32 %75, 1073741824
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = icmp eq i32 %65, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = mul i32 %74, %63
  %81 = udiv i32 %80, %65
  br label %82

82:                                               ; preds = %79, %77, %70, %50
  %83 = phi i32 [ %81, %79 ], [ %74, %70 ], [ 0, %50 ], [ 0, %77 ]
  %84 = lshr i32 %83, %43
  br label %297

85:                                               ; preds = %42
  %86 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef 16424)
  %87 = lshr i32 %86, %43
  br label %297

88:                                               ; preds = %42
  unreachable

89:                                               ; preds = %2
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i8, ptr %90, i32 16416
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 7
  %95 = and i32 %8, 48
  switch i32 %95, label %288 [
    i32 0, label %96
    i32 48, label %108
    i32 32, label %105
  ]

96:                                               ; preds = %89
  %97 = and i32 %8, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 8) #7
  %101 = ashr i32 %100, %94
  br label %297

102:                                              ; preds = %96
  %103 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  %104 = ashr i32 %103, %94
  br label %297

105:                                              ; preds = %89
  %106 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef 16424)
  %107 = lshr i32 %106, %94
  br label %297

108:                                              ; preds = %89
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 11
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 49216
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %114 = load ptr, ptr %110, align 4
  %115 = getelementptr i8, ptr %114, i32 16416
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %117 = load ptr, ptr %110, align 4
  %118 = getelementptr i8, ptr %117, i32 16420
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %120 = tail call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef 16416) #7
  %121 = lshr i32 %119, 24
  %122 = lshr i32 %119, 16
  %123 = and i32 %122, 255
  %124 = and i32 %119, 255
  %125 = icmp slt i32 %116, 0
  %126 = icmp ne i32 %124, 0
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %140

128:                                              ; preds = %108
  %129 = lshr i32 %119, 8
  %130 = and i32 %129, 255
  %131 = mul i32 %120, %130
  %132 = udiv i32 %131, %124
  %133 = and i32 %116, 1073742080
  %134 = icmp eq i32 %133, 1073741824
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = icmp eq i32 %123, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %135
  %138 = mul i32 %132, %121
  %139 = udiv i32 %138, %123
  br label %140

140:                                              ; preds = %137, %135, %128, %108
  %141 = phi i32 [ %139, %137 ], [ %132, %128 ], [ 0, %108 ], [ 0, %135 ]
  %142 = lshr i32 %141, %94
  br label %297

143:                                              ; preds = %2
  %144 = load ptr, ptr %5, align 4
  %145 = getelementptr i8, ptr %144, i32 16392
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 7
  %149 = load ptr, ptr %5, align 4
  %150 = getelementptr i8, ptr %149, i32 16392
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %152 = and i32 %151, 512
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %143
  %155 = trunc i32 %8 to i16
  %156 = and i16 %155, -16384
  switch i16 %156, label %288 [
    i16 0, label %157
    i16 -32768, label %160
    i16 -16384, label %160
  ]

157:                                              ; preds = %154
  %158 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  %159 = ashr i32 %158, %148
  br label %297

160:                                              ; preds = %154, %154
  %161 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  %162 = ashr i32 %161, %148
  br label %297

163:                                              ; preds = %143
  %164 = load ptr, ptr %3, align 4
  %165 = getelementptr inbounds %struct.nvkm_device, ptr %164, i32 0, i32 11
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr i8, ptr %166, i32 49216
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %169 = load ptr, ptr %165, align 4
  %170 = getelementptr i8, ptr %169, i32 16392
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %172 = load ptr, ptr %165, align 4
  %173 = getelementptr i8, ptr %172, i32 16396
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %175 = tail call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef 16392) #7
  %176 = lshr i32 %174, 24
  %177 = lshr i32 %174, 16
  %178 = and i32 %177, 255
  %179 = and i32 %174, 255
  %180 = icmp slt i32 %171, 0
  %181 = icmp ne i32 %179, 0
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %195

183:                                              ; preds = %163
  %184 = lshr i32 %174, 8
  %185 = and i32 %184, 255
  %186 = mul i32 %175, %185
  %187 = udiv i32 %186, %179
  %188 = and i32 %171, 1073742080
  %189 = icmp eq i32 %188, 1073741824
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = icmp eq i32 %178, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %190
  %193 = mul i32 %187, %176
  %194 = udiv i32 %193, %178
  br label %195

195:                                              ; preds = %192, %190, %183, %163
  %196 = phi i32 [ %194, %192 ], [ %187, %183 ], [ 0, %163 ], [ 0, %190 ]
  %197 = lshr i32 %196, %148
  br label %297

198:                                              ; preds = %2
  %199 = load ptr, ptr %3, align 4
  %200 = getelementptr inbounds %struct.nvkm_device, ptr %199, i32 0, i32 16
  %201 = load i32, ptr %200, align 4
  switch i32 %201, label %212 [
    i32 80, label %202
    i32 132, label %202
    i32 134, label %202
    i32 152, label %202
    i32 160, label %202
    i32 146, label %207
    i32 148, label %207
    i32 150, label %207
  ]

202:                                              ; preds = %198, %198, %198, %198, %198
  %203 = getelementptr inbounds %struct.nvkm_device, ptr %199, i32 0, i32 11
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 18176
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %212

207:                                              ; preds = %198, %198, %198
  %208 = getelementptr inbounds %struct.nvkm_device, ptr %199, i32 0, i32 11
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr i8, ptr %209, i32 18432
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %212

212:                                              ; preds = %207, %202, %198
  %213 = phi i32 [ %211, %207 ], [ %206, %202 ], [ 0, %198 ]
  %214 = lshr i32 %213, 8
  %215 = and i32 %214, 7
  %216 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %217 = load i32, ptr %216, align 4
  %218 = add i32 %217, -132
  %219 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 31)
  switch i32 %219, label %288 [
    i32 0, label %220
    i32 1, label %220
    i32 7, label %220
    i32 8, label %220
    i32 9, label %220
    i32 14, label %220
    i32 10, label %244
  ]

220:                                              ; preds = %212, %212, %212, %212, %212, %212
  %221 = lshr i32 %8, 10
  %222 = and i32 %221, 3
  switch i32 %222, label %243 [
    i32 0, label %223
    i32 1, label %297
    i32 2, label %231
    i32 3, label %240
  ]

223:                                              ; preds = %220
  %224 = icmp eq i32 %217, 160
  br i1 %224, label %225, label %228

225:                                              ; preds = %223
  %226 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 15) #7
  %227 = ashr i32 %226, %215
  br label %297

228:                                              ; preds = %223
  %229 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  %230 = ashr i32 %229, %215
  br label %297

231:                                              ; preds = %220
  %232 = and i32 %8, 16777216
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef 16424)
  %236 = lshr i32 %235, %215
  br label %297

237:                                              ; preds = %231
  %238 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef 16432)
  %239 = lshr i32 %238, %215
  br label %297

240:                                              ; preds = %220
  %241 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 15) #7
  %242 = ashr i32 %241, %215
  br label %297

243:                                              ; preds = %220
  unreachable

244:                                              ; preds = %212
  %245 = lshr i32 %8, 10
  %246 = and i32 %245, 3
  switch i32 %246, label %256 [
    i32 0, label %247
    i32 1, label %297
    i32 2, label %250
    i32 3, label %253
  ]

247:                                              ; preds = %244
  %248 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 15) #7
  %249 = ashr i32 %248, %215
  br label %297

250:                                              ; preds = %244
  %251 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 4) #7
  %252 = ashr i32 %251, %215
  br label %297

253:                                              ; preds = %244
  %254 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 18) #7
  %255 = ashr i32 %254, %215
  br label %297

256:                                              ; preds = %244
  unreachable

257:                                              ; preds = %2
  %258 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %259 = load i32, ptr %258, align 4
  switch i32 %259, label %288 [
    i32 80, label %260
    i32 160, label %260
    i32 132, label %263
    i32 134, label %263
    i32 146, label %263
    i32 148, label %263
    i32 150, label %263
    i32 152, label %263
  ]

260:                                              ; preds = %257, %257
  %261 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef 59408)
  %262 = lshr i32 %261, 2
  br label %297

263:                                              ; preds = %257, %257, %257, %257, %257, %257
  %264 = load ptr, ptr %3, align 4
  %265 = getelementptr inbounds %struct.nvkm_device, ptr %264, i32 0, i32 16
  %266 = load i32, ptr %265, align 4
  switch i32 %266, label %277 [
    i32 80, label %267
    i32 132, label %267
    i32 134, label %267
    i32 152, label %267
    i32 160, label %267
    i32 146, label %272
    i32 148, label %272
    i32 150, label %272
  ]

267:                                              ; preds = %263, %263, %263, %263, %263
  %268 = getelementptr inbounds %struct.nvkm_device, ptr %264, i32 0, i32 11
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr i8, ptr %269, i32 18176
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %277

272:                                              ; preds = %263, %263, %263
  %273 = getelementptr inbounds %struct.nvkm_device, ptr %264, i32 0, i32 11
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr i8, ptr %274, i32 18432
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %277

277:                                              ; preds = %272, %267, %263
  %278 = phi i32 [ %276, %272 ], [ %271, %267 ], [ 0, %263 ]
  %279 = and i32 %8, 201326592
  switch i32 %279, label %288 [
    i32 0, label %280
    i32 201326592, label %284
    i32 134217728, label %282
  ]

280:                                              ; preds = %277
  %281 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  br label %297

282:                                              ; preds = %277
  %283 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 2) #7
  br label %297

284:                                              ; preds = %277
  %285 = and i32 %278, 7
  %286 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 3) #7
  %287 = ashr i32 %286, %285
  br label %297

288:                                              ; preds = %277, %257, %212, %154, %89, %27, %2
  %289 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %290 = load i32, ptr %289, align 4
  %291 = icmp ugt i32 %290, 3
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = load ptr, ptr %3, align 4
  %294 = getelementptr inbounds %struct.nvkm_device, ptr %293, i32 0, i32 2
  %295 = load ptr, ptr %294, align 8
  %296 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %295, ptr noundef nonnull @.str, ptr noundef %296, i32 noundef %1, i32 noundef %8) #9
  br label %297

297:                                              ; preds = %292, %288, %284, %282, %280, %260, %253, %250, %247, %244, %240, %237, %234, %228, %225, %220, %195, %160, %157, %140, %105, %102, %99, %85, %82, %48, %45, %31, %29, %23, %20, %12, %9, %2
  %298 = phi i32 [ %283, %282 ], [ %287, %284 ], [ %281, %280 ], [ %262, %260 ], [ %255, %253 ], [ %252, %250 ], [ %249, %247 ], [ %242, %240 ], [ %236, %234 ], [ %239, %237 ], [ %227, %225 ], [ %230, %228 ], [ %162, %160 ], [ %159, %157 ], [ %197, %195 ], [ %107, %105 ], [ %142, %140 ], [ %101, %99 ], [ %104, %102 ], [ %87, %85 ], [ %84, %82 ], [ %49, %48 ], [ %47, %45 ], [ %32, %31 ], [ %30, %29 ], [ %26, %23 ], [ %22, %20 ], [ %19, %12 ], [ %11, %9 ], [ 100000, %2 ], [ 0, %220 ], [ 0, %244 ], [ -22, %292 ], [ -22, %288 ]
  ret i32 %298
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_pll(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 49216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = load ptr, ptr %5, align 4
  %13 = add i32 %1, 4
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %16 = tail call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef %1)
  %17 = icmp ne i32 %1, 16424
  %18 = and i32 %8, 1048576
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 160
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 28) #7
  br label %47

27:                                               ; preds = %21, %2
  %28 = lshr i32 %15, 24
  %29 = lshr i32 %15, 16
  %30 = and i32 %29, 255
  %31 = and i32 %15, 255
  %32 = icmp slt i32 %11, 0
  %33 = icmp ne i32 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = lshr i32 %15, 8
  %37 = and i32 %36, 255
  %38 = mul i32 %16, %37
  %39 = udiv i32 %38, %31
  %40 = and i32 %11, 1073742080
  %41 = icmp eq i32 %40, 1073741824
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = icmp eq i32 %30, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = mul i32 %39, %28
  %46 = udiv i32 %45, %30
  br label %47

47:                                               ; preds = %44, %42, %35, %27, %25
  %48 = phi i32 [ %26, %25 ], [ %46, %44 ], [ %39, %35 ], [ 0, %27 ], [ 0, %42 ]
  ret i32 %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nvbios_pll, align 4
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 28
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !12
  %20 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %21 = tail call i32 @nvkm_hwsq_init(ptr noundef %9, ptr noundef %20) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %962

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  store ptr %9, ptr %8, align 4
  %27 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1, i32 5
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1, i32 2
  %34 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1, i32 3
  br label %35

35:                                               ; preds = %45, %32
  %36 = phi i32 [ 0, %32 ], [ %47, %45 ]
  %37 = phi i32 [ %30, %32 ], [ %48, %45 ]
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %20, align 4
  %42 = load i32, ptr %33, align 4
  %43 = add i32 %42, %36
  %44 = load i32, ptr %28, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %41, i32 noundef %43, i32 noundef %44) #7
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, ptr %34, align 4
  %47 = add i32 %46, %36
  %48 = lshr i32 %37, 1
  %49 = icmp ult i32 %37, 2
  br i1 %49, label %50, label %35

50:                                               ; preds = %45, %23
  %51 = load ptr, ptr %20, align 4
  tail call void @nvkm_hwsq_nsec(ptr noundef %51, i32 noundef 8000) #7
  %52 = load ptr, ptr %20, align 4
  tail call void @nvkm_hwsq_setf(ptr noundef %52, i8 noundef zeroext 16, i32 noundef 0) #7
  %53 = load ptr, ptr %20, align 4
  tail call void @nvkm_hwsq_wait(ptr noundef %53, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %54 = icmp eq i32 %17, 0
  br i1 %54, label %188, label %55

55:                                               ; preds = %50
  %56 = icmp ugt i32 %15, %17
  br i1 %56, label %62, label %57

57:                                               ; preds = %80, %77, %74, %71, %68, %65, %62, %55
  %58 = phi i32 [ %15, %55 ], [ %63, %62 ], [ %66, %65 ], [ %69, %68 ], [ %72, %71 ], [ %75, %74 ], [ %78, %77 ], [ %81, %80 ]
  %59 = phi i32 [ 0, %55 ], [ 1, %62 ], [ 2, %65 ], [ 3, %68 ], [ 4, %71 ], [ 5, %74 ], [ 6, %77 ], [ 7, %80 ]
  store i32 %59, ptr %7, align 4
  %60 = zext i1 %56 to i32
  %61 = shl i32 %58, %60
  br label %85

62:                                               ; preds = %55
  %63 = lshr i32 %15, 1
  %64 = icmp ugt i32 %63, %17
  br i1 %64, label %65, label %57

65:                                               ; preds = %62
  %66 = lshr i32 %15, 2
  %67 = icmp ugt i32 %66, %17
  br i1 %67, label %68, label %57

68:                                               ; preds = %65
  %69 = lshr i32 %15, 3
  %70 = icmp ugt i32 %69, %17
  br i1 %70, label %71, label %57

71:                                               ; preds = %68
  %72 = lshr i32 %15, 4
  %73 = icmp ugt i32 %72, %17
  br i1 %73, label %74, label %57

74:                                               ; preds = %71
  %75 = lshr i32 %15, 5
  %76 = icmp ugt i32 %75, %17
  br i1 %76, label %77, label %57

77:                                               ; preds = %74
  %78 = lshr i32 %15, 6
  %79 = icmp ugt i32 %78, %17
  br i1 %79, label %80, label %57

80:                                               ; preds = %77
  %81 = lshr i32 %15, 7
  %82 = icmp ugt i32 %81, %17
  br i1 %82, label %83, label %57

83:                                               ; preds = %80
  %84 = lshr i32 %15, 8
  store i32 8, ptr %7, align 4
  br label %85

85:                                               ; preds = %83, %57
  %86 = phi i32 [ %59, %57 ], [ 8, %83 ]
  %87 = phi i32 [ %58, %57 ], [ %84, %83 ]
  %88 = phi i32 [ %61, %57 ], [ %15, %83 ]
  %89 = sub i32 %17, %87
  %90 = sub i32 %88, %17
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = add nsw i32 %86, -1
  store i32 %93, ptr %7, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = phi i32 [ %93, %92 ], [ %86, %85 ]
  %96 = phi i32 [ %88, %92 ], [ %87, %85 ]
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 152
  br i1 %99, label %132, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %10, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 11
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 49216
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %106 = load ptr, ptr %102, align 4
  %107 = getelementptr i8, ptr %106, i32 16432
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %109 = load ptr, ptr %102, align 4
  %110 = getelementptr i8, ptr %109, i32 16436
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %112 = tail call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef 16432) #7
  %113 = lshr i32 %111, 24
  %114 = lshr i32 %111, 16
  %115 = and i32 %114, 255
  %116 = and i32 %111, 255
  %117 = icmp slt i32 %108, 0
  %118 = icmp ne i32 %116, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %137

120:                                              ; preds = %100
  %121 = lshr i32 %111, 8
  %122 = and i32 %121, 255
  %123 = mul i32 %112, %122
  %124 = udiv i32 %123, %116
  %125 = and i32 %108, 1073742080
  %126 = icmp eq i32 %125, 1073741824
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = icmp eq i32 %115, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %127
  %130 = mul i32 %124, %113
  %131 = udiv i32 %130, %115
  br label %134

132:                                              ; preds = %94
  %133 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 4) #7
  br label %134

134:                                              ; preds = %132, %129, %120
  %135 = phi i32 [ %133, %132 ], [ %131, %129 ], [ %124, %120 ]
  %136 = icmp ugt i32 %135, %17
  br i1 %136, label %142, label %137

137:                                              ; preds = %160, %157, %154, %151, %148, %145, %142, %134, %127, %100
  %138 = phi i32 [ 0, %134 ], [ 1, %142 ], [ 1, %145 ], [ 1, %148 ], [ 1, %151 ], [ 1, %154 ], [ 1, %157 ], [ 1, %160 ], [ 0, %100 ], [ 0, %127 ]
  %139 = phi i32 [ %135, %134 ], [ %143, %142 ], [ %146, %145 ], [ %149, %148 ], [ %152, %151 ], [ %155, %154 ], [ %158, %157 ], [ %161, %160 ], [ 0, %100 ], [ 0, %127 ]
  %140 = phi i32 [ 0, %134 ], [ 1, %142 ], [ 2, %145 ], [ 3, %148 ], [ 4, %151 ], [ 5, %154 ], [ 6, %157 ], [ 7, %160 ], [ 0, %100 ], [ 0, %127 ]
  %141 = shl i32 %139, %138
  br label %165

142:                                              ; preds = %134
  %143 = lshr i32 %135, 1
  %144 = icmp ugt i32 %143, %17
  br i1 %144, label %145, label %137

145:                                              ; preds = %142
  %146 = lshr i32 %135, 2
  %147 = icmp ugt i32 %146, %17
  br i1 %147, label %148, label %137

148:                                              ; preds = %145
  %149 = lshr i32 %135, 3
  %150 = icmp ugt i32 %149, %17
  br i1 %150, label %151, label %137

151:                                              ; preds = %148
  %152 = lshr i32 %135, 4
  %153 = icmp ugt i32 %152, %17
  br i1 %153, label %154, label %137

154:                                              ; preds = %151
  %155 = lshr i32 %135, 5
  %156 = icmp ugt i32 %155, %17
  br i1 %156, label %157, label %137

157:                                              ; preds = %154
  %158 = lshr i32 %135, 6
  %159 = icmp ugt i32 %158, %17
  br i1 %159, label %160, label %137

160:                                              ; preds = %157
  %161 = lshr i32 %135, 7
  %162 = icmp ugt i32 %161, %17
  br i1 %162, label %163, label %137

163:                                              ; preds = %160
  %164 = lshr i32 %135, 8
  br label %165

165:                                              ; preds = %163, %137
  %166 = phi i32 [ 8, %163 ], [ %140, %137 ]
  %167 = phi i32 [ %164, %163 ], [ %139, %137 ]
  %168 = phi i32 [ %135, %163 ], [ %141, %137 ]
  %169 = sub i32 %17, %167
  %170 = sub i32 %168, %17
  %171 = icmp ugt i32 %169, %170
  %172 = sext i1 %171 to i32
  %173 = add nsw i32 %166, %172
  %174 = select i1 %171, i32 %168, i32 %167
  %175 = sub i32 %17, %96
  %176 = tail call i32 @llvm.abs.i32(i32 %175, i1 false)
  %177 = sub i32 %17, %174
  %178 = tail call i32 @llvm.abs.i32(i32 %177, i1 false)
  %179 = icmp sgt i32 %176, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %165
  %181 = load i32, ptr %97, align 4
  %182 = icmp eq i32 %181, 152
  %183 = select i1 %182, i32 0, i32 3072
  br label %184

184:                                              ; preds = %180, %165
  %185 = phi i32 [ %183, %180 ], [ 2048, %165 ]
  %186 = phi i32 [ %95, %180 ], [ %173, %165 ]
  %187 = shl nsw i32 %186, 8
  br label %188

188:                                              ; preds = %184, %50
  %189 = phi i32 [ 3072, %184 ], [ 0, %50 ]
  %190 = phi i32 [ %185, %184 ], [ 0, %50 ]
  %191 = phi i32 [ 1792, %184 ], [ 0, %50 ]
  %192 = phi i32 [ %187, %184 ], [ 0, %50 ]
  %193 = icmp eq i32 %19, 0
  br i1 %193, label %255, label %194

194:                                              ; preds = %188
  %195 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  %196 = udiv i32 %19, 1000
  %197 = udiv i32 %195, 1000
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %250, label %199

199:                                              ; preds = %194
  %200 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 2) #7
  %201 = udiv i32 %200, 1000
  %202 = icmp eq i32 %196, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = or i32 %190, 134217728
  br label %250

205:                                              ; preds = %199
  %206 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 2) #7
  %207 = mul i32 %206, 3
  %208 = icmp ugt i32 %207, %19
  br i1 %208, label %214, label %209

209:                                              ; preds = %232, %229, %226, %223, %220, %217, %214, %205
  %210 = phi i32 [ %207, %205 ], [ %215, %214 ], [ %218, %217 ], [ %221, %220 ], [ %224, %223 ], [ %227, %226 ], [ %230, %229 ], [ %233, %232 ]
  %211 = phi i32 [ 0, %205 ], [ 1, %214 ], [ 2, %217 ], [ 3, %220 ], [ 4, %223 ], [ 5, %226 ], [ 6, %229 ], [ 7, %232 ]
  store i32 %211, ptr %7, align 4
  %212 = zext i1 %208 to i32
  %213 = shl i32 %210, %212
  br label %237

214:                                              ; preds = %205
  %215 = lshr i32 %207, 1
  %216 = icmp ugt i32 %215, %19
  br i1 %216, label %217, label %209

217:                                              ; preds = %214
  %218 = lshr i32 %207, 2
  %219 = icmp ugt i32 %218, %19
  br i1 %219, label %220, label %209

220:                                              ; preds = %217
  %221 = lshr i32 %207, 3
  %222 = icmp ugt i32 %221, %19
  br i1 %222, label %223, label %209

223:                                              ; preds = %220
  %224 = lshr i32 %207, 4
  %225 = icmp ugt i32 %224, %19
  br i1 %225, label %226, label %209

226:                                              ; preds = %223
  %227 = lshr i32 %207, 5
  %228 = icmp ugt i32 %227, %19
  br i1 %228, label %229, label %209

229:                                              ; preds = %226
  %230 = lshr i32 %207, 6
  %231 = icmp ugt i32 %230, %19
  br i1 %231, label %232, label %209

232:                                              ; preds = %229
  %233 = lshr i32 %207, 7
  %234 = icmp ugt i32 %233, %19
  br i1 %234, label %235, label %209

235:                                              ; preds = %232
  %236 = lshr i32 %207, 8
  store i32 8, ptr %7, align 4
  br label %237

237:                                              ; preds = %235, %209
  %238 = phi i32 [ %211, %209 ], [ 8, %235 ]
  %239 = phi i32 [ %210, %209 ], [ %236, %235 ]
  %240 = phi i32 [ %213, %209 ], [ %207, %235 ]
  %241 = sub i32 %19, %239
  %242 = sub i32 %240, %19
  %243 = icmp ugt i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = add nsw i32 %238, -1
  store i32 %245, ptr %7, align 4
  br label %246

246:                                              ; preds = %244, %237
  %247 = phi i32 [ %238, %237 ], [ %245, %244 ]
  %248 = or i32 %190, 201326592
  %249 = or i32 %247, %192
  br label %250

250:                                              ; preds = %246, %203, %194
  %251 = phi i32 [ %204, %203 ], [ %248, %246 ], [ %190, %194 ]
  %252 = phi i32 [ %192, %203 ], [ %249, %246 ], [ %192, %194 ]
  %253 = or i32 %189, 201326592
  %254 = or i32 %191, 7
  br label %255

255:                                              ; preds = %250, %188
  %256 = phi i32 [ %253, %250 ], [ %189, %188 ]
  %257 = phi i32 [ %251, %250 ], [ %190, %188 ]
  %258 = phi i32 [ %254, %250 ], [ %191, %188 ]
  %259 = phi i32 [ %252, %250 ], [ %192, %188 ]
  %260 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5
  %261 = load i32, ptr %260, align 4
  %262 = load i32, ptr %24, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %255
  %265 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  %266 = load i32, ptr %265, align 4
  br label %278

267:                                              ; preds = %255
  %268 = load ptr, ptr %8, align 4
  %269 = getelementptr inbounds %struct.nvkm_subdev, ptr %268, i32 0, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.nvkm_device, ptr %270, i32 0, i32 11
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr i8, ptr %272, i32 %274
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %277 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %276, ptr %277, align 4
  br label %278

278:                                              ; preds = %267, %264
  %279 = phi i32 [ %266, %264 ], [ %276, %267 ]
  %280 = xor i32 %256, -1
  %281 = and i32 %279, %280
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %285 = load i8, ptr %284, align 4, !range !13
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %311, label %287

287:                                              ; preds = %283, %278
  %288 = load i32, ptr %24, align 4
  store i32 %288, ptr %260, align 4
  %289 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %281, ptr %289, align 4
  %290 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %291 = load i32, ptr %290, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %311, label %293

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %295 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %296

296:                                              ; preds = %306, %293
  %297 = phi i32 [ 0, %293 ], [ %308, %306 ]
  %298 = phi i32 [ %291, %293 ], [ %309, %306 ]
  %299 = and i32 %298, 1
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %296
  %302 = load ptr, ptr %20, align 4
  %303 = load i32, ptr %294, align 4
  %304 = add i32 %303, %297
  %305 = load i32, ptr %289, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %302, i32 noundef %304, i32 noundef %305) #7
  br label %306

306:                                              ; preds = %301, %296
  %307 = load i32, ptr %295, align 4
  %308 = add i32 %307, %297
  %309 = lshr i32 %298, 1
  %310 = icmp ult i32 %298, 2
  br i1 %310, label %311, label %296

311:                                              ; preds = %306, %287, %283
  %312 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4
  %313 = load i32, ptr %312, align 4
  %314 = load i32, ptr %24, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 5
  %318 = load i32, ptr %317, align 4
  br label %330

319:                                              ; preds = %311
  %320 = load ptr, ptr %8, align 4
  %321 = getelementptr inbounds %struct.nvkm_subdev, ptr %320, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr inbounds %struct.nvkm_device, ptr %322, i32 0, i32 11
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 2
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr i8, ptr %324, i32 %326
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %329 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 5
  store i32 %328, ptr %329, align 4
  br label %330

330:                                              ; preds = %319, %316
  %331 = phi i32 [ %318, %316 ], [ %328, %319 ]
  %332 = xor i32 %258, -1
  %333 = and i32 %331, %332
  %334 = or i32 %333, %259
  %335 = icmp eq i32 %331, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 1
  %338 = load i8, ptr %337, align 4, !range !13
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %364, label %340

340:                                              ; preds = %336, %330
  %341 = load i32, ptr %24, align 4
  store i32 %341, ptr %312, align 4
  %342 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 5
  store i32 %334, ptr %342, align 4
  %343 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 4
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %364, label %346

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 2
  %348 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 4, i32 3
  br label %349

349:                                              ; preds = %359, %346
  %350 = phi i32 [ 0, %346 ], [ %361, %359 ]
  %351 = phi i32 [ %344, %346 ], [ %362, %359 ]
  %352 = and i32 %351, 1
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %359, label %354

354:                                              ; preds = %349
  %355 = load ptr, ptr %20, align 4
  %356 = load i32, ptr %347, align 4
  %357 = add i32 %356, %350
  %358 = load i32, ptr %342, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %355, i32 noundef %357, i32 noundef %358) #7
  br label %359

359:                                              ; preds = %354, %349
  %360 = load i32, ptr %348, align 4
  %361 = add i32 %360, %350
  %362 = lshr i32 %351, 1
  %363 = icmp ult i32 %351, 2
  br i1 %363, label %364, label %349

364:                                              ; preds = %359, %340, %336
  %365 = load i32, ptr %260, align 4
  %366 = load i32, ptr %24, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  %370 = load i32, ptr %369, align 4
  br label %382

371:                                              ; preds = %364
  %372 = load ptr, ptr %8, align 4
  %373 = getelementptr inbounds %struct.nvkm_subdev, ptr %372, i32 0, i32 1
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.nvkm_device, ptr %374, i32 0, i32 11
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr i8, ptr %376, i32 %378
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %381 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %380, ptr %381, align 4
  br label %382

382:                                              ; preds = %371, %368
  %383 = phi i32 [ %370, %368 ], [ %380, %371 ]
  %384 = and i32 %383, %280
  %385 = or i32 %384, %257
  %386 = icmp eq i32 %383, %385
  br i1 %386, label %387, label %391

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %389 = load i8, ptr %388, align 4, !range !13
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %415, label %391

391:                                              ; preds = %387, %382
  %392 = load i32, ptr %24, align 4
  store i32 %392, ptr %260, align 4
  %393 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %385, ptr %393, align 4
  %394 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %395 = load i32, ptr %394, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %415, label %397

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %399 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %400

400:                                              ; preds = %410, %397
  %401 = phi i32 [ 0, %397 ], [ %412, %410 ]
  %402 = phi i32 [ %395, %397 ], [ %413, %410 ]
  %403 = and i32 %402, 1
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %410, label %405

405:                                              ; preds = %400
  %406 = load ptr, ptr %20, align 4
  %407 = load i32, ptr %398, align 4
  %408 = add i32 %407, %401
  %409 = load i32, ptr %393, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %406, i32 noundef %408, i32 noundef %409) #7
  br label %410

410:                                              ; preds = %405, %400
  %411 = load i32, ptr %399, align 4
  %412 = add i32 %411, %401
  %413 = lshr i32 %402, 1
  %414 = icmp ult i32 %402, 2
  br i1 %414, label %415, label %400

415:                                              ; preds = %410, %391, %387
  %416 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 16
  %417 = load i32, ptr %416, align 4
  %418 = icmp ult i32 %417, 146
  %419 = load i32, ptr %260, align 4
  %420 = load i32, ptr %24, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %418, label %422, label %470

422:                                              ; preds = %415
  br i1 %421, label %423, label %426

423:                                              ; preds = %422
  %424 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  %425 = load i32, ptr %424, align 4
  br label %437

426:                                              ; preds = %422
  %427 = load ptr, ptr %8, align 4
  %428 = getelementptr inbounds %struct.nvkm_subdev, ptr %427, i32 0, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.nvkm_device, ptr %429, i32 0, i32 11
  %431 = load ptr, ptr %430, align 4
  %432 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr i8, ptr %431, i32 %433
  %435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %434) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %436 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %435, ptr %436, align 4
  br label %437

437:                                              ; preds = %426, %423
  %438 = phi i32 [ %425, %423 ], [ %435, %426 ]
  %439 = and i32 %438, -1048753
  %440 = or i32 %439, 1048704
  %441 = icmp eq i32 %438, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %444 = load i8, ptr %443, align 4, !range !13
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %518, label %446

446:                                              ; preds = %442, %437
  %447 = load i32, ptr %24, align 4
  store i32 %447, ptr %260, align 4
  %448 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %440, ptr %448, align 4
  %449 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %450 = load i32, ptr %449, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %518, label %452

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %454 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %455

455:                                              ; preds = %465, %452
  %456 = phi i32 [ 0, %452 ], [ %467, %465 ]
  %457 = phi i32 [ %450, %452 ], [ %468, %465 ]
  %458 = and i32 %457, 1
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %455
  %461 = load ptr, ptr %20, align 4
  %462 = load i32, ptr %453, align 4
  %463 = add i32 %462, %456
  %464 = load i32, ptr %448, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %461, i32 noundef %463, i32 noundef %464) #7
  br label %465

465:                                              ; preds = %460, %455
  %466 = load i32, ptr %454, align 4
  %467 = add i32 %466, %456
  %468 = lshr i32 %457, 1
  %469 = icmp ult i32 %457, 2
  br i1 %469, label %518, label %455

470:                                              ; preds = %415
  br i1 %421, label %471, label %474

471:                                              ; preds = %470
  %472 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  %473 = load i32, ptr %472, align 4
  br label %485

474:                                              ; preds = %470
  %475 = load ptr, ptr %8, align 4
  %476 = getelementptr inbounds %struct.nvkm_subdev, ptr %475, i32 0, i32 1
  %477 = load ptr, ptr %476, align 4
  %478 = getelementptr inbounds %struct.nvkm_device, ptr %477, i32 0, i32 11
  %479 = load ptr, ptr %478, align 4
  %480 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %481 = load i32, ptr %480, align 4
  %482 = getelementptr i8, ptr %479, i32 %481
  %483 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %484 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %483, ptr %484, align 4
  br label %485

485:                                              ; preds = %474, %471
  %486 = phi i32 [ %473, %471 ], [ %483, %474 ]
  %487 = and i32 %486, -180
  %488 = or i32 %487, 129
  %489 = icmp eq i32 %486, %488
  br i1 %489, label %490, label %494

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %492 = load i8, ptr %491, align 4, !range !13
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %518, label %494

494:                                              ; preds = %490, %485
  %495 = load i32, ptr %24, align 4
  store i32 %495, ptr %260, align 4
  %496 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %488, ptr %496, align 4
  %497 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %498 = load i32, ptr %497, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %518, label %500

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %502 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %503

503:                                              ; preds = %513, %500
  %504 = phi i32 [ 0, %500 ], [ %515, %513 ]
  %505 = phi i32 [ %498, %500 ], [ %516, %513 ]
  %506 = and i32 %505, 1
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %513, label %508

508:                                              ; preds = %503
  %509 = load ptr, ptr %20, align 4
  %510 = load i32, ptr %501, align 4
  %511 = add i32 %510, %504
  %512 = load i32, ptr %496, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %509, i32 noundef %511, i32 noundef %512) #7
  br label %513

513:                                              ; preds = %508, %503
  %514 = load i32, ptr %502, align 4
  %515 = add i32 %514, %504
  %516 = lshr i32 %505, 1
  %517 = icmp ult i32 %505, 2
  br i1 %517, label %518, label %503

518:                                              ; preds = %513, %494, %490, %465, %446, %442
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #7, !annotation !12
  %519 = load ptr, ptr %10, align 4
  %520 = getelementptr inbounds %struct.nvkm_device, ptr %519, i32 0, i32 21
  %521 = load ptr, ptr %520, align 8
  %522 = call i32 @nvbios_pll_parse(ptr noundef %521, i32 noundef 16424, ptr noundef nonnull %4) #7
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %518
  %525 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 8, i32 1
  store i32 0, ptr %525, align 4
  %526 = call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef 16424) #7
  %527 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 2
  store i32 %526, ptr %527, align 4
  %528 = icmp eq i32 %526, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %524, %518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  br label %962

530:                                              ; preds = %524
  %531 = call i32 @nv04_pll_calc(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %962, label %533

533:                                              ; preds = %530
  %534 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3
  %535 = load i32, ptr %7, align 4
  %536 = shl i32 %535, 19
  %537 = shl i32 %535, 16
  %538 = load i32, ptr %534, align 4
  %539 = load i32, ptr %24, align 4
  %540 = icmp eq i32 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %533
  %542 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 5
  %543 = load i32, ptr %542, align 4
  br label %555

544:                                              ; preds = %533
  %545 = load ptr, ptr %8, align 4
  %546 = getelementptr inbounds %struct.nvkm_subdev, ptr %545, i32 0, i32 1
  %547 = load ptr, ptr %546, align 4
  %548 = getelementptr inbounds %struct.nvkm_device, ptr %547, i32 0, i32 11
  %549 = load ptr, ptr %548, align 4
  %550 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 2
  %551 = load i32, ptr %550, align 4
  %552 = getelementptr i8, ptr %549, i32 %551
  %553 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %552) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %554 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 5
  store i32 %553, ptr %554, align 4
  br label %555

555:                                              ; preds = %544, %541
  %556 = phi i32 [ %543, %541 ], [ %553, %544 ]
  %557 = and i32 %556, 1069612799
  %558 = or i32 %537, %536
  %559 = or i32 %558, %557
  %560 = or i32 %559, -2147483648
  %561 = icmp eq i32 %556, %560
  br i1 %561, label %562, label %566

562:                                              ; preds = %555
  %563 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 1
  %564 = load i8, ptr %563, align 4, !range !13
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %590, label %566

566:                                              ; preds = %562, %555
  %567 = load i32, ptr %24, align 4
  store i32 %567, ptr %534, align 4
  %568 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 5
  store i32 %560, ptr %568, align 4
  %569 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 4
  %570 = load i32, ptr %569, align 4
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %590, label %572

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 2
  %574 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 3
  br label %575

575:                                              ; preds = %585, %572
  %576 = phi i32 [ 0, %572 ], [ %587, %585 ]
  %577 = phi i32 [ %570, %572 ], [ %588, %585 ]
  %578 = and i32 %577, 1
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %585, label %580

580:                                              ; preds = %575
  %581 = load ptr, ptr %20, align 4
  %582 = load i32, ptr %573, align 4
  %583 = add i32 %582, %576
  %584 = load i32, ptr %568, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %581, i32 noundef %583, i32 noundef %584) #7
  br label %585

585:                                              ; preds = %580, %575
  %586 = load i32, ptr %574, align 4
  %587 = add i32 %586, %576
  %588 = lshr i32 %577, 1
  %589 = icmp ult i32 %577, 2
  br i1 %589, label %590, label %575

590:                                              ; preds = %585, %566, %562
  %591 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1
  %592 = load i32, ptr %5, align 4
  %593 = shl i32 %592, 8
  %594 = load i32, ptr %6, align 4
  %595 = or i32 %593, %594
  %596 = load i32, ptr %591, align 4
  %597 = load i32, ptr %24, align 4
  %598 = icmp eq i32 %596, %597
  br i1 %598, label %599, label %602

599:                                              ; preds = %590
  %600 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 5
  %601 = load i32, ptr %600, align 4
  br label %613

602:                                              ; preds = %590
  %603 = load ptr, ptr %8, align 4
  %604 = getelementptr inbounds %struct.nvkm_subdev, ptr %603, i32 0, i32 1
  %605 = load ptr, ptr %604, align 4
  %606 = getelementptr inbounds %struct.nvkm_device, ptr %605, i32 0, i32 11
  %607 = load ptr, ptr %606, align 4
  %608 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 2
  %609 = load i32, ptr %608, align 4
  %610 = getelementptr i8, ptr %607, i32 %609
  %611 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %610) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %612 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 5
  store i32 %611, ptr %612, align 4
  br label %613

613:                                              ; preds = %602, %599
  %614 = phi i32 [ %601, %599 ], [ %611, %602 ]
  %615 = and i32 %614, -65536
  %616 = or i32 %595, %615
  %617 = icmp eq i32 %614, %616
  br i1 %617, label %618, label %622

618:                                              ; preds = %613
  %619 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 1
  %620 = load i8, ptr %619, align 4, !range !13
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %646, label %622

622:                                              ; preds = %618, %613
  %623 = load i32, ptr %24, align 4
  store i32 %623, ptr %591, align 4
  %624 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 5
  store i32 %616, ptr %624, align 4
  %625 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 4
  %626 = load i32, ptr %625, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %646, label %628

628:                                              ; preds = %622
  %629 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 2
  %630 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 3, i32 1, i32 3
  br label %631

631:                                              ; preds = %641, %628
  %632 = phi i32 [ 0, %628 ], [ %643, %641 ]
  %633 = phi i32 [ %626, %628 ], [ %644, %641 ]
  %634 = and i32 %633, 1
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %641, label %636

636:                                              ; preds = %631
  %637 = load ptr, ptr %20, align 4
  %638 = load i32, ptr %629, align 4
  %639 = add i32 %638, %632
  %640 = load i32, ptr %624, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %637, i32 noundef %639, i32 noundef %640) #7
  br label %641

641:                                              ; preds = %636, %631
  %642 = load i32, ptr %630, align 4
  %643 = add i32 %642, %632
  %644 = lshr i32 %633, 1
  %645 = icmp ult i32 %633, 2
  br i1 %645, label %646, label %631

646:                                              ; preds = %641, %622, %618
  %647 = load i32, ptr %7, align 4
  %648 = add i32 %647, -1
  store i32 %648, ptr %7, align 4
  %649 = icmp ne i32 %647, 0
  %650 = shl i32 %15, 1
  %651 = icmp eq i32 %13, %650
  %652 = select i1 %649, i1 %651, i1 false
  br i1 %652, label %653, label %759

653:                                              ; preds = %646
  %654 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2
  %655 = shl i32 %648, 19
  %656 = shl i32 %648, 16
  %657 = or i32 %655, %656
  %658 = load i32, ptr %654, align 4
  %659 = load i32, ptr %24, align 4
  %660 = icmp eq i32 %658, %659
  br i1 %660, label %661, label %664

661:                                              ; preds = %653
  %662 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 5
  %663 = load i32, ptr %662, align 4
  br label %675

664:                                              ; preds = %653
  %665 = load ptr, ptr %8, align 4
  %666 = getelementptr inbounds %struct.nvkm_subdev, ptr %665, i32 0, i32 1
  %667 = load ptr, ptr %666, align 4
  %668 = getelementptr inbounds %struct.nvkm_device, ptr %667, i32 0, i32 11
  %669 = load ptr, ptr %668, align 4
  %670 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 2
  %671 = load i32, ptr %670, align 4
  %672 = getelementptr i8, ptr %669, i32 %671
  %673 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %672) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %674 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 5
  store i32 %673, ptr %674, align 4
  br label %675

675:                                              ; preds = %664, %661
  %676 = phi i32 [ %663, %661 ], [ %673, %664 ]
  %677 = and i32 %676, 1069612799
  %678 = or i32 %657, %677
  %679 = icmp eq i32 %676, %678
  br i1 %679, label %680, label %684

680:                                              ; preds = %675
  %681 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 1
  %682 = load i8, ptr %681, align 4, !range !13
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %708, label %684

684:                                              ; preds = %680, %675
  %685 = load i32, ptr %24, align 4
  store i32 %685, ptr %654, align 4
  %686 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 5
  store i32 %678, ptr %686, align 4
  %687 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 4
  %688 = load i32, ptr %687, align 4
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %708, label %690

690:                                              ; preds = %684
  %691 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 2
  %692 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 3
  br label %693

693:                                              ; preds = %703, %690
  %694 = phi i32 [ 0, %690 ], [ %705, %703 ]
  %695 = phi i32 [ %688, %690 ], [ %706, %703 ]
  %696 = and i32 %695, 1
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %703, label %698

698:                                              ; preds = %693
  %699 = load ptr, ptr %20, align 4
  %700 = load i32, ptr %691, align 4
  %701 = add i32 %700, %694
  %702 = load i32, ptr %686, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %699, i32 noundef %701, i32 noundef %702) #7
  br label %703

703:                                              ; preds = %698, %693
  %704 = load i32, ptr %692, align 4
  %705 = add i32 %704, %694
  %706 = lshr i32 %695, 1
  %707 = icmp ult i32 %695, 2
  br i1 %707, label %708, label %693

708:                                              ; preds = %703, %684, %680
  %709 = load i32, ptr %260, align 4
  %710 = load i32, ptr %24, align 4
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %715

712:                                              ; preds = %708
  %713 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  %714 = load i32, ptr %713, align 4
  br label %726

715:                                              ; preds = %708
  %716 = load ptr, ptr %8, align 4
  %717 = getelementptr inbounds %struct.nvkm_subdev, ptr %716, i32 0, i32 1
  %718 = load ptr, ptr %717, align 4
  %719 = getelementptr inbounds %struct.nvkm_device, ptr %718, i32 0, i32 11
  %720 = load ptr, ptr %719, align 4
  %721 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %722 = load i32, ptr %721, align 4
  %723 = getelementptr i8, ptr %720, i32 %722
  %724 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %723) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %725 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %724, ptr %725, align 4
  br label %726

726:                                              ; preds = %715, %712
  %727 = phi i32 [ %714, %712 ], [ %724, %715 ]
  %728 = and i32 %727, -1048628
  %729 = or i32 %728, 35
  %730 = icmp eq i32 %727, %729
  br i1 %730, label %731, label %735

731:                                              ; preds = %726
  %732 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %733 = load i8, ptr %732, align 4, !range !13
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %938, label %735

735:                                              ; preds = %731, %726
  %736 = load i32, ptr %24, align 4
  store i32 %736, ptr %260, align 4
  %737 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %729, ptr %737, align 4
  %738 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %739 = load i32, ptr %738, align 4
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %938, label %741

741:                                              ; preds = %735
  %742 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %743 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %744

744:                                              ; preds = %754, %741
  %745 = phi i32 [ 0, %741 ], [ %756, %754 ]
  %746 = phi i32 [ %739, %741 ], [ %757, %754 ]
  %747 = and i32 %746, 1
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %754, label %749

749:                                              ; preds = %744
  %750 = load ptr, ptr %20, align 4
  %751 = load i32, ptr %742, align 4
  %752 = add i32 %751, %745
  %753 = load i32, ptr %737, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %750, i32 noundef %752, i32 noundef %753) #7
  br label %754

754:                                              ; preds = %749, %744
  %755 = load i32, ptr %743, align 4
  %756 = add i32 %755, %745
  %757 = lshr i32 %746, 1
  %758 = icmp ult i32 %746, 2
  br i1 %758, label %938, label %744

759:                                              ; preds = %646
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false) #7, !annotation !12
  %760 = load ptr, ptr %10, align 4
  %761 = getelementptr inbounds %struct.nvkm_device, ptr %760, i32 0, i32 21
  %762 = load ptr, ptr %761, align 8
  %763 = call i32 @nvbios_pll_parse(ptr noundef %762, i32 noundef 16416, ptr noundef nonnull %3) #7
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %770

765:                                              ; preds = %759
  %766 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 8, i32 1
  store i32 0, ptr %766, align 4
  %767 = call fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef 16416) #7
  %768 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 2
  store i32 %767, ptr %768, align 4
  %769 = icmp eq i32 %767, 0
  br i1 %769, label %770, label %771

770:                                              ; preds = %765, %759
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  br label %962

771:                                              ; preds = %765
  %772 = call i32 @nv04_pll_calc(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %962, label %774

774:                                              ; preds = %771
  %775 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2
  %776 = load i32, ptr %7, align 4
  %777 = shl i32 %776, 19
  %778 = shl i32 %776, 16
  %779 = load i32, ptr %775, align 4
  %780 = load i32, ptr %24, align 4
  %781 = icmp eq i32 %779, %780
  br i1 %781, label %782, label %785

782:                                              ; preds = %774
  %783 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 5
  %784 = load i32, ptr %783, align 4
  br label %796

785:                                              ; preds = %774
  %786 = load ptr, ptr %8, align 4
  %787 = getelementptr inbounds %struct.nvkm_subdev, ptr %786, i32 0, i32 1
  %788 = load ptr, ptr %787, align 4
  %789 = getelementptr inbounds %struct.nvkm_device, ptr %788, i32 0, i32 11
  %790 = load ptr, ptr %789, align 4
  %791 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 2
  %792 = load i32, ptr %791, align 4
  %793 = getelementptr i8, ptr %790, i32 %792
  %794 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %793) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %795 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 5
  store i32 %794, ptr %795, align 4
  br label %796

796:                                              ; preds = %785, %782
  %797 = phi i32 [ %784, %782 ], [ %794, %785 ]
  %798 = and i32 %797, 1069612799
  %799 = or i32 %778, %777
  %800 = or i32 %799, %798
  %801 = or i32 %800, -2147483648
  %802 = icmp eq i32 %797, %801
  br i1 %802, label %803, label %807

803:                                              ; preds = %796
  %804 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 1
  %805 = load i8, ptr %804, align 4, !range !13
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %831, label %807

807:                                              ; preds = %803, %796
  %808 = load i32, ptr %24, align 4
  store i32 %808, ptr %775, align 4
  %809 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 5
  store i32 %801, ptr %809, align 4
  %810 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 4
  %811 = load i32, ptr %810, align 4
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %831, label %813

813:                                              ; preds = %807
  %814 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 2
  %815 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 3
  br label %816

816:                                              ; preds = %826, %813
  %817 = phi i32 [ 0, %813 ], [ %828, %826 ]
  %818 = phi i32 [ %811, %813 ], [ %829, %826 ]
  %819 = and i32 %818, 1
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %826, label %821

821:                                              ; preds = %816
  %822 = load ptr, ptr %20, align 4
  %823 = load i32, ptr %814, align 4
  %824 = add i32 %823, %817
  %825 = load i32, ptr %809, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %822, i32 noundef %824, i32 noundef %825) #7
  br label %826

826:                                              ; preds = %821, %816
  %827 = load i32, ptr %815, align 4
  %828 = add i32 %827, %817
  %829 = lshr i32 %818, 1
  %830 = icmp ult i32 %818, 2
  br i1 %830, label %831, label %816

831:                                              ; preds = %826, %807, %803
  %832 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1
  %833 = load i32, ptr %5, align 4
  %834 = shl i32 %833, 8
  %835 = load i32, ptr %6, align 4
  %836 = or i32 %834, %835
  %837 = load i32, ptr %832, align 4
  %838 = load i32, ptr %24, align 4
  %839 = icmp eq i32 %837, %838
  br i1 %839, label %840, label %843

840:                                              ; preds = %831
  %841 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 5
  %842 = load i32, ptr %841, align 4
  br label %854

843:                                              ; preds = %831
  %844 = load ptr, ptr %8, align 4
  %845 = getelementptr inbounds %struct.nvkm_subdev, ptr %844, i32 0, i32 1
  %846 = load ptr, ptr %845, align 4
  %847 = getelementptr inbounds %struct.nvkm_device, ptr %846, i32 0, i32 11
  %848 = load ptr, ptr %847, align 4
  %849 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 2
  %850 = load i32, ptr %849, align 4
  %851 = getelementptr i8, ptr %848, i32 %850
  %852 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %851) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %853 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 5
  store i32 %852, ptr %853, align 4
  br label %854

854:                                              ; preds = %843, %840
  %855 = phi i32 [ %842, %840 ], [ %852, %843 ]
  %856 = and i32 %855, -65536
  %857 = or i32 %836, %856
  %858 = icmp eq i32 %855, %857
  br i1 %858, label %859, label %863

859:                                              ; preds = %854
  %860 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 1
  %861 = load i8, ptr %860, align 4, !range !13
  %862 = icmp eq i8 %861, 0
  br i1 %862, label %887, label %863

863:                                              ; preds = %859, %854
  %864 = load i32, ptr %24, align 4
  store i32 %864, ptr %832, align 4
  %865 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 5
  store i32 %857, ptr %865, align 4
  %866 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 4
  %867 = load i32, ptr %866, align 4
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %887, label %869

869:                                              ; preds = %863
  %870 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 2
  %871 = getelementptr %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 2, i32 1, i32 3
  br label %872

872:                                              ; preds = %882, %869
  %873 = phi i32 [ 0, %869 ], [ %884, %882 ]
  %874 = phi i32 [ %867, %869 ], [ %885, %882 ]
  %875 = and i32 %874, 1
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %882, label %877

877:                                              ; preds = %872
  %878 = load ptr, ptr %20, align 4
  %879 = load i32, ptr %870, align 4
  %880 = add i32 %879, %873
  %881 = load i32, ptr %865, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %878, i32 noundef %880, i32 noundef %881) #7
  br label %882

882:                                              ; preds = %877, %872
  %883 = load i32, ptr %871, align 4
  %884 = add i32 %883, %873
  %885 = lshr i32 %874, 1
  %886 = icmp ult i32 %874, 2
  br i1 %886, label %887, label %872

887:                                              ; preds = %882, %863, %859
  %888 = load i32, ptr %260, align 4
  %889 = load i32, ptr %24, align 4
  %890 = icmp eq i32 %888, %889
  br i1 %890, label %891, label %894

891:                                              ; preds = %887
  %892 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  %893 = load i32, ptr %892, align 4
  br label %905

894:                                              ; preds = %887
  %895 = load ptr, ptr %8, align 4
  %896 = getelementptr inbounds %struct.nvkm_subdev, ptr %895, i32 0, i32 1
  %897 = load ptr, ptr %896, align 4
  %898 = getelementptr inbounds %struct.nvkm_device, ptr %897, i32 0, i32 11
  %899 = load ptr, ptr %898, align 4
  %900 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %901 = load i32, ptr %900, align 4
  %902 = getelementptr i8, ptr %899, i32 %901
  %903 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %902) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %904 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %903, ptr %904, align 4
  br label %905

905:                                              ; preds = %894, %891
  %906 = phi i32 [ %893, %891 ], [ %903, %894 ]
  %907 = and i32 %906, -1048628
  %908 = or i32 %907, 51
  %909 = icmp eq i32 %906, %908
  br i1 %909, label %910, label %914

910:                                              ; preds = %905
  %911 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %912 = load i8, ptr %911, align 4, !range !13
  %913 = icmp eq i8 %912, 0
  br i1 %913, label %938, label %914

914:                                              ; preds = %910, %905
  %915 = load i32, ptr %24, align 4
  store i32 %915, ptr %260, align 4
  %916 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %908, ptr %916, align 4
  %917 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %918 = load i32, ptr %917, align 4
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %938, label %920

920:                                              ; preds = %914
  %921 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %922 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %923

923:                                              ; preds = %933, %920
  %924 = phi i32 [ 0, %920 ], [ %935, %933 ]
  %925 = phi i32 [ %918, %920 ], [ %936, %933 ]
  %926 = and i32 %925, 1
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %933, label %928

928:                                              ; preds = %923
  %929 = load ptr, ptr %20, align 4
  %930 = load i32, ptr %921, align 4
  %931 = add i32 %930, %924
  %932 = load i32, ptr %916, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %929, i32 noundef %931, i32 noundef %932) #7
  br label %933

933:                                              ; preds = %928, %923
  %934 = load i32, ptr %922, align 4
  %935 = add i32 %934, %924
  %936 = lshr i32 %925, 1
  %937 = icmp ult i32 %925, 2
  br i1 %937, label %938, label %923

938:                                              ; preds = %933, %914, %910, %754, %735, %731
  %939 = load ptr, ptr %20, align 4
  call void @nvkm_hwsq_setf(ptr noundef %939, i8 noundef zeroext 16, i32 noundef 1) #7
  %940 = load ptr, ptr %20, align 4
  call void @nvkm_hwsq_wait(ptr noundef %940, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %941 = load i32, ptr %24, align 4
  store i32 %941, ptr %27, align 4
  store i32 0, ptr %28, align 4
  %942 = load i32, ptr %29, align 4
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %962, label %944

944:                                              ; preds = %938
  %945 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1, i32 2
  %946 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 1, i32 3
  br label %947

947:                                              ; preds = %957, %944
  %948 = phi i32 [ 0, %944 ], [ %959, %957 ]
  %949 = phi i32 [ %942, %944 ], [ %960, %957 ]
  %950 = and i32 %949, 1
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %957, label %952

952:                                              ; preds = %947
  %953 = load ptr, ptr %20, align 4
  %954 = load i32, ptr %945, align 4
  %955 = add i32 %954, %948
  %956 = load i32, ptr %28, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %953, i32 noundef %955, i32 noundef %956) #7
  br label %957

957:                                              ; preds = %952, %947
  %958 = load i32, ptr %946, align 4
  %959 = add i32 %958, %948
  %960 = lshr i32 %949, 1
  %961 = icmp ult i32 %949, 2
  br i1 %961, label %962, label %947

962:                                              ; preds = %957, %938, %771, %770, %530, %529, %2
  %963 = phi i32 [ -34, %530 ], [ -34, %771 ], [ %21, %2 ], [ -34, %529 ], [ -34, %770 ], [ 0, %938 ], [ 0, %957 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %963
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_prog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = tail call i32 @nvkm_hwsq_fini(ptr noundef %6, i1 noundef zeroext true) #7
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_clk_tidy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nv50_clk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = tail call i32 @nvkm_hwsq_fini(ptr noundef %6, i1 noundef zeroext false) #7
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 544) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @nvkm_clk_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull %8) #7
  store ptr %8, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 1
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 1, i32 1
  store i8 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 1, i32 2
  store i32 9476, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 1, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 1, i32 4
  store i32 1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 1, i32 5
  store i32 -559038737, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 0, i32 1
  store i8 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 0, i32 2
  store i32 16416, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 0, i32 4
  store i32 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 0, i32 5
  store i32 -559038737, ptr %25, align 4
  %26 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 1
  store i32 0, ptr %26, align 8
  %27 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 1, i32 1
  store i8 0, ptr %27, align 4
  %28 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 1, i32 2
  store i32 16420, ptr %28, align 8
  %29 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 1, i32 3
  store i32 0, ptr %29, align 4
  %30 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 1, i32 4
  store i32 1, ptr %30, align 8
  %31 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 2, i32 1, i32 5
  store i32 -559038737, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 0, i32 1
  store i8 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 0, i32 2
  store i32 16424, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 0, i32 3
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 0, i32 4
  store i32 1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 0, i32 5
  store i32 -559038737, ptr %37, align 4
  %38 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 1
  store i32 0, ptr %38, align 8
  %39 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 1, i32 1
  store i8 0, ptr %39, align 4
  %40 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 1, i32 2
  store i32 16428, ptr %40, align 8
  %41 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 1, i32 3
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 1, i32 4
  store i32 1, ptr %42, align 8
  %43 = getelementptr %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 3, i32 1, i32 5
  store i32 -559038737, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -146
  %47 = icmp ult i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %13
  %49 = getelementptr inbounds [5 x i32], ptr @switch.table.nv50_clk_new_, i32 0, i32 %46
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %13
  %52 = phi i32 [ %50, %48 ], [ 18176, %13 ]
  %53 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 4
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 4, i32 1
  store i8 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 4, i32 2
  store i32 %52, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 4, i32 3
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 4, i32 4
  store i32 1, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 4, i32 5
  store i32 -559038737, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 5
  store i32 0, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 5, i32 1
  store i8 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 5, i32 2
  store i32 49216, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 5, i32 3
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 5, i32 4
  store i32 1, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nv50_clk, ptr %8, i32 0, i32 1, i32 5, i32 5
  store i32 -559038737, ptr %64, align 4
  br label %65

65:                                               ; preds = %51, %10, %6
  %66 = phi i32 [ 0, %51 ], [ -12, %6 ], [ %11, %10 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_clk_new_(ptr noundef nonnull @nv50_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_pll_ref(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 49216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  switch i32 %1, label %14 [
    i32 16424, label %23
    i32 16416, label %9
    i32 16392, label %10
    i32 16432, label %11
    i32 59408, label %12
  ]

9:                                                ; preds = %2
  br label %23

10:                                               ; preds = %2
  br label %23

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  br label %144

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %144, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef %22, i32 noundef %1) #9
  br label %144

23:                                               ; preds = %11, %10, %9, %2
  %24 = phi i32 [ 25, %11 ], [ 16, %10 ], [ 22, %9 ], [ 21, %2 ]
  %25 = shl i32 1, %24
  %26 = and i32 %8, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  br label %144

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 4
  %32 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 57740
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 16
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %128 [
    i32 80, label %39
    i32 160, label %39
    i32 132, label %79
    i32 134, label %79
    i32 146, label %79
    i32 148, label %85
    i32 150, label %85
    i32 152, label %85
  ]

39:                                               ; preds = %30, %30
  %40 = add nsw i32 %1, -16392
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 29) #7
  switch i32 %41, label %48 [
    i32 3, label %57
    i32 4, label %57
    i32 0, label %44
    i32 5, label %42
  ]

42:                                               ; preds = %39
  %43 = load ptr, ptr %33, align 4
  br label %63

44:                                               ; preds = %39
  %45 = and i32 %36, 8
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %33, align 4
  br i1 %46, label %63, label %61

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %144, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.2, ptr noundef %56, i32 noundef %1) #9
  br label %144

57:                                               ; preds = %39, %39
  %58 = and i32 %36, 4
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %33, align 4
  br i1 %59, label %63, label %61

61:                                               ; preds = %57, %44
  %62 = phi ptr [ %47, %44 ], [ %60, %57 ]
  br label %63

63:                                               ; preds = %61, %57, %44, %42
  %64 = phi ptr [ %62, %61 ], [ %60, %57 ], [ %43, %42 ], [ %47, %44 ]
  %65 = phi i32 [ 59432, %61 ], [ 59420, %57 ], [ 59420, %42 ], [ 59420, %44 ]
  %66 = getelementptr i8, ptr %64, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %68 = and i32 %67, 16777216
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 4, i32 2
  %71 = mul i32 %70, %32
  %72 = lshr i32 %67, 16
  %73 = and i32 %72, 7
  %74 = lshr i32 %67, 8
  %75 = and i32 %74, 255
  %76 = add nuw nsw i32 %75, 1
  %77 = and i32 %67, 255
  %78 = add nuw nsw i32 %77, 1
  br label %136

79:                                               ; preds = %30, %30, %30
  %80 = load ptr, ptr %33, align 4
  %81 = getelementptr i8, ptr %80, i32 59420
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 7
  br label %129

85:                                               ; preds = %30, %30, %30
  %86 = load ptr, ptr %33, align 4
  %87 = getelementptr i8, ptr %86, i32 49232
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %89 = add nsw i32 %1, -16392
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 29) #7
  switch i32 %90, label %95 [
    i32 3, label %104
    i32 0, label %91
    i32 4, label %93
    i32 5, label %111
  ]

91:                                               ; preds = %85
  %92 = lshr i32 %88, 2
  br label %104

93:                                               ; preds = %85
  %94 = lshr i32 %88, 11
  br label %104

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %144, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %3, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.2, ptr noundef %103, i32 noundef %1) #9
  br label %144

104:                                              ; preds = %93, %91, %85
  %105 = phi i32 [ %94, %93 ], [ %92, %91 ], [ %88, %85 ]
  %106 = and i32 %105, 3
  switch i32 %106, label %112 [
    i32 0, label %113
    i32 1, label %107
    i32 2, label %109
    i32 3, label %111
  ]

107:                                              ; preds = %104
  %108 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #7
  br label %144

109:                                              ; preds = %104
  %110 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #7
  br label %144

111:                                              ; preds = %104, %85
  br label %113

112:                                              ; preds = %104
  unreachable

113:                                              ; preds = %111, %104
  %114 = phi i32 [ 0, %111 ], [ 40, %104 ]
  %115 = load ptr, ptr %33, align 4
  %116 = add nuw nsw i32 %114, 59420
  %117 = getelementptr i8, ptr %115, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %119 = load ptr, ptr %33, align 4
  %120 = add nuw nsw i32 %114, 59428
  %121 = getelementptr i8, ptr %119, i32 %120
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 7
  %125 = lshr i32 %118, 16
  %126 = and i32 %125, 7
  %127 = add nuw nsw i32 %124, %126
  br label %129

128:                                              ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable

129:                                              ; preds = %113, %79
  %130 = phi i32 [ %127, %113 ], [ %84, %79 ]
  %131 = phi i32 [ %118, %113 ], [ %82, %79 ]
  %132 = and i32 %131, 255
  %133 = lshr i32 %131, 8
  %134 = and i32 %133, 255
  %135 = icmp eq i32 %132, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %129, %63
  %137 = phi i32 [ %78, %63 ], [ %132, %129 ]
  %138 = phi i32 [ %76, %63 ], [ %134, %129 ]
  %139 = phi i32 [ %73, %63 ], [ %130, %129 ]
  %140 = phi i32 [ %71, %63 ], [ %32, %129 ]
  %141 = mul i32 %140, %138
  %142 = udiv i32 %141, %137
  %143 = lshr i32 %142, %139
  br label %144

144:                                              ; preds = %136, %129, %109, %107, %99, %95, %52, %48, %28, %18, %14, %12
  %145 = phi i32 [ %13, %12 ], [ %29, %28 ], [ 0, %18 ], [ 0, %14 ], [ %143, %136 ], [ %110, %109 ], [ %108, %107 ], [ 0, %52 ], [ 0, %48 ], [ 0, %99 ], [ 0, %95 ], [ 0, %129 ]
  ret i32 %145
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_setf(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wait(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 3956431}
!9 = !{i64 2151495884}
!10 = !{i64 648327, i64 648354}
!11 = !{i64 648837, i64 648864, i64 648898, i64 648919}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2154771182, i64 2154771693, i64 2154771219, i64 2154771275, i64 2154771309, i64 2154771333, i64 2154771374, i64 2154771395, i64 2154771423, i64 2154771457}
