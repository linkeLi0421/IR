; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c"
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
%struct.gk104_clk = type { %struct.nvkm_clk, [16 x %struct.gk104_clk_info] }
%struct.gk104_clk_info = type { i32, i32, i32, i32, i32, i32 }
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
@gk104_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [11 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @gk104_clk_read, ptr @gk104_clk_calc, ptr @gk104_clk_prog, ptr @gk104_clk_tidy, ptr null, i32 0, [11 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 0, i8 3, ptr @.str, i32 2000 }, %struct.nvkm_domain { i32 23, i8 1, i8 1, ptr null, i32 0 }, %struct.nvkm_domain { i32 20, i8 2, i8 1, ptr null, i32 0 }, %struct.nvkm_domain { i32 18, i8 3, i8 0, ptr @.str.1, i32 500 }, %struct.nvkm_domain { i32 22, i8 4, i8 1, ptr null, i32 0 }, %struct.nvkm_domain { i32 21, i8 5, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 27, i8 6, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 25, i8 7, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: invalid clock source %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 748) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @gk104_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #9
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
define internal i32 @gk104_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %191 [
    i32 0, label %5
    i32 1, label %199
    i32 18, label %8
    i32 19, label %48
    i32 20, label %93
    i32 23, label %138
    i32 22, label %183
    i32 21, label %185
    i32 25, label %187
    i32 27, label %189
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  br label %199

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1274868
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = and i32 %12, 15
  switch i32 %13, label %199 [
    i32 1, label %14
    i32 2, label %46
  ]

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 1253408
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 1253412
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %199, label %25

25:                                               ; preds = %14
  %26 = and i32 %22, 255
  %27 = lshr i32 %22, 8
  %28 = and i32 %27, 255
  %29 = lshr i32 %22, 16
  %30 = and i32 %29, 63
  %31 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 0, i32 noundef 1274656, i32 noundef 1274672) #9
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr i8, ptr %32, i32 1253424
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %35 = lshr i32 %34, 16
  %36 = add nuw nsw i32 %35, 4096
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %30, 0
  %39 = select i1 %38, i32 1, i32 %30
  %40 = mul i32 %31, %28
  %41 = mul i32 %37, %31
  %42 = lshr i32 %41, 13
  %43 = add i32 %42, %40
  %44 = mul nuw nsw i32 %39, %26
  %45 = udiv i32 %43, %44
  br label %199

46:                                               ; preds = %8
  %47 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef 1253376) #9
  br label %199

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 1274448
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %53 = load ptr, ptr %49, align 4
  %54 = getelementptr i8, ptr %53, i32 1274112
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %48
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 1273856
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %64 = load ptr, ptr %60, align 4
  %65 = getelementptr i8, ptr %64, i32 1273860
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %67 = and i32 %63, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %58
  %70 = and i32 %66, 255
  %71 = lshr i32 %66, 8
  %72 = and i32 %71, 255
  %73 = lshr i32 %66, 16
  %74 = and i32 %73, 63
  %75 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 0, i32 noundef 1274144, i32 noundef 1274176) #9
  %76 = icmp eq i32 %74, 0
  %77 = select i1 %76, i32 1, i32 %74
  %78 = mul i32 %75, %72
  %79 = mul nuw nsw i32 %77, %70
  %80 = udiv i32 %78, %79
  br label %83

81:                                               ; preds = %48
  %82 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 0, i32 noundef 1274208, i32 noundef 1274320) #9
  br label %83

83:                                               ; preds = %81, %69, %58
  %84 = phi i32 [ %82, %81 ], [ %80, %69 ], [ 0, %58 ]
  %85 = icmp sgt i32 %52, -1
  br i1 %85, label %199, label %86

86:                                               ; preds = %83
  %87 = lshr i32 %52, 8
  %88 = select i1 %57, i32 %52, i32 %87
  %89 = and i32 %88, 63
  %90 = add nuw nsw i32 %89, 2
  %91 = shl i32 %84, 1
  %92 = udiv i32 %91, %90
  br label %199

93:                                               ; preds = %2
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 1274452
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %98 = load ptr, ptr %94, align 4
  %99 = getelementptr i8, ptr %98, i32 1274112
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %126, label %103

103:                                              ; preds = %93
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 11
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 1273888
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %109 = load ptr, ptr %105, align 4
  %110 = getelementptr i8, ptr %109, i32 1273892
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %112 = and i32 %108, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %103
  %115 = and i32 %111, 255
  %116 = lshr i32 %111, 8
  %117 = and i32 %116, 255
  %118 = lshr i32 %111, 16
  %119 = and i32 %118, 63
  %120 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 1, i32 noundef 1274144, i32 noundef 1274176) #9
  %121 = icmp eq i32 %119, 0
  %122 = select i1 %121, i32 1, i32 %119
  %123 = mul i32 %120, %117
  %124 = mul nuw nsw i32 %122, %115
  %125 = udiv i32 %123, %124
  br label %128

126:                                              ; preds = %93
  %127 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 1, i32 noundef 1274208, i32 noundef 1274320) #9
  br label %128

128:                                              ; preds = %126, %114, %103
  %129 = phi i32 [ %127, %126 ], [ %125, %114 ], [ 0, %103 ]
  %130 = icmp sgt i32 %97, -1
  br i1 %130, label %199, label %131

131:                                              ; preds = %128
  %132 = lshr i32 %97, 8
  %133 = select i1 %102, i32 %97, i32 %132
  %134 = and i32 %133, 63
  %135 = add nuw nsw i32 %134, 2
  %136 = shl i32 %129, 1
  %137 = udiv i32 %136, %135
  br label %199

138:                                              ; preds = %2
  %139 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 1274456
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %143 = load ptr, ptr %139, align 4
  %144 = getelementptr i8, ptr %143, i32 1274112
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %146 = and i32 %145, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %171, label %148

148:                                              ; preds = %138
  %149 = load ptr, ptr %3, align 4
  %150 = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 11
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 1273920
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %154 = load ptr, ptr %150, align 4
  %155 = getelementptr i8, ptr %154, i32 1273924
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %157 = and i32 %153, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %148
  %160 = and i32 %156, 255
  %161 = lshr i32 %156, 8
  %162 = and i32 %161, 255
  %163 = lshr i32 %156, 16
  %164 = and i32 %163, 63
  %165 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 2, i32 noundef 1274144, i32 noundef 1274176) #9
  %166 = icmp eq i32 %164, 0
  %167 = select i1 %166, i32 1, i32 %164
  %168 = mul i32 %165, %162
  %169 = mul nuw nsw i32 %167, %160
  %170 = udiv i32 %168, %169
  br label %173

171:                                              ; preds = %138
  %172 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 2, i32 noundef 1274208, i32 noundef 1274320) #9
  br label %173

173:                                              ; preds = %171, %159, %148
  %174 = phi i32 [ %172, %171 ], [ %170, %159 ], [ 0, %148 ]
  %175 = icmp sgt i32 %142, -1
  br i1 %175, label %199, label %176

176:                                              ; preds = %173
  %177 = lshr i32 %142, 8
  %178 = select i1 %147, i32 %142, i32 %177
  %179 = and i32 %178, 63
  %180 = add nuw nsw i32 %179, 2
  %181 = shl i32 %174, 1
  %182 = udiv i32 %181, %180
  br label %199

183:                                              ; preds = %2
  %184 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 7)
  br label %199

185:                                              ; preds = %2
  %186 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 8)
  br label %199

187:                                              ; preds = %2
  %188 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 12)
  br label %199

189:                                              ; preds = %2
  %190 = tail call fastcc i32 @read_clk(ptr noundef %0, i32 noundef 14)
  br label %199

191:                                              ; preds = %2
  %192 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.3, ptr noundef %198, i32 noundef %1) #10
  br label %199

199:                                              ; preds = %195, %191, %189, %187, %185, %183, %176, %173, %131, %128, %86, %83, %46, %25, %14, %8, %5, %2
  %200 = phi i32 [ %190, %189 ], [ %188, %187 ], [ %186, %185 ], [ %184, %183 ], [ %7, %5 ], [ 100000, %2 ], [ -22, %195 ], [ -22, %191 ], [ %47, %46 ], [ 0, %8 ], [ %45, %25 ], [ 0, %14 ], [ %92, %86 ], [ %84, %83 ], [ %137, %131 ], [ %129, %128 ], [ %182, %176 ], [ %174, %173 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 19)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 20)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 23)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 7, i32 noundef 22)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 8, i32 noundef 21)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 12, i32 noundef 25)
  tail call fastcc void @calc_clk(ptr noundef %0, ptr noundef %1, i32 noundef 14, i32 noundef 27)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_clk_prog(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  br label %3

3:                                                ; preds = %33, %1
  %4 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %5 = icmp ugt i32 %4, 6
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %4, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = shl nuw nsw i32 %4, 2
  %17 = add nuw nsw i32 %16, 1274320
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %22 = and i32 %21, 2147483584
  %23 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %4, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %22
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr i8, ptr %26, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !11
  %28 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %4, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %18, align 4
  %31 = add nuw nsw i32 %16, 1274208
  %32 = getelementptr i8, ptr %30, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #9, !srcloc !11
  br label %33

33:                                               ; preds = %14, %10, %6, %3
  %34 = add nuw nsw i32 %4, 1
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %3

36:                                               ; preds = %33
  %37 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 0) #9
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 1) #9
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 2) #9
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 3) #9
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 4) #9
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 5) #9
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %0, i32 noundef 6) #9
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %92, %71
  %73 = phi i32 [ %93, %92 ], [ 0, %71 ]
  %74 = shl nuw nsw i32 1, %73
  %75 = and i32 %74, 65408
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %73
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %2, align 4
  %83 = shl i32 %73, 2
  %84 = add nuw nsw i32 %83, 1274208
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 11
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 %84
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %89 = and i32 %88, -257
  %90 = load ptr, ptr %85, align 4
  %91 = getelementptr i8, ptr %90, i32 %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #9, !srcloc !11
  br label %92

92:                                               ; preds = %81, %77, %72
  %93 = add nuw nsw i32 %73, 1
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %95, label %72

95:                                               ; preds = %103, %92
  %96 = phi i32 [ %104, %103 ], [ 0, %92 ]
  %97 = icmp ugt i32 %96, 7
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %96
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call fastcc void @gk104_clk_prog_2(ptr noundef %0, i32 noundef %96) #9
  br label %103

103:                                              ; preds = %102, %98, %95
  %104 = add nuw nsw i32 %96, 1
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %95

106:                                              ; preds = %140, %103
  %107 = phi i32 [ %141, %140 ], [ 0, %103 ]
  %108 = shl nuw nsw i32 1, %107
  %109 = and i32 %108, 65408
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %140, label %111

111:                                              ; preds = %106
  %112 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %107
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %2, align 4
  %117 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %107, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  %120 = shl i32 %107, 2
  %121 = add nuw nsw i32 %120, 1274448
  %122 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 %121
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %119, label %133, label %126

126:                                              ; preds = %115
  %127 = and i32 %125, -16129
  %128 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %107, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = or i32 %129, %127
  %131 = load ptr, ptr %122, align 4
  %132 = getelementptr i8, ptr %131, i32 %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #9, !srcloc !11
  br label %140

133:                                              ; preds = %115
  %134 = and i32 %125, -64
  %135 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %107, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %136, %134
  %138 = load ptr, ptr %122, align 4
  %139 = getelementptr i8, ptr %138, i32 %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #9, !srcloc !11
  br label %140

140:                                              ; preds = %133, %126, %111, %106
  %141 = add nuw nsw i32 %107, 1
  %142 = icmp eq i32 %141, 16
  br i1 %142, label %143, label %106

143:                                              ; preds = %140
  %144 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 0
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 0) #9
  br label %148

148:                                              ; preds = %147, %143
  %149 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 1) #9
  br label %153

153:                                              ; preds = %152, %148
  %154 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 2) #9
  br label %158

158:                                              ; preds = %157, %153
  %159 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 3) #9
  br label %163

163:                                              ; preds = %162, %158
  %164 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 4
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 4) #9
  br label %168

168:                                              ; preds = %167, %163
  %169 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 5) #9
  br label %173

173:                                              ; preds = %172, %168
  %174 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %0, i32 noundef 6) #9
  br label %178

178:                                              ; preds = %177, %173
  br label %179

179:                                              ; preds = %209, %178
  %180 = phi i32 [ %210, %209 ], [ 0, %178 ]
  %181 = shl nuw nsw i32 1, %180
  %182 = and i32 %181, 65408
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %209, label %184

184:                                              ; preds = %179
  %185 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %180
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %209, label %188

188:                                              ; preds = %184
  %189 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %180, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr %2, align 4
  %194 = shl i32 %180, 2
  %195 = add nuw nsw i32 %194, 1274208
  %196 = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 11
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr i8, ptr %197, i32 %195
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %200 = or i32 %199, 1073741824
  %201 = load ptr, ptr %196, align 4
  %202 = getelementptr i8, ptr %201, i32 %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #9, !srcloc !11
  %203 = load ptr, ptr %196, align 4
  %204 = getelementptr i8, ptr %203, i32 %195
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %206 = or i32 %205, 256
  %207 = load ptr, ptr %196, align 4
  %208 = getelementptr i8, ptr %207, i32 %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #9, !srcloc !11
  br label %209

209:                                              ; preds = %192, %188, %184, %179
  %210 = add nuw nsw i32 %180, 1
  %211 = icmp eq i32 %210, 16
  br i1 %211, label %212, label %179

212:                                              ; preds = %209
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @gk104_clk_tidy(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.gk104_clk, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(384) %2, i8 0, i32 384, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_clk(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 2
  %8 = add i32 %7, 1274448
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %11 = icmp slt i32 %1, 7
  %12 = load ptr, ptr %5, align 4
  br i1 %11, label %13, label %25

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %12, i32 1274112
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %16 = shl nuw nsw i32 1, %1
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = shl i32 %1, 5
  %21 = add i32 %20, 1273856
  %22 = tail call fastcc i32 @read_pll(ptr noundef %0, i32 noundef %21)
  br label %58

23:                                               ; preds = %13
  %24 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef %1, i32 noundef 1274208, i32 noundef 1274320)
  br label %58

25:                                               ; preds = %2
  %26 = add i32 %7, 1274208
  %27 = getelementptr i8, ptr %12, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %29 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef %1, i32 noundef 1274208, i32 noundef 1274320)
  %30 = and i32 %28, 259
  %31 = icmp eq i32 %30, 259
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = and i32 %28, 1073741824
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 1274080
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr i8, ptr %41, i32 1274084
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = and i32 %40, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %35
  %47 = and i32 %43, 255
  %48 = lshr i32 %43, 8
  %49 = and i32 %48, 255
  %50 = lshr i32 %43, 16
  %51 = and i32 %50, 63
  %52 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 7, i32 noundef 1274144, i32 noundef 1274176) #9
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %53, i32 1, i32 %51
  %55 = mul i32 %52, %49
  %56 = mul nuw nsw i32 %54, %47
  %57 = udiv i32 %55, %56
  br label %58

58:                                               ; preds = %46, %35, %32, %25, %23, %19
  %59 = phi i32 [ %22, %19 ], [ %24, %23 ], [ %29, %32 ], [ %57, %46 ], [ 0, %35 ], [ %29, %25 ]
  %60 = phi i1 [ false, %19 ], [ true, %23 ], [ false, %32 ], [ false, %46 ], [ false, %35 ], [ true, %25 ]
  %61 = icmp sgt i32 %10, -1
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = lshr i32 %10, 8
  %64 = select i1 %60, i32 %10, i32 %63
  %65 = and i32 %64, 63
  %66 = add nuw nsw i32 %65, 2
  %67 = shl i32 %59, 1
  %68 = udiv i32 %67, %66
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i32 [ %68, %62 ], [ %59, %58 ]
  ret i32 %70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_pll(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
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
  br i1 %19, label %88, label %20

20:                                               ; preds = %2
  switch i32 %1, label %88 [
    i32 59392, label %21
    i32 59424, label %21
    i32 1253376, label %24
    i32 1253408, label %61
    i32 1273856, label %69
    i32 1273888, label %69
    i32 1273920, label %69
    i32 1274080, label %69
  ]

21:                                               ; preds = %20, %20
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  br label %78

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 1253408
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr i8, ptr %30, i32 1253412
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %33 = and i32 %29, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %24
  %36 = and i32 %32, 255
  %37 = lshr i32 %32, 8
  %38 = and i32 %37, 255
  %39 = lshr i32 %32, 16
  %40 = and i32 %39, 63
  %41 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 0, i32 noundef 1274656, i32 noundef 1274672) #9
  %42 = load ptr, ptr %26, align 4
  %43 = getelementptr i8, ptr %42, i32 1253424
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %45 = lshr i32 %44, 16
  %46 = add nuw nsw i32 %45, 4096
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %40, 0
  %49 = select i1 %48, i32 1, i32 %40
  %50 = mul i32 %41, %38
  %51 = mul i32 %47, %41
  %52 = lshr i32 %51, 13
  %53 = add i32 %52, %50
  %54 = mul nuw nsw i32 %49, %36
  %55 = udiv i32 %53, %54
  br label %56

56:                                               ; preds = %35, %24
  %57 = phi i32 [ %55, %35 ], [ 0, %24 ]
  %58 = and i32 %12, 268435456
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 1, i32 2
  br label %78

61:                                               ; preds = %20
  %62 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef 0, i32 noundef 1274656, i32 noundef 1274672)
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i8, ptr %63, i32 1253424
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %66 = lshr i32 %65, 16
  %67 = add nuw nsw i32 %66, 4096
  %68 = and i32 %67, 65535
  br label %73

69:                                               ; preds = %20, %20, %20, %20
  %70 = lshr i32 %1, 5
  %71 = and i32 %70, 7
  %72 = tail call fastcc i32 @read_div(ptr noundef %0, i32 noundef %71, i32 noundef 1274144, i32 noundef 1274176)
  br label %73

73:                                               ; preds = %69, %61
  %74 = phi i32 [ %72, %69 ], [ %62, %61 ]
  %75 = phi i32 [ 0, %69 ], [ %68, %61 ]
  %76 = icmp eq i32 %14, 0
  %77 = select i1 %76, i32 1, i32 %14
  br label %78

78:                                               ; preds = %73, %56, %21
  %79 = phi i32 [ 0, %56 ], [ 0, %21 ], [ %75, %73 ]
  %80 = phi i32 [ %57, %56 ], [ %23, %21 ], [ %74, %73 ]
  %81 = phi i32 [ %60, %56 ], [ 1, %21 ], [ %77, %73 ]
  %82 = mul i32 %80, %16
  %83 = mul i32 %80, %79
  %84 = lshr i32 %83, 13
  %85 = add i32 %84, %82
  %86 = mul nuw nsw i32 %81, %17
  %87 = udiv i32 %85, %86
  br label %88

88:                                               ; preds = %78, %20, %2
  %89 = phi i32 [ %87, %78 ], [ 0, %2 ], [ 0, %20 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_div(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 2
  %10 = add i32 %9, %2
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = load ptr, ptr %7, align 4
  %14 = add i32 %9, %3
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %17 = and i32 %12, 3
  switch i32 %17, label %94 [
    i32 0, label %18
    i32 2, label %95
    i32 3, label %24
  ]

18:                                               ; preds = %4
  %19 = and i32 %12, 196608
  %20 = icmp eq i32 %19, 196608
  br i1 %20, label %95, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  br label %95

24:                                               ; preds = %4
  %25 = icmp sgt i32 %16, -1
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %10
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  br i1 %25, label %68, label %36

36:                                               ; preds = %24
  br i1 %32, label %37, label %45

37:                                               ; preds = %36
  %38 = getelementptr i8, ptr %35, i32 59392
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr i8, ptr %40, i32 59396
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %43 = and i32 %39, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %53

45:                                               ; preds = %36
  %46 = getelementptr i8, ptr %35, i32 59424
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %48 = load ptr, ptr %34, align 4
  %49 = getelementptr i8, ptr %48, i32 59428
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %51 = and i32 %47, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %45, %37
  %54 = phi i32 [ %42, %37 ], [ %50, %45 ]
  %55 = and i32 %54, 255
  %56 = lshr i32 %54, 8
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = mul i32 %57, %59
  %61 = udiv i32 %60, %55
  %62 = shl i32 %61, 1
  br label %63

63:                                               ; preds = %53, %45, %37
  %64 = phi i32 [ 0, %37 ], [ 0, %45 ], [ %62, %53 ]
  %65 = and i32 %16, 63
  %66 = add nuw nsw i32 %65, 2
  %67 = udiv i32 %64, %66
  br label %95

68:                                               ; preds = %24
  br i1 %32, label %69, label %77

69:                                               ; preds = %68
  %70 = getelementptr i8, ptr %35, i32 59392
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %72 = load ptr, ptr %34, align 4
  %73 = getelementptr i8, ptr %72, i32 59396
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %75 = and i32 %71, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %95, label %85

77:                                               ; preds = %68
  %78 = getelementptr i8, ptr %35, i32 59424
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %80 = load ptr, ptr %34, align 4
  %81 = getelementptr i8, ptr %80, i32 59428
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %83 = and i32 %79, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %77, %69
  %86 = phi i32 [ %74, %69 ], [ %82, %77 ]
  %87 = and i32 %86, 255
  %88 = lshr i32 %86, 8
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 18
  %91 = load i32, ptr %90, align 4
  %92 = mul i32 %89, %91
  %93 = udiv i32 %92, %87
  br label %95

94:                                               ; preds = %4
  br label %95

95:                                               ; preds = %94, %85, %77, %69, %63, %21, %18, %4
  %96 = phi i32 [ 0, %94 ], [ %67, %63 ], [ %23, %21 ], [ 108000, %18 ], [ 100000, %4 ], [ 0, %69 ], [ 0, %77 ], [ %93, %85 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @calc_clk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nvbios_pll, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2
  %10 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 %3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %14 [
    i32 0, label %158
    i32 100000, label %13
    i32 108000, label %12
    i32 27000, label %63
  ]

12:                                               ; preds = %4
  br label %63

13:                                               ; preds = %4
  br label %63

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
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  br i1 %24, label %28, label %36

28:                                               ; preds = %14
  %29 = getelementptr i8, ptr %27, i32 59392
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 59396
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %34 = and i32 %30, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %44

36:                                               ; preds = %14
  %37 = getelementptr i8, ptr %27, i32 59424
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 59428
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %42 = and i32 %38, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %36, %28
  %45 = phi i32 [ %33, %28 ], [ %41, %36 ]
  %46 = and i32 %45, 255
  %47 = lshr i32 %45, 8
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 18
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %48, %50
  %52 = udiv i32 %51, %46
  br label %53

53:                                               ; preds = %44, %36, %28
  %54 = phi i32 [ 0, %28 ], [ 0, %36 ], [ %52, %44 ]
  %55 = icmp slt i32 %2, 7
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = shl i32 %54, 1
  %58 = udiv i32 %57, %11
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 65) #9
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 2) #9
  %61 = add nsw i32 %60, -2
  %62 = udiv i32 %57, %60
  br label %63

63:                                               ; preds = %56, %53, %13, %12, %4
  %64 = phi i32 [ 3, %56 ], [ 3, %53 ], [ 2, %13 ], [ 196608, %12 ], [ 0, %4 ]
  %65 = phi i32 [ %61, %56 ], [ 0, %53 ], [ 0, %13 ], [ 0, %12 ], [ 0, %4 ]
  %66 = phi i32 [ %62, %56 ], [ %54, %53 ], [ %11, %13 ], [ %11, %12 ], [ %11, %4 ]
  %67 = shl i32 %66, 1
  %68 = udiv i32 %67, %11
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 65) #9
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 2) #9
  %71 = add nsw i32 %70, -2
  %72 = udiv i32 %67, %70
  %73 = icmp eq i32 %11, %72
  br i1 %73, label %119, label %74

74:                                               ; preds = %63
  %75 = shl nuw i32 1, %2
  %76 = and i32 %75, 65415
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %119, label %78

78:                                               ; preds = %74
  %79 = icmp slt i32 %2, 8
  br i1 %79, label %80, label %108

80:                                               ; preds = %78
  %81 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 5
  %82 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  %83 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 21
  %86 = load ptr, ptr %85, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #9, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !12
  %87 = shl i32 %2, 5
  %88 = add i32 %87, 1273856
  %89 = call i32 @nvbios_pll_parse(ptr noundef %86, i32 noundef %88, ptr noundef nonnull %5) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %80
  %92 = call fastcc i32 @read_div(ptr noundef %0, i32 noundef %2, i32 noundef 1274144, i32 noundef 1274176) #9
  %93 = getelementptr inbounds %struct.nvbios_pll, ptr %5, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = call i32 @gt215_pll_calc(ptr noundef %82, ptr noundef nonnull %5, i32 noundef %11, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %8, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, ptr %6, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %102, %100
  %104 = load i32, ptr %7, align 4
  %105 = or i32 %103, %104
  store i32 %105, ptr %81, align 4
  br label %106

106:                                              ; preds = %98, %95, %91, %80
  %107 = phi i32 [ %96, %98 ], [ 0, %80 ], [ 0, %91 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #9
  br label %111

108:                                              ; preds = %78
  %109 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 22
  %110 = load i32, ptr %109, align 4
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %107, %106 ], [ %110, %108 ]
  %113 = shl i32 %112, 1
  %114 = udiv i32 %113, %11
  %115 = call i32 @llvm.umin.i32(i32 %114, i32 65) #9
  %116 = call i32 @llvm.umax.i32(i32 %115, i32 2) #9
  %117 = add nsw i32 %116, -2
  %118 = udiv i32 %113, %116
  br label %119

119:                                              ; preds = %111, %74, %63
  %120 = phi i32 [ 0, %63 ], [ 0, %74 ], [ %117, %111 ]
  %121 = phi i32 [ 0, %63 ], [ 0, %74 ], [ %118, %111 ]
  %122 = sub i32 %11, %72
  %123 = call i32 @llvm.abs.i32(i32 %122, i1 false)
  %124 = sub i32 %11, %121
  %125 = call i32 @llvm.abs.i32(i32 %124, i1 false)
  %126 = icmp sgt i32 %123, %125
  br i1 %126, label %144, label %127

127:                                              ; preds = %119
  %128 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 3
  store i32 %64, ptr %128, align 4
  %129 = icmp eq i32 %65, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = or i32 %65, %132
  %134 = or i32 %133, -2147483648
  store i32 %134, ptr %131, align 4
  br label %135

135:                                              ; preds = %130, %127
  %136 = icmp eq i32 %71, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %135
  %138 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = or i32 %71, %139
  %141 = or i32 %140, -2147483648
  store i32 %141, ptr %138, align 4
  br label %142

142:                                              ; preds = %137, %135
  %143 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 1
  store i32 0, ptr %143, align 4
  br label %156

144:                                              ; preds = %119
  %145 = icmp eq i32 %120, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %144
  %147 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = shl nuw nsw i32 %120, 8
  %150 = or i32 %149, %148
  %151 = or i32 %150, -2147483648
  store i32 %151, ptr %147, align 4
  br label %152

152:                                              ; preds = %146, %144
  %153 = shl nuw i32 1, %2
  %154 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 1
  store i32 %153, ptr %154, align 4
  %155 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %2, i32 3
  store i32 1073742080, ptr %155, align 4
  br label %156

156:                                              ; preds = %152, %142
  %157 = phi i32 [ %121, %152 ], [ %72, %142 ]
  store i32 %157, ptr %9, align 4
  br label %158

158:                                              ; preds = %156, %4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_clk_prog_1_0(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 375, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %30, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %41, %15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_clk_prog_2(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %1, 5
  %7 = add i32 %6, 1273856
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %12 = and i32 %11, -5
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !11
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 %7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %18 = and i32 %17, -2
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !11
  %21 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %81, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %8, align 4
  %26 = add i32 %6, 1273860
  %27 = getelementptr i8, ptr %25, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %22) #9, !srcloc !11
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr i8, ptr %28, i32 %7
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %31 = or i32 %30, 1
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr i8, ptr %32, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !11
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr i8, ptr %34, i32 %7
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %37 = and i32 %36, -17
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #9, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #9
  br label %40

40:                                               ; preds = %46, %24
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 %7
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = and i32 %43, 131072
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #9
  %48 = icmp sgt i64 %47, -1
  br i1 %48, label %40, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = call ptr @dev_driver_string(ptr noundef %54) #9
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct.nvkm_timer, ptr %56, i32 0, i32 1, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load ptr, ptr %60, align 4
  br label %66

66:                                               ; preds = %64, %49
  %67 = phi ptr [ %65, %64 ], [ %62, %49 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 402, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %55, ptr noundef %67) #9
  br label %68

68:                                               ; preds = %66, %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr i8, ptr %69, i32 %7
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %72 = or i32 %71, 16
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr i8, ptr %73, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !11
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr i8, ptr %75, i32 %7
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %78 = or i32 %77, 4
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr i8, ptr %79, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #9, !srcloc !11
  br label %81

81:                                               ; preds = %68, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_clk_prog_4_0(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr %struct.gk104_clk, ptr %0, i32 0, i32 1, i32 %1, i32 1
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 432, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %37, ptr noundef %49) #9
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
!8 = !{i64 3953543}
!9 = !{i64 2151492996}
!10 = !{i64 2151494218}
!11 = !{i64 3953125}
!12 = !{!"auto-init"}
