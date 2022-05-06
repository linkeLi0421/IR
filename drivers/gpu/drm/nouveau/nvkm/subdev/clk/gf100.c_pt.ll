; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c"
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_clk = type { %struct.nvkm_clk, [16 x %struct.gf100_clk_info] }
%struct.gf100_clk_info = type { i32, i32, i32, i32, i32, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.123, %struct.anon.123 }
%struct.anon.123 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@gf100_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [12 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @gf100_clk_read, ptr @gf100_clk_calc, ptr @gf100_clk_prog, ptr @gf100_clk_tidy, ptr null, i32 0, [12 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 22, i8 0, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 21, i8 1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 24, i8 2, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 3, i8 2, ptr @.str, i32 2000 }, %struct.nvkm_domain { i32 20, i8 4, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 18, i8 5, i8 0, ptr @.str.1, i32 1000 }, %struct.nvkm_domain { i32 27, i8 6, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 25, i8 10, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 23, i8 11, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: invalid clock source %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 748) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @gf100_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef nonnull %6) #9
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %187 [
    i32 0, label %5
    i32 1, label %195
    i32 9, label %8
    i32 10, label %26
    i32 11, label %44
    i32 12, label %82
    i32 13, label %102
    i32 14, label %122
    i32 18, label %160
    i32 19, label %171
    i32 20, label %173
    i32 23, label %175
    i32 22, label %177
    i32 21, label %179
    i32 24, label %181
    i32 25, label %183
    i32 27, label %185
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  br label %195

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 59392
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 59396
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %16 = and i32 %12, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %195, label %18

18:                                               ; preds = %8
  %19 = and i32 %15, 255
  %20 = lshr i32 %15, 8
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %21
  %25 = udiv i32 %24, %19
  br label %195

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 59424
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr i8, ptr %31, i32 59428
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %34 = and i32 %30, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %195, label %36

36:                                               ; preds = %26
  %37 = and i32 %33, 255
  %38 = lshr i32 %33, 8
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, %39
  %43 = udiv i32 %42, %37
  br label %195

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 1274656
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %49 = and i32 %48, 3
  switch i32 %49, label %81 [
    i32 0, label %50
    i32 2, label %195
    i32 3, label %56
  ]

50:                                               ; preds = %44
  %51 = and i32 %48, 196608
  %52 = icmp eq i32 %51, 196608
  br i1 %52, label %195, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %55 = load i32, ptr %54, align 4
  br label %195

56:                                               ; preds = %44
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 1274656
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 9, i32 10
  %65 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %64) #9
  %66 = load ptr, ptr %45, align 4
  %67 = getelementptr i8, ptr %66, i32 1274672
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %77, label %70

70:                                               ; preds = %56
  %71 = and i32 %48, 256
  %72 = icmp eq i32 %71, 0
  %73 = lshr i32 %68, 8
  %74 = select i1 %72, i32 %68, i32 %73
  %75 = and i32 %74, 63
  %76 = add nuw nsw i32 %75, 2
  br label %77

77:                                               ; preds = %70, %56
  %78 = phi i32 [ %76, %70 ], [ 2, %56 ]
  %79 = shl i32 %65, 1
  %80 = udiv i32 %79, %78
  br label %195

81:                                               ; preds = %44
  br label %195

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 1253408
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %87 = load ptr, ptr %83, align 4
  %88 = getelementptr i8, ptr %87, i32 1253412
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %90 = and i32 %86, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %195, label %92

92:                                               ; preds = %82
  %93 = and i32 %89, 255
  %94 = lshr i32 %89, 8
  %95 = and i32 %94, 255
  %96 = lshr i32 %89, 16
  %97 = and i32 %96, 63
  %98 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 11) #9
  %99 = mul i32 %98, %95
  %100 = udiv i32 %99, %93
  %101 = udiv i32 %100, %97
  br label %195

102:                                              ; preds = %2
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 1253376
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %107 = load ptr, ptr %103, align 4
  %108 = getelementptr i8, ptr %107, i32 1253380
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %110 = and i32 %106, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %195, label %112

112:                                              ; preds = %102
  %113 = and i32 %109, 255
  %114 = lshr i32 %109, 8
  %115 = and i32 %114, 255
  %116 = lshr i32 %109, 16
  %117 = and i32 %116, 63
  %118 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 12) #9
  %119 = mul i32 %118, %115
  %120 = udiv i32 %119, %113
  %121 = udiv i32 %120, %117
  br label %195

122:                                              ; preds = %2
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 1274624
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %127 = and i32 %126, 3
  switch i32 %127, label %159 [
    i32 0, label %128
    i32 2, label %195
    i32 3, label %134
  ]

128:                                              ; preds = %122
  %129 = and i32 %126, 196608
  %130 = icmp eq i32 %129, 196608
  br i1 %130, label %195, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %133 = load i32, ptr %132, align 4
  br label %195

134:                                              ; preds = %122
  %135 = load ptr, ptr %3, align 4
  %136 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 11
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 1274624
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %140 = and i32 %139, 256
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 9, i32 10
  %143 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %142) #9
  %144 = load ptr, ptr %123, align 4
  %145 = getelementptr i8, ptr %144, i32 1274640
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %155, label %148

148:                                              ; preds = %134
  %149 = and i32 %126, 256
  %150 = icmp eq i32 %149, 0
  %151 = lshr i32 %146, 8
  %152 = select i1 %150, i32 %146, i32 %151
  %153 = and i32 %152, 63
  %154 = add nuw nsw i32 %153, 2
  br label %155

155:                                              ; preds = %148, %134
  %156 = phi i32 [ %154, %148 ], [ 2, %134 ]
  %157 = shl i32 %143, 1
  %158 = udiv i32 %157, %156
  br label %195

159:                                              ; preds = %122
  br label %195

160:                                              ; preds = %2
  %161 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 1274864
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  %168 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 13) #9
  br label %195

169:                                              ; preds = %160
  %170 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 14) #9
  br label %195

171:                                              ; preds = %2
  %172 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 0)
  br label %195

173:                                              ; preds = %2
  %174 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 1)
  br label %195

175:                                              ; preds = %2
  %176 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 2)
  br label %195

177:                                              ; preds = %2
  %178 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 7)
  br label %195

179:                                              ; preds = %2
  %180 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 8)
  br label %195

181:                                              ; preds = %2
  %182 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 9)
  br label %195

183:                                              ; preds = %2
  %184 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 12)
  br label %195

185:                                              ; preds = %2
  %186 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 14)
  br label %195

187:                                              ; preds = %2
  %188 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.3, ptr noundef %194, i32 noundef %1) #10
  br label %195

195:                                              ; preds = %191, %187, %185, %183, %181, %179, %177, %175, %173, %171, %169, %167, %159, %155, %131, %128, %122, %112, %102, %92, %82, %81, %77, %53, %50, %44, %36, %26, %18, %8, %5, %2
  %196 = phi i32 [ %186, %185 ], [ %184, %183 ], [ %182, %181 ], [ %180, %179 ], [ %178, %177 ], [ %176, %175 ], [ %174, %173 ], [ %172, %171 ], [ %168, %167 ], [ %170, %169 ], [ %7, %5 ], [ 100000, %2 ], [ -22, %191 ], [ -22, %187 ], [ %25, %18 ], [ 0, %8 ], [ %43, %36 ], [ 0, %26 ], [ 0, %81 ], [ %80, %77 ], [ %55, %53 ], [ 108000, %50 ], [ 100000, %44 ], [ %101, %92 ], [ 0, %82 ], [ %121, %112 ], [ 0, %102 ], [ 0, %159 ], [ %158, %155 ], [ %133, %131 ], [ 108000, %128 ], [ 100000, %122 ]
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 19)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 20)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 23)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 7, i32 noundef 22)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 8, i32 noundef 21)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 9, i32 noundef 24)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 12, i32 noundef 25)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 14, i32 noundef 27)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_clk_prog(ptr noundef readonly %0) #0 {
  %2 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 0
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1274320
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %16 = and i32 %15, 2147467456
  %17 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 1274320
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !11
  %22 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 1274208
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !11
  br label %26

26:                                               ; preds = %9, %5, %1
  %27 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 1274324
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %41 = and i32 %40, 2147467456
  %42 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 1, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %45, i32 1274324
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !11
  %47 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 1, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %37, align 4
  %50 = getelementptr i8, ptr %49, i32 1274212
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #9, !srcloc !11
  br label %51

51:                                               ; preds = %34, %30, %26
  %52 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 1274328
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %66 = and i32 %65, 2147467456
  %67 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 2, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, %66
  %70 = load ptr, ptr %62, align 4
  %71 = getelementptr i8, ptr %70, i32 1274328
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #9, !srcloc !11
  %72 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 2, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %62, align 4
  %75 = getelementptr i8, ptr %74, i32 1274216
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #9, !srcloc !11
  br label %76

76:                                               ; preds = %59, %55, %51
  %77 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 3, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 11
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 1274332
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %91 = and i32 %90, 2147467456
  %92 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 3, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, %91
  %95 = load ptr, ptr %87, align 4
  %96 = getelementptr i8, ptr %95, i32 1274332
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #9, !srcloc !11
  %97 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 3, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %87, align 4
  %100 = getelementptr i8, ptr %99, i32 1274220
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #9, !srcloc !11
  br label %101

101:                                              ; preds = %84, %80, %76
  %102 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 4, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 1274336
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %116 = and i32 %115, 2147467456
  %117 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 4, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, %116
  %120 = load ptr, ptr %112, align 4
  %121 = getelementptr i8, ptr %120, i32 1274336
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #9, !srcloc !11
  %122 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 4, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %112, align 4
  %125 = getelementptr i8, ptr %124, i32 1274224
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #9, !srcloc !11
  br label %126

126:                                              ; preds = %109, %105, %101
  %127 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %126
  %131 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 5, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nvkm_device, ptr %136, i32 0, i32 11
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 1274340
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %141 = and i32 %140, 2147467456
  %142 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 5, i32 4
  %143 = load i32, ptr %142, align 4
  %144 = or i32 %143, %141
  %145 = load ptr, ptr %137, align 4
  %146 = getelementptr i8, ptr %145, i32 1274340
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #9, !srcloc !11
  %147 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 5, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = load ptr, ptr %137, align 4
  %150 = getelementptr i8, ptr %149, i32 1274228
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #9, !srcloc !11
  br label %151

151:                                              ; preds = %134, %130, %126
  %152 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %176, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 6, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.nvkm_device, ptr %161, i32 0, i32 11
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 1274344
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %166 = and i32 %165, 2147467456
  %167 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 6, i32 4
  %168 = load i32, ptr %167, align 4
  %169 = or i32 %168, %166
  %170 = load ptr, ptr %162, align 4
  %171 = getelementptr i8, ptr %170, i32 1274344
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #9, !srcloc !11
  %172 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 6, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = load ptr, ptr %162, align 4
  %175 = getelementptr i8, ptr %174, i32 1274232
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #9, !srcloc !11
  br label %176

176:                                              ; preds = %159, %155, %151
  %177 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 7
  %178 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 8
  %179 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 9
  %180 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 10
  %181 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 11
  %182 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 12
  %183 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 13
  %184 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 14
  %185 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 15
  %186 = load i32, ptr %2, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %176
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 0) #9
  br label %189

189:                                              ; preds = %188, %176
  %190 = load i32, ptr %27, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 1) #9
  br label %193

193:                                              ; preds = %192, %189
  %194 = load i32, ptr %52, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 2) #9
  br label %197

197:                                              ; preds = %196, %193
  %198 = load i32, ptr %77, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 3) #9
  br label %201

201:                                              ; preds = %200, %197
  %202 = load i32, ptr %102, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 4) #9
  br label %205

205:                                              ; preds = %204, %201
  %206 = load i32, ptr %127, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 5) #9
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, ptr %152, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 6) #9
  br label %213

213:                                              ; preds = %212, %209
  %214 = load i32, ptr %177, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 7) #9
  br label %217

217:                                              ; preds = %216, %213
  %218 = load i32, ptr %178, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 8) #9
  br label %221

221:                                              ; preds = %220, %217
  %222 = load i32, ptr %179, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 9) #9
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, ptr %180, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 10) #9
  br label %229

229:                                              ; preds = %228, %225
  %230 = load i32, ptr %181, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 11) #9
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i32, ptr %182, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 12) #9
  br label %237

237:                                              ; preds = %236, %233
  %238 = load i32, ptr %183, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 13) #9
  br label %241

241:                                              ; preds = %240, %237
  %242 = load i32, ptr %184, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 14) #9
  br label %245

245:                                              ; preds = %244, %241
  %246 = load i32, ptr %185, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %0, i32 noundef 15) #9
  br label %249

249:                                              ; preds = %248, %245
  %250 = load i32, ptr %2, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 0) #9
  br label %253

253:                                              ; preds = %252, %249
  %254 = load i32, ptr %27, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %253
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 1) #9
  br label %257

257:                                              ; preds = %256, %253
  %258 = load i32, ptr %52, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 2) #9
  br label %261

261:                                              ; preds = %260, %257
  %262 = load i32, ptr %77, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 3) #9
  br label %265

265:                                              ; preds = %264, %261
  %266 = load i32, ptr %102, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 4) #9
  br label %269

269:                                              ; preds = %268, %265
  %270 = load i32, ptr %127, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 5) #9
  br label %273

273:                                              ; preds = %272, %269
  %274 = load i32, ptr %152, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 6) #9
  br label %277

277:                                              ; preds = %276, %273
  %278 = load i32, ptr %177, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %277
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %0, i32 noundef 7) #9
  br label %281

281:                                              ; preds = %280, %277
  %282 = load i32, ptr %2, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 0) #9
  br label %285

285:                                              ; preds = %284, %281
  %286 = load i32, ptr %27, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %285
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 1) #9
  br label %289

289:                                              ; preds = %288, %285
  %290 = load i32, ptr %52, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %289
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 2) #9
  br label %293

293:                                              ; preds = %292, %289
  %294 = load i32, ptr %77, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 3) #9
  br label %297

297:                                              ; preds = %296, %293
  %298 = load i32, ptr %102, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %297
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 4) #9
  br label %301

301:                                              ; preds = %300, %297
  %302 = load i32, ptr %127, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 5) #9
  br label %305

305:                                              ; preds = %304, %301
  %306 = load i32, ptr %152, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %305
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 6) #9
  br label %309

309:                                              ; preds = %308, %305
  %310 = load i32, ptr %177, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %309
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 7) #9
  br label %313

313:                                              ; preds = %312, %309
  %314 = load i32, ptr %178, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 8) #9
  br label %317

317:                                              ; preds = %316, %313
  %318 = load i32, ptr %179, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 9) #9
  br label %321

321:                                              ; preds = %320, %317
  %322 = load i32, ptr %180, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %321
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 10) #9
  br label %325

325:                                              ; preds = %324, %321
  %326 = load i32, ptr %181, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 11) #9
  br label %329

329:                                              ; preds = %328, %325
  %330 = load i32, ptr %182, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %329
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 12) #9
  br label %333

333:                                              ; preds = %332, %329
  %334 = load i32, ptr %183, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %333
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 13) #9
  br label %337

337:                                              ; preds = %336, %333
  %338 = load i32, ptr %184, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %337
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 14) #9
  br label %341

341:                                              ; preds = %340, %337
  %342 = load i32, ptr %185, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %341
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %0, i32 noundef 15) #9
  br label %345

345:                                              ; preds = %344, %341
  %346 = load i32, ptr %2, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %361, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.nvkm_device, ptr %350, i32 0, i32 11
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr i8, ptr %352, i32 1274448
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %355 = and i32 %354, -16192
  %356 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 0, i32 2
  %357 = load i32, ptr %356, align 4
  %358 = or i32 %357, %355
  %359 = load ptr, ptr %351, align 4
  %360 = getelementptr i8, ptr %359, i32 1274448
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 %358) #9, !srcloc !11
  br label %361

361:                                              ; preds = %348, %345
  %362 = load i32, ptr %27, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %377, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %366 = load ptr, ptr %365, align 4
  %367 = getelementptr inbounds %struct.nvkm_device, ptr %366, i32 0, i32 11
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr i8, ptr %368, i32 1274452
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %369) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %371 = and i32 %370, -16192
  %372 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 1, i32 2
  %373 = load i32, ptr %372, align 4
  %374 = or i32 %373, %371
  %375 = load ptr, ptr %367, align 4
  %376 = getelementptr i8, ptr %375, i32 1274452
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %374) #9, !srcloc !11
  br label %377

377:                                              ; preds = %364, %361
  %378 = load i32, ptr %52, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %393, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %382 = load ptr, ptr %381, align 4
  %383 = getelementptr inbounds %struct.nvkm_device, ptr %382, i32 0, i32 11
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr i8, ptr %384, i32 1274456
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %385) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %387 = and i32 %386, -16192
  %388 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 2, i32 2
  %389 = load i32, ptr %388, align 4
  %390 = or i32 %389, %387
  %391 = load ptr, ptr %383, align 4
  %392 = getelementptr i8, ptr %391, i32 1274456
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %392, i32 %390) #9, !srcloc !11
  br label %393

393:                                              ; preds = %380, %377
  %394 = load i32, ptr %77, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %409, label %396

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.nvkm_device, ptr %398, i32 0, i32 11
  %400 = load ptr, ptr %399, align 4
  %401 = getelementptr i8, ptr %400, i32 1274460
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %401) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %403 = and i32 %402, -16192
  %404 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 3, i32 2
  %405 = load i32, ptr %404, align 4
  %406 = or i32 %405, %403
  %407 = load ptr, ptr %399, align 4
  %408 = getelementptr i8, ptr %407, i32 1274460
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %406) #9, !srcloc !11
  br label %409

409:                                              ; preds = %396, %393
  %410 = load i32, ptr %102, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %425, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr inbounds %struct.nvkm_device, ptr %414, i32 0, i32 11
  %416 = load ptr, ptr %415, align 4
  %417 = getelementptr i8, ptr %416, i32 1274464
  %418 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %417) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %419 = and i32 %418, -16192
  %420 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 4, i32 2
  %421 = load i32, ptr %420, align 4
  %422 = or i32 %421, %419
  %423 = load ptr, ptr %415, align 4
  %424 = getelementptr i8, ptr %423, i32 1274464
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %424, i32 %422) #9, !srcloc !11
  br label %425

425:                                              ; preds = %412, %409
  %426 = load i32, ptr %127, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %441, label %428

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr inbounds %struct.nvkm_device, ptr %430, i32 0, i32 11
  %432 = load ptr, ptr %431, align 4
  %433 = getelementptr i8, ptr %432, i32 1274468
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %435 = and i32 %434, -16192
  %436 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 5, i32 2
  %437 = load i32, ptr %436, align 4
  %438 = or i32 %437, %435
  %439 = load ptr, ptr %431, align 4
  %440 = getelementptr i8, ptr %439, i32 1274468
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %440, i32 %438) #9, !srcloc !11
  br label %441

441:                                              ; preds = %428, %425
  %442 = load i32, ptr %152, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %457, label %444

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %446 = load ptr, ptr %445, align 4
  %447 = getelementptr inbounds %struct.nvkm_device, ptr %446, i32 0, i32 11
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr i8, ptr %448, i32 1274472
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %449) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %451 = and i32 %450, -16192
  %452 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 6, i32 2
  %453 = load i32, ptr %452, align 4
  %454 = or i32 %453, %451
  %455 = load ptr, ptr %447, align 4
  %456 = getelementptr i8, ptr %455, i32 1274472
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %456, i32 %454) #9, !srcloc !11
  br label %457

457:                                              ; preds = %444, %441
  %458 = load i32, ptr %177, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %473, label %460

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %462 = load ptr, ptr %461, align 4
  %463 = getelementptr inbounds %struct.nvkm_device, ptr %462, i32 0, i32 11
  %464 = load ptr, ptr %463, align 4
  %465 = getelementptr i8, ptr %464, i32 1274476
  %466 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %465) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %467 = and i32 %466, -16192
  %468 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 7, i32 2
  %469 = load i32, ptr %468, align 4
  %470 = or i32 %469, %467
  %471 = load ptr, ptr %463, align 4
  %472 = getelementptr i8, ptr %471, i32 1274476
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %472, i32 %470) #9, !srcloc !11
  br label %473

473:                                              ; preds = %460, %457
  %474 = load i32, ptr %178, align 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %489, label %476

476:                                              ; preds = %473
  %477 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %478 = load ptr, ptr %477, align 4
  %479 = getelementptr inbounds %struct.nvkm_device, ptr %478, i32 0, i32 11
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr i8, ptr %480, i32 1274480
  %482 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %481) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %483 = and i32 %482, -16192
  %484 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 8, i32 2
  %485 = load i32, ptr %484, align 4
  %486 = or i32 %485, %483
  %487 = load ptr, ptr %479, align 4
  %488 = getelementptr i8, ptr %487, i32 1274480
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %488, i32 %486) #9, !srcloc !11
  br label %489

489:                                              ; preds = %476, %473
  %490 = load i32, ptr %179, align 4
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %505, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %494 = load ptr, ptr %493, align 4
  %495 = getelementptr inbounds %struct.nvkm_device, ptr %494, i32 0, i32 11
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr i8, ptr %496, i32 1274484
  %498 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %497) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %499 = and i32 %498, -16192
  %500 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 9, i32 2
  %501 = load i32, ptr %500, align 4
  %502 = or i32 %501, %499
  %503 = load ptr, ptr %495, align 4
  %504 = getelementptr i8, ptr %503, i32 1274484
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %504, i32 %502) #9, !srcloc !11
  br label %505

505:                                              ; preds = %492, %489
  %506 = load i32, ptr %180, align 4
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %521, label %508

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %510 = load ptr, ptr %509, align 4
  %511 = getelementptr inbounds %struct.nvkm_device, ptr %510, i32 0, i32 11
  %512 = load ptr, ptr %511, align 4
  %513 = getelementptr i8, ptr %512, i32 1274488
  %514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %513) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %515 = and i32 %514, -16192
  %516 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 10, i32 2
  %517 = load i32, ptr %516, align 4
  %518 = or i32 %517, %515
  %519 = load ptr, ptr %511, align 4
  %520 = getelementptr i8, ptr %519, i32 1274488
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %520, i32 %518) #9, !srcloc !11
  br label %521

521:                                              ; preds = %508, %505
  %522 = load i32, ptr %181, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %537, label %524

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %526 = load ptr, ptr %525, align 4
  %527 = getelementptr inbounds %struct.nvkm_device, ptr %526, i32 0, i32 11
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr i8, ptr %528, i32 1274492
  %530 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %529) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %531 = and i32 %530, -16192
  %532 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 11, i32 2
  %533 = load i32, ptr %532, align 4
  %534 = or i32 %533, %531
  %535 = load ptr, ptr %527, align 4
  %536 = getelementptr i8, ptr %535, i32 1274492
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %536, i32 %534) #9, !srcloc !11
  br label %537

537:                                              ; preds = %524, %521
  %538 = load i32, ptr %182, align 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %553, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.nvkm_device, ptr %542, i32 0, i32 11
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr i8, ptr %544, i32 1274496
  %546 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %545) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %547 = and i32 %546, -16192
  %548 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 12, i32 2
  %549 = load i32, ptr %548, align 4
  %550 = or i32 %549, %547
  %551 = load ptr, ptr %543, align 4
  %552 = getelementptr i8, ptr %551, i32 1274496
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %552, i32 %550) #9, !srcloc !11
  br label %553

553:                                              ; preds = %540, %537
  %554 = load i32, ptr %183, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %569, label %556

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %558 = load ptr, ptr %557, align 4
  %559 = getelementptr inbounds %struct.nvkm_device, ptr %558, i32 0, i32 11
  %560 = load ptr, ptr %559, align 4
  %561 = getelementptr i8, ptr %560, i32 1274500
  %562 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %561) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %563 = and i32 %562, -16192
  %564 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 13, i32 2
  %565 = load i32, ptr %564, align 4
  %566 = or i32 %565, %563
  %567 = load ptr, ptr %559, align 4
  %568 = getelementptr i8, ptr %567, i32 1274500
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %568, i32 %566) #9, !srcloc !11
  br label %569

569:                                              ; preds = %556, %553
  %570 = load i32, ptr %184, align 4
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %585, label %572

572:                                              ; preds = %569
  %573 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %574 = load ptr, ptr %573, align 4
  %575 = getelementptr inbounds %struct.nvkm_device, ptr %574, i32 0, i32 11
  %576 = load ptr, ptr %575, align 4
  %577 = getelementptr i8, ptr %576, i32 1274504
  %578 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %577) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %579 = and i32 %578, -16192
  %580 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 14, i32 2
  %581 = load i32, ptr %580, align 4
  %582 = or i32 %581, %579
  %583 = load ptr, ptr %575, align 4
  %584 = getelementptr i8, ptr %583, i32 1274504
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %584, i32 %582) #9, !srcloc !11
  br label %585

585:                                              ; preds = %572, %569
  %586 = load i32, ptr %185, align 4
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %601, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %590 = load ptr, ptr %589, align 4
  %591 = getelementptr inbounds %struct.nvkm_device, ptr %590, i32 0, i32 11
  %592 = load ptr, ptr %591, align 4
  %593 = getelementptr i8, ptr %592, i32 1274508
  %594 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %593) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %595 = and i32 %594, -16192
  %596 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 15, i32 2
  %597 = load i32, ptr %596, align 4
  %598 = or i32 %597, %595
  %599 = load ptr, ptr %591, align 4
  %600 = getelementptr i8, ptr %599, i32 1274508
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %600, i32 %598) #9, !srcloc !11
  br label %601

601:                                              ; preds = %588, %585
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @gf100_clk_tidy(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.gf100_clk, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(384) %2, i8 0, i32 384, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_pll(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = load ptr, ptr %5, align 4
  %10 = add i32 %1, 4
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 63
  %15 = lshr i32 %12, 8
  %16 = and i32 %15, 255
  %17 = and i32 %12, 255
  %18 = and i32 %8, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %80, label %20

20:                                               ; preds = %2
  switch i32 %1, label %80 [
    i32 59392, label %21
    i32 59424, label %21
    i32 1253376, label %24
    i32 1253408, label %26
    i32 1273856, label %28
    i32 1273888, label %28
    i32 1273920, label %28
    i32 1274080, label %28
  ]

21:                                               ; preds = %20, %20
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  br label %74

24:                                               ; preds = %20
  %25 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 12) #9
  br label %74

26:                                               ; preds = %20
  %27 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 11) #9
  br label %74

28:                                               ; preds = %20, %20, %20, %20
  %29 = lshr i32 %1, 5
  %30 = and i32 %29, 7
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = shl nuw nsw i32 %30, 2
  %35 = or i32 %34, 1274144
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %38 = and i32 %37, 3
  switch i32 %38, label %73 [
    i32 0, label %39
    i32 2, label %74
    i32 3, label %45
  ]

39:                                               ; preds = %28
  %40 = and i32 %37, 196608
  %41 = icmp eq i32 %40, 196608
  br i1 %41, label %74, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 18
  %44 = load i32, ptr %43, align 4
  br label %74

45:                                               ; preds = %28
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %35
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 9, i32 10
  %54 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %53) #9
  %55 = icmp ult i32 %30, 3
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = load ptr, ptr %32, align 4
  %58 = or i32 %34, 1274176
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = and i32 %37, 256
  %64 = icmp eq i32 %63, 0
  %65 = lshr i32 %60, 8
  %66 = select i1 %64, i32 %60, i32 %65
  %67 = and i32 %66, 63
  %68 = add nuw nsw i32 %67, 2
  br label %69

69:                                               ; preds = %62, %56, %45
  %70 = phi i32 [ %68, %62 ], [ 2, %56 ], [ 2, %45 ]
  %71 = shl i32 %54, 1
  %72 = udiv i32 %71, %70
  br label %74

73:                                               ; preds = %28
  br label %74

74:                                               ; preds = %73, %69, %42, %39, %28, %26, %24, %21
  %75 = phi i32 [ %14, %26 ], [ %14, %24 ], [ 1, %21 ], [ %14, %28 ], [ %14, %39 ], [ %14, %42 ], [ %14, %69 ], [ %14, %73 ]
  %76 = phi i32 [ %27, %26 ], [ %25, %24 ], [ %23, %21 ], [ 100000, %28 ], [ 108000, %39 ], [ %44, %42 ], [ %72, %69 ], [ 0, %73 ]
  %77 = mul i32 %76, %16
  %78 = udiv i32 %77, %17
  %79 = udiv i32 %78, %75
  br label %80

80:                                               ; preds = %74, %20, %2
  %81 = phi i32 [ %79, %74 ], [ 0, %2 ], [ 0, %20 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_clk(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 2
  %8 = add i32 %7, 1274448
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 1274112
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %14 = shl nuw i32 1, %1
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = icmp slt i32 %1, 7
  %19 = shl i32 %1, 5
  %20 = add i32 %19, 1273856
  %21 = select i1 %18, i32 %20, i32 1274080
  %22 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef %21)
  %23 = lshr i32 %10, 8
  br label %67

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = add i32 %7, 1274208
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %31 = and i32 %30, 3
  switch i32 %31, label %66 [
    i32 0, label %32
    i32 2, label %67
    i32 3, label %38
  ]

32:                                               ; preds = %24
  %33 = and i32 %30, 196608
  %34 = icmp eq i32 %33, 196608
  br i1 %34, label %67, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 18
  %37 = load i32, ptr %36, align 4
  br label %67

38:                                               ; preds = %24
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %28
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 9, i32 10
  %47 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %46) #9
  %48 = icmp slt i32 %1, 3
  br i1 %48, label %49, label %62

49:                                               ; preds = %38
  %50 = load ptr, ptr %26, align 4
  %51 = add i32 %7, 1274320
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = and i32 %30, 256
  %57 = icmp eq i32 %56, 0
  %58 = lshr i32 %53, 8
  %59 = select i1 %57, i32 %53, i32 %58
  %60 = and i32 %59, 63
  %61 = add nuw nsw i32 %60, 2
  br label %62

62:                                               ; preds = %55, %49, %38
  %63 = phi i32 [ %61, %55 ], [ 2, %49 ], [ 2, %38 ]
  %64 = shl i32 %47, 1
  %65 = udiv i32 %64, %63
  br label %67

66:                                               ; preds = %24
  br label %67

67:                                               ; preds = %66, %62, %35, %32, %24, %17
  %68 = phi i32 [ %22, %17 ], [ 0, %66 ], [ %65, %62 ], [ %37, %35 ], [ 108000, %32 ], [ 100000, %24 ]
  %69 = phi i32 [ %23, %17 ], [ %10, %66 ], [ %10, %62 ], [ %10, %35 ], [ %10, %32 ], [ %10, %24 ]
  %70 = icmp sgt i32 %10, -1
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = and i32 %69, 63
  %73 = add nuw nsw i32 %72, 2
  %74 = shl i32 %68, 1
  %75 = udiv i32 %74, %73
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i32 [ %75, %71 ], [ %68, %67 ]
  ret i32 %77
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @calc_clk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nvbios_pll, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2
  %10 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 %3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %14 [
    i32 0, label %178
    i32 100000, label %13
    i32 108000, label %12
    i32 27000, label %35
  ]

12:                                               ; preds = %4
  br label %35

13:                                               ; preds = %4
  br label %35

14:                                               ; preds = %4
  %15 = shl i32 %2, 2
  %16 = add i32 %15, 1274208
  %17 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 9, i32 10
  %26 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %25) #9
  %27 = icmp slt i32 %2, 7
  br i1 %27, label %28, label %35

28:                                               ; preds = %14
  %29 = shl i32 %26, 1
  %30 = udiv i32 %29, %11
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 65) #9
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 2) #9
  %33 = add nsw i32 %32, -2
  %34 = udiv i32 %29, %32
  br label %35

35:                                               ; preds = %28, %14, %13, %12, %4
  %36 = phi i32 [ 3, %28 ], [ 3, %14 ], [ 2, %13 ], [ 196608, %12 ], [ 0, %4 ]
  %37 = phi i32 [ %33, %28 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %4 ]
  %38 = phi i32 [ %34, %28 ], [ %26, %14 ], [ %11, %13 ], [ %11, %12 ], [ %11, %4 ]
  %39 = shl i32 %38, 1
  %40 = udiv i32 %39, %11
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 65) #9
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 2) #9
  %43 = add nsw i32 %42, -2
  %44 = udiv i32 %39, %42
  %45 = icmp eq i32 %11, %44
  br i1 %45, label %137, label %46

46:                                               ; preds = %35
  %47 = shl nuw i32 1, %2
  %48 = and i32 %47, 17287
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %137, label %50

50:                                               ; preds = %46
  %51 = icmp slt i32 %2, 8
  br i1 %51, label %52, label %126

52:                                               ; preds = %50
  %53 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 5
  %54 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  %55 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 21
  %58 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #9, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !12
  %59 = shl i32 %2, 5
  %60 = add i32 %59, 1273856
  %61 = call i32 @nvbios_pll_parse(ptr noundef %58, i32 noundef %60, ptr noundef nonnull %5) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %52
  %64 = load ptr, ptr %55, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  %67 = shl i32 %2, 2
  %68 = add i32 %67, 1274144
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %71 = and i32 %70, 3
  switch i32 %71, label %124 [
    i32 0, label %72
    i32 2, label %106
    i32 3, label %78
  ]

72:                                               ; preds = %63
  %73 = and i32 %70, 196608
  %74 = icmp eq i32 %73, 196608
  br i1 %74, label %106, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 18
  %77 = load i32, ptr %76, align 4
  br label %109

78:                                               ; preds = %63
  %79 = load ptr, ptr %55, align 4
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %68
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %84 = and i32 %83, 256
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 9, i32 10
  %87 = call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %86) #9
  %88 = icmp slt i32 %2, 3
  br i1 %88, label %89, label %102

89:                                               ; preds = %78
  %90 = load ptr, ptr %65, align 4
  %91 = add i32 %67, 1274176
  %92 = getelementptr i8, ptr %90, i32 %91
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = and i32 %70, 256
  %97 = icmp eq i32 %96, 0
  %98 = lshr i32 %93, 8
  %99 = select i1 %97, i32 %93, i32 %98
  %100 = and i32 %99, 63
  %101 = add nuw nsw i32 %100, 2
  br label %102

102:                                              ; preds = %95, %89, %78
  %103 = phi i32 [ %101, %95 ], [ 2, %89 ], [ 2, %78 ]
  %104 = shl i32 %87, 1
  %105 = udiv i32 %104, %103
  br label %109

106:                                              ; preds = %72, %63
  %107 = phi i32 [ 100000, %63 ], [ 108000, %72 ]
  %108 = getelementptr inbounds %struct.nvbios_pll, ptr %5, i32 0, i32 2
  store i32 %107, ptr %108, align 4
  br label %113

109:                                              ; preds = %102, %75
  %110 = phi i32 [ %105, %102 ], [ %77, %75 ]
  %111 = getelementptr inbounds %struct.nvbios_pll, ptr %5, i32 0, i32 2
  store i32 %110, ptr %111, align 4
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109, %106
  %114 = call i32 @gt215_pll_calc(ptr noundef %54, ptr noundef nonnull %5, i32 noundef %11, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %124, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %8, align 4
  %118 = shl i32 %117, 16
  %119 = load i32, ptr %6, align 4
  %120 = shl i32 %119, 8
  %121 = or i32 %120, %118
  %122 = load i32, ptr %7, align 4
  %123 = or i32 %121, %122
  store i32 %123, ptr %53, align 4
  br label %124

124:                                              ; preds = %116, %113, %109, %63, %52
  %125 = phi i32 [ %114, %116 ], [ 0, %52 ], [ 0, %109 ], [ 0, %113 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #9
  br label %129

126:                                              ; preds = %50
  %127 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 22
  %128 = load i32, ptr %127, align 4
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %128, %126 ]
  %131 = shl i32 %130, 1
  %132 = udiv i32 %131, %11
  %133 = call i32 @llvm.umin.i32(i32 %132, i32 65) #9
  %134 = call i32 @llvm.umax.i32(i32 %133, i32 2) #9
  %135 = add nsw i32 %134, -2
  %136 = udiv i32 %131, %134
  br label %137

137:                                              ; preds = %129, %46, %35
  %138 = phi i32 [ 0, %35 ], [ 0, %46 ], [ %135, %129 ]
  %139 = phi i32 [ 0, %35 ], [ 0, %46 ], [ %136, %129 ]
  %140 = sub i32 %11, %44
  %141 = call i32 @llvm.abs.i32(i32 %140, i1 false)
  %142 = sub i32 %11, %139
  %143 = call i32 @llvm.abs.i32(i32 %142, i1 false)
  %144 = icmp sgt i32 %141, %143
  br i1 %144, label %164, label %145

145:                                              ; preds = %137
  %146 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 3
  store i32 %36, ptr %146, align 4
  %147 = icmp eq i32 %37, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %145
  %149 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = shl nuw nsw i32 %37, 8
  %152 = or i32 %37, %151
  %153 = or i32 %152, %150
  %154 = or i32 %153, -2147483648
  store i32 %154, ptr %149, align 4
  br label %155

155:                                              ; preds = %148, %145
  %156 = icmp eq i32 %43, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %155
  %158 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %43, %159
  %161 = or i32 %160, -2147483648
  store i32 %161, ptr %158, align 4
  br label %162

162:                                              ; preds = %157, %155
  %163 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 5
  store i32 0, ptr %163, align 4
  br label %174

164:                                              ; preds = %137
  %165 = icmp eq i32 %138, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %164
  %167 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = shl nuw nsw i32 %138, 8
  %170 = or i32 %169, %168
  %171 = or i32 %170, -2147483648
  store i32 %171, ptr %167, align 4
  br label %172

172:                                              ; preds = %166, %164
  %173 = shl nuw i32 1, %2
  br label %174

174:                                              ; preds = %172, %162
  %175 = phi i32 [ %173, %172 ], [ 0, %162 ]
  %176 = phi i32 [ %139, %172 ], [ %44, %162 ]
  %177 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %2, i32 1
  store i32 %175, ptr %177, align 4
  store i32 %176, ptr %9, align 4
  br label %178

178:                                              ; preds = %174, %4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_clk_prog_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1274112
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %10 = shl nuw i32 1, %1
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 1274112
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #9
  br label %15

15:                                               ; preds = %21, %2
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 1274112
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %19 = and i32 %18, %10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  %22 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #9
  %23 = icmp sgt i64 %22, -1
  br i1 %23, label %15, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_timer, ptr %25, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @dev_driver_string(ptr noundef %29) #9
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_timer, ptr %31, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load ptr, ptr %35, align 4
  br label %41

41:                                               ; preds = %39, %24
  %42 = phi ptr [ %40, %39 ], [ %37, %24 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 362, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %30, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %41, %15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_clk_prog_2(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %1, 5
  %7 = add i32 %6, 1273856
  %8 = icmp slt i32 %1, 8
  br i1 %8, label %9, label %83

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %14 = and i32 %13, -5
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !11
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 %7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %20 = and i32 %19, -2
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !11
  %23 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %83, label %26

26:                                               ; preds = %9
  %27 = load ptr, ptr %10, align 4
  %28 = add i32 %6, 1273860
  %29 = getelementptr i8, ptr %27, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #9, !srcloc !11
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr i8, ptr %30, i32 %7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %33 = or i32 %32, 1
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #9, !srcloc !11
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 %7
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %39 = and i32 %38, -17
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr i8, ptr %40, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #9
  br label %42

42:                                               ; preds = %48, %26
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr i8, ptr %43, i32 %7
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %46 = and i32 %45, 131072
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #9
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %42, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.nvkm_timer, ptr %52, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr @dev_driver_string(ptr noundef %56) #9
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.nvkm_timer, ptr %58, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load ptr, ptr %62, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = phi ptr [ %67, %66 ], [ %64, %51 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %57, ptr noundef %69) #9
  br label %70

70:                                               ; preds = %68, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %71 = load ptr, ptr %10, align 4
  %72 = getelementptr i8, ptr %71, i32 %7
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %74 = or i32 %73, 16
  %75 = load ptr, ptr %10, align 4
  %76 = getelementptr i8, ptr %75, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #9, !srcloc !11
  %77 = load ptr, ptr %10, align 4
  %78 = getelementptr i8, ptr %77, i32 %7
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %80 = or i32 %79, 4
  %81 = load ptr, ptr %10, align 4
  %82 = getelementptr i8, ptr %81, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !11
  br label %83

83:                                               ; preds = %70, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_clk_prog_3(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr %struct.gf100_clk, ptr %0, i32 0, i32 1, i32 %1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1274112
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %14 = shl nuw i32 1, %1
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, ptr %4, align 4
  %18 = or i32 %17, %16
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 1274112
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %9, i64 noundef 2000000000, ptr noundef nonnull %3) #9
  br label %21

21:                                               ; preds = %28, %7
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 1274112
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %25 = and i32 %24, %14
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %50, label %28

28:                                               ; preds = %21
  %29 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #9
  %30 = icmp sgt i64 %29, -1
  br i1 %30, label %21, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = call ptr @dev_driver_string(ptr noundef %36) #9
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.nvkm_timer, ptr %38, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load ptr, ptr %42, align 4
  br label %48

48:                                               ; preds = %46, %31
  %49 = phi ptr [ %47, %46 ], [ %44, %31 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %37, ptr noundef %49) #9
  br label %50

50:                                               ; preds = %48, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3952650}
!9 = !{i64 2151492103}
!10 = !{i64 2151493325}
!11 = !{i64 3952232}
!12 = !{!"auto-init"}
