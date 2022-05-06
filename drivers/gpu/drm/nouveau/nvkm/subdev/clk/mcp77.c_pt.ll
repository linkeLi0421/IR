; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c"
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
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.123, %struct.anon.123 }
%struct.anon.123 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.mcp77_clk = type { %struct.nvkm_clk, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
@.str.1 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@mcp77_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @mcp77_clk_read, ptr @mcp77_clk_calc, ptr @mcp77_clk_prog, ptr @mcp77_clk_tidy, ptr null, i32 0, [6 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 -1, i8 0, ptr @.str, i32 1000 }, %struct.nvkm_domain { i32 17, i8 -1, i8 0, ptr @.str.1, i32 1000 }, %struct.nvkm_domain { i32 27, i8 -1, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: unknown clock source %d %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: nvpll: %08x %08x %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s:  spll: %08x %08x %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s:  vdiv: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%s: core: hrefm4\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s: core: nvpll\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s: shader: hrefm4\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"%s: shader: nvpll\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: shader: spll\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"%s: vdec: 500MHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%s: vdec: core\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"%s: Reclocking failed: unknown core clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"%s: Reclocking failed: unknown sclk clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mcp77_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 404) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @mcp77_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #9
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
define internal i32 @mcp77_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 49236
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  switch i32 %1, label %175 [
    i32 0, label %9
    i32 1, label %184
    i32 6, label %12
    i32 5, label %15
    i32 8, label %19
    i32 15, label %27
    i32 7, label %69
    i32 17, label %87
    i32 18, label %159
    i32 27, label %160
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  br label %184

12:                                               ; preds = %2
  %13 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %14 = shl i32 %13, 2
  br label %184

15:                                               ; preds = %2
  %16 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %17 = shl i32 %16, 1
  %18 = sdiv i32 %17, 3
  br label %184

19:                                               ; preds = %2
  %20 = and i32 %8, 786432
  switch i32 %20, label %175 [
    i32 0, label %21
    i32 786432, label %25
    i32 524288, label %23
  ]

21:                                               ; preds = %19
  %22 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 5) #9
  br label %184

23:                                               ; preds = %19
  %24 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 6) #9
  br label %184

25:                                               ; preds = %19
  %26 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 7) #9
  br label %184

27:                                               ; preds = %2
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 16424
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 7
  %33 = and i32 %8, 3
  switch i32 %33, label %68 [
    i32 0, label %34
    i32 1, label %184
    i32 2, label %37
    i32 3, label %40
  ]

34:                                               ; preds = %27
  %35 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #9
  %36 = ashr i32 %35, %32
  br label %184

37:                                               ; preds = %27
  %38 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 6) #9
  %39 = ashr i32 %38, %32
  br label %184

40:                                               ; preds = %27
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 16424
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %46 = load ptr, ptr %42, align 4
  %47 = getelementptr i8, ptr %46, i32 16428
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %49 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %50 = load ptr, ptr %42, align 4
  %51 = getelementptr i8, ptr %50, i32 16448
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %53 = and i32 %48, 255
  %54 = icmp slt i32 %45, 0
  %55 = icmp ne i32 %53, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %65

57:                                               ; preds = %40
  %58 = lshr i32 %52, 16
  %59 = and i32 %58, 15
  %60 = lshr i32 %48, 8
  %61 = and i32 %60, 255
  %62 = mul i32 %49, %61
  %63 = udiv i32 %62, %53
  %64 = udiv i32 %63, %59
  br label %65

65:                                               ; preds = %57, %40
  %66 = phi i32 [ %64, %57 ], [ 0, %40 ]
  %67 = lshr i32 %66, %32
  br label %184

68:                                               ; preds = %27
  unreachable

69:                                               ; preds = %2
  %70 = and i32 %8, 50331648
  %71 = icmp eq i32 %70, 50331648
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 15) #9
  br label %184

74:                                               ; preds = %69
  %75 = and i32 %8, 512
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 15) #9
  br label %184

79:                                               ; preds = %74
  %80 = and i32 %8, 3072
  switch i32 %80, label %184 [
    i32 0, label %81
    i32 1024, label %83
    i32 2048, label %85
  ]

81:                                               ; preds = %79
  %82 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  br label %184

83:                                               ; preds = %79
  %84 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 6) #9
  br label %184

85:                                               ; preds = %79
  %86 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 5) #9
  br label %184

87:                                               ; preds = %2
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i8, ptr %88, i32 16416
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 7
  %93 = and i32 %8, 48
  switch i32 %93, label %175 [
    i32 0, label %94
    i32 48, label %131
    i32 32, label %103
  ]

94:                                               ; preds = %87
  %95 = and i32 %8, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %99 = ashr i32 %98, %92
  br label %184

100:                                              ; preds = %94
  %101 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 0) #9
  %102 = ashr i32 %101, %92
  br label %184

103:                                              ; preds = %87
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 11
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 16424
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %109 = load ptr, ptr %105, align 4
  %110 = getelementptr i8, ptr %109, i32 16428
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %112 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %113 = load ptr, ptr %105, align 4
  %114 = getelementptr i8, ptr %113, i32 16448
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %116 = and i32 %111, 255
  %117 = icmp slt i32 %108, 0
  %118 = icmp ne i32 %116, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %128

120:                                              ; preds = %103
  %121 = lshr i32 %115, 16
  %122 = and i32 %121, 15
  %123 = lshr i32 %111, 8
  %124 = and i32 %123, 255
  %125 = mul i32 %112, %124
  %126 = udiv i32 %125, %116
  %127 = udiv i32 %126, %122
  br label %128

128:                                              ; preds = %120, %103
  %129 = phi i32 [ %127, %120 ], [ 0, %103 ]
  %130 = lshr i32 %129, %92
  br label %184

131:                                              ; preds = %87
  %132 = load ptr, ptr %3, align 4
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 16416
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %137 = load ptr, ptr %133, align 4
  %138 = getelementptr i8, ptr %137, i32 16420
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %140 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %141 = load ptr, ptr %133, align 4
  %142 = getelementptr i8, ptr %141, i32 16496
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %144 = and i32 %139, 255
  %145 = icmp slt i32 %136, 0
  %146 = icmp ne i32 %144, 0
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %156

148:                                              ; preds = %131
  %149 = lshr i32 %143, 16
  %150 = and i32 %149, 15
  %151 = lshr i32 %139, 8
  %152 = and i32 %151, 255
  %153 = mul i32 %140, %152
  %154 = udiv i32 %153, %144
  %155 = lshr i32 %154, %150
  br label %156

156:                                              ; preds = %148, %131
  %157 = phi i32 [ %155, %148 ], [ 0, %131 ]
  %158 = lshr i32 %157, %92
  br label %184

159:                                              ; preds = %2
  br label %184

160:                                              ; preds = %2
  %161 = load ptr, ptr %3, align 4
  %162 = getelementptr inbounds %struct.nvkm_device, ptr %161, i32 0, i32 11
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 17920
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %166 = lshr i32 %165, 8
  %167 = and i32 %166, 7
  %168 = and i32 %8, 4194304
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %160
  %171 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 15) #9
  %172 = ashr i32 %171, %167
  br label %184

173:                                              ; preds = %160
  %174 = lshr i32 500000, %167
  br label %184

175:                                              ; preds = %87, %19, %2
  %176 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %177 = load i32, ptr %176, align 4
  %178 = icmp ugt i32 %177, 3
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load ptr, ptr %3, align 4
  %181 = getelementptr inbounds %struct.nvkm_device, ptr %180, i32 0, i32 2
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %182, ptr noundef nonnull @.str.4, ptr noundef %183, i32 noundef %1, i32 noundef %8) #10
  br label %184

184:                                              ; preds = %179, %175, %173, %170, %159, %156, %128, %100, %97, %85, %83, %81, %79, %77, %72, %65, %37, %34, %27, %25, %23, %21, %15, %12, %9, %2
  %185 = phi i32 [ %172, %170 ], [ %174, %173 ], [ 0, %159 ], [ %130, %128 ], [ %158, %156 ], [ %99, %97 ], [ %102, %100 ], [ %73, %72 ], [ %78, %77 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %67, %65 ], [ %39, %37 ], [ %36, %34 ], [ %24, %23 ], [ %26, %25 ], [ %22, %21 ], [ %18, %15 ], [ %14, %12 ], [ %11, %9 ], [ 100000, %2 ], [ 0, %27 ], [ 0, %79 ], [ 0, %179 ], [ 0, %175 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp77_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nvbios_pll, align 4
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 27
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !10
  %14 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 6) #9
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %2
  %17 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 6) #9
  %18 = icmp ugt i32 %17, %11
  br i1 %18, label %24, label %19

19:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %16
  %20 = phi i32 [ %17, %16 ], [ %25, %24 ], [ %28, %27 ], [ %31, %30 ], [ %34, %33 ], [ %37, %36 ], [ %40, %39 ], [ %43, %42 ]
  %21 = phi i32 [ 0, %16 ], [ 1, %24 ], [ 2, %27 ], [ 3, %30 ], [ 4, %33 ], [ 5, %36 ], [ 6, %39 ], [ 7, %42 ]
  %22 = zext i1 %18 to i32
  %23 = shl i32 %20, %22
  br label %47

24:                                               ; preds = %16
  %25 = lshr i32 %17, 1
  %26 = icmp ugt i32 %25, %11
  br i1 %26, label %27, label %19

27:                                               ; preds = %24
  %28 = lshr i32 %17, 2
  %29 = icmp ugt i32 %28, %11
  br i1 %29, label %30, label %19

30:                                               ; preds = %27
  %31 = lshr i32 %17, 3
  %32 = icmp ugt i32 %31, %11
  br i1 %32, label %33, label %19

33:                                               ; preds = %30
  %34 = lshr i32 %17, 4
  %35 = icmp ugt i32 %34, %11
  br i1 %35, label %36, label %19

36:                                               ; preds = %33
  %37 = lshr i32 %17, 5
  %38 = icmp ugt i32 %37, %11
  br i1 %38, label %39, label %19

39:                                               ; preds = %36
  %40 = lshr i32 %17, 6
  %41 = icmp ugt i32 %40, %11
  br i1 %41, label %42, label %19

42:                                               ; preds = %39
  %43 = lshr i32 %17, 7
  %44 = icmp ugt i32 %43, %11
  br i1 %44, label %45, label %19

45:                                               ; preds = %42
  %46 = lshr i32 %17, 8
  br label %47

47:                                               ; preds = %45, %19
  %48 = phi i32 [ 8, %45 ], [ %21, %19 ]
  %49 = phi i32 [ %46, %45 ], [ %20, %19 ]
  %50 = phi i32 [ %17, %45 ], [ %23, %19 ]
  %51 = sub i32 %11, %49
  %52 = sub i32 %50, %11
  %53 = icmp ugt i32 %51, %52
  %54 = sext i1 %53 to i32
  %55 = add nsw i32 %48, %54
  %56 = select i1 %53, i32 %50, i32 %49
  br label %57

57:                                               ; preds = %47, %2
  %58 = phi i32 [ 0, %2 ], [ %55, %47 ]
  %59 = phi i32 [ 0, %2 ], [ %56, %47 ]
  %60 = shl i32 %11, 1
  %61 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #9, !annotation !10
  %62 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 21
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @nvbios_pll_parse(ptr noundef %65, i32 noundef 16424, ptr noundef nonnull %4) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 8, i32 1
  store i32 0, ptr %69, align 4
  %70 = call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %71 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = call i32 @nv04_pll_calc(ptr noundef %61, ptr noundef nonnull %4, i32 noundef %60, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #9
  br label %75

75:                                               ; preds = %73, %68, %57
  %76 = phi i32 [ %74, %73 ], [ 0, %57 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  %77 = sub i32 %11, %59
  %78 = call i32 @llvm.abs.i32(i32 %77, i1 false)
  %79 = lshr i32 %76, 1
  %80 = sub i32 %11, %79
  %81 = call i32 @llvm.abs.i32(i32 %80, i1 false)
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 1
  store i32 6, ptr %84, align 4
  %85 = shl nsw i32 %58, 16
  %86 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 4
  store i32 %85, ptr %86, align 4
  br label %106

87:                                               ; preds = %75
  %88 = load i32, ptr %7, align 4
  %89 = icmp sgt i32 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = add nsw i32 %88, -2
  store i32 2, ptr %7, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ 2, %90 ], [ %88, %87 ]
  %94 = phi i32 [ %91, %90 ], [ 0, %87 ]
  %95 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 1
  store i32 15, ptr %95, align 4
  %96 = load i32, ptr %5, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, ptr %6, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 6
  store i32 %99, ptr %100, align 4
  %101 = shl i32 %94, 16
  %102 = add i32 %101, 65536
  %103 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 4
  store i32 %102, ptr %103, align 4
  %104 = shl nuw nsw i32 65536, %93
  %105 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 8
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %92, %83
  %107 = phi i32 [ 0, %83 ], [ %94, %92 ]
  %108 = call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %109 = icmp eq i32 %9, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 2
  store i32 1, ptr %111, align 4
  br label %195

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false) #9, !annotation !10
  %113 = load ptr, ptr %62, align 4
  %114 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 21
  %115 = load ptr, ptr %114, align 8
  %116 = call i32 @nvbios_pll_parse(ptr noundef %115, i32 noundef 16416, ptr noundef nonnull %3) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 8, i32 1
  store i32 0, ptr %119, align 4
  %120 = call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 1) #9
  %121 = getelementptr inbounds %struct.nvbios_pll, ptr %3, i32 0, i32 2
  store i32 %120, ptr %121, align 4
  %122 = icmp eq i32 %120, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = call i32 @nv04_pll_calc(ptr noundef %61, ptr noundef nonnull %3, i32 noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #9
  br label %125

125:                                              ; preds = %123, %118, %112
  %126 = phi i32 [ %124, %123 ], [ 0, %112 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  %127 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 15
  br i1 %129, label %130, label %170

130:                                              ; preds = %125
  %131 = icmp ugt i32 %60, %9
  br i1 %131, label %137, label %132

132:                                              ; preds = %155, %152, %149, %146, %143, %140, %137, %130
  %133 = phi i32 [ %60, %130 ], [ %138, %137 ], [ %141, %140 ], [ %144, %143 ], [ %147, %146 ], [ %150, %149 ], [ %153, %152 ], [ %156, %155 ]
  %134 = phi i32 [ 0, %130 ], [ 1, %137 ], [ 2, %140 ], [ 3, %143 ], [ 4, %146 ], [ 5, %149 ], [ 6, %152 ], [ 7, %155 ]
  %135 = zext i1 %131 to i32
  %136 = shl i32 %133, %135
  br label %160

137:                                              ; preds = %130
  %138 = and i32 %11, 2147483647
  %139 = icmp ugt i32 %138, %9
  br i1 %139, label %140, label %132

140:                                              ; preds = %137
  %141 = lshr i32 %60, 2
  %142 = icmp ugt i32 %141, %9
  br i1 %142, label %143, label %132

143:                                              ; preds = %140
  %144 = lshr i32 %60, 3
  %145 = icmp ugt i32 %144, %9
  br i1 %145, label %146, label %132

146:                                              ; preds = %143
  %147 = lshr i32 %60, 4
  %148 = icmp ugt i32 %147, %9
  br i1 %148, label %149, label %132

149:                                              ; preds = %146
  %150 = lshr i32 %60, 5
  %151 = icmp ugt i32 %150, %9
  br i1 %151, label %152, label %132

152:                                              ; preds = %149
  %153 = lshr i32 %60, 6
  %154 = icmp ugt i32 %153, %9
  br i1 %154, label %155, label %132

155:                                              ; preds = %152
  %156 = lshr i32 %60, 7
  %157 = icmp ugt i32 %156, %9
  br i1 %157, label %158, label %132

158:                                              ; preds = %155
  %159 = lshr i32 %60, 8
  br label %160

160:                                              ; preds = %158, %132
  %161 = phi i32 [ 8, %158 ], [ %134, %132 ]
  %162 = phi i32 [ %159, %158 ], [ %133, %132 ]
  %163 = phi i32 [ %60, %158 ], [ %136, %132 ]
  %164 = sub i32 %9, %162
  %165 = sub i32 %163, %9
  %166 = icmp ugt i32 %164, %165
  %167 = sext i1 %166 to i32
  %168 = add nsw i32 %161, %167
  %169 = select i1 %166, i32 %163, i32 %162
  br label %170

170:                                              ; preds = %160, %125
  %171 = phi i32 [ %58, %125 ], [ %168, %160 ]
  %172 = phi i32 [ 0, %125 ], [ %169, %160 ]
  %173 = sub i32 %9, %172
  %174 = call i32 @llvm.abs.i32(i32 %173, i1 false)
  %175 = sub i32 %9, %126
  %176 = call i32 @llvm.abs.i32(i32 %175, i1 false)
  %177 = icmp sgt i32 %174, %176
  br i1 %177, label %185, label %178

178:                                              ; preds = %170
  %179 = add i32 %171, %107
  %180 = icmp slt i32 %179, 8
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 2
  store i32 15, ptr %182, align 4
  %183 = shl i32 %179, 16
  %184 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 5
  store i32 %183, ptr %184, align 4
  br label %195

185:                                              ; preds = %178, %170
  %186 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 2
  store i32 17, ptr %186, align 4
  %187 = load i32, ptr %5, align 4
  %188 = shl i32 %187, 8
  %189 = load i32, ptr %6, align 4
  %190 = or i32 %188, %189
  %191 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 7
  store i32 %190, ptr %191, align 4
  %192 = load i32, ptr %7, align 4
  %193 = shl i32 %192, 16
  %194 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 5
  store i32 %193, ptr %194, align 4
  br label %195

195:                                              ; preds = %185, %181, %110
  %196 = icmp ugt i32 %11, %13
  br i1 %196, label %202, label %197

197:                                              ; preds = %220, %217, %214, %211, %208, %205, %202, %195
  %198 = phi i32 [ %11, %195 ], [ %203, %202 ], [ %206, %205 ], [ %209, %208 ], [ %212, %211 ], [ %215, %214 ], [ %218, %217 ], [ %221, %220 ]
  %199 = phi i32 [ 0, %195 ], [ 1, %202 ], [ 2, %205 ], [ 3, %208 ], [ 4, %211 ], [ 5, %214 ], [ 6, %217 ], [ 7, %220 ]
  %200 = zext i1 %196 to i32
  %201 = shl i32 %198, %200
  br label %225

202:                                              ; preds = %195
  %203 = lshr i32 %11, 1
  %204 = icmp ugt i32 %203, %13
  br i1 %204, label %205, label %197

205:                                              ; preds = %202
  %206 = lshr i32 %11, 2
  %207 = icmp ugt i32 %206, %13
  br i1 %207, label %208, label %197

208:                                              ; preds = %205
  %209 = lshr i32 %11, 3
  %210 = icmp ugt i32 %209, %13
  br i1 %210, label %211, label %197

211:                                              ; preds = %208
  %212 = lshr i32 %11, 4
  %213 = icmp ugt i32 %212, %13
  br i1 %213, label %214, label %197

214:                                              ; preds = %211
  %215 = lshr i32 %11, 5
  %216 = icmp ugt i32 %215, %13
  br i1 %216, label %217, label %197

217:                                              ; preds = %214
  %218 = lshr i32 %11, 6
  %219 = icmp ugt i32 %218, %13
  br i1 %219, label %220, label %197

220:                                              ; preds = %217
  %221 = lshr i32 %11, 7
  %222 = icmp ugt i32 %221, %13
  br i1 %222, label %223, label %197

223:                                              ; preds = %220
  %224 = lshr i32 %11, 8
  br label %225

225:                                              ; preds = %223, %197
  %226 = phi i32 [ 8, %223 ], [ %199, %197 ]
  %227 = phi i32 [ %224, %223 ], [ %198, %197 ]
  %228 = phi i32 [ %11, %223 ], [ %201, %197 ]
  %229 = sub i32 %13, %227
  %230 = sub i32 %228, %13
  %231 = icmp ugt i32 %229, %230
  %232 = sext i1 %231 to i32
  %233 = add nsw i32 %226, %232
  %234 = select i1 %231, i32 %228, i32 %227
  %235 = icmp ult i32 %13, 500000
  br i1 %235, label %241, label %236

236:                                              ; preds = %253, %251, %249, %247, %245, %243, %241, %225
  %237 = phi i32 [ 500000, %225 ], [ 250000, %241 ], [ 125000, %243 ], [ 62500, %245 ], [ 31250, %247 ], [ 15625, %249 ], [ 7812, %251 ], [ 3906, %253 ]
  %238 = phi i32 [ 0, %225 ], [ 1, %241 ], [ 2, %243 ], [ 3, %245 ], [ 4, %247 ], [ 5, %249 ], [ 6, %251 ], [ 7, %253 ]
  store i32 %238, ptr %7, align 4
  %239 = zext i1 %235 to i32
  %240 = shl nuw nsw i32 %237, %239
  br label %256

241:                                              ; preds = %225
  %242 = icmp ult i32 %13, 250000
  br i1 %242, label %243, label %236

243:                                              ; preds = %241
  %244 = icmp ult i32 %13, 125000
  br i1 %244, label %245, label %236

245:                                              ; preds = %243
  %246 = icmp ult i32 %13, 62500
  br i1 %246, label %247, label %236

247:                                              ; preds = %245
  %248 = icmp ult i32 %13, 31250
  br i1 %248, label %249, label %236

249:                                              ; preds = %247
  %250 = icmp ult i32 %13, 15625
  br i1 %250, label %251, label %236

251:                                              ; preds = %249
  %252 = icmp ult i32 %13, 7812
  br i1 %252, label %253, label %236

253:                                              ; preds = %251
  %254 = icmp ult i32 %13, 3906
  br i1 %254, label %255, label %236

255:                                              ; preds = %253
  store i32 8, ptr %7, align 4
  br label %256

256:                                              ; preds = %255, %236
  %257 = phi i32 [ %238, %236 ], [ 8, %255 ]
  %258 = phi i32 [ %237, %236 ], [ 1953, %255 ]
  %259 = phi i32 [ %240, %236 ], [ 500000, %255 ]
  %260 = sub i32 %13, %258
  %261 = sub i32 %259, %13
  %262 = icmp ugt i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = add nsw i32 %257, -1
  store i32 %264, ptr %7, align 4
  %265 = sub i32 %13, %259
  br label %266

266:                                              ; preds = %263, %256
  %267 = phi i32 [ %260, %256 ], [ %265, %263 ]
  %268 = phi i32 [ %257, %256 ], [ %264, %263 ]
  %269 = sub i32 %13, %234
  %270 = call i32 @llvm.abs.i32(i32 %269, i1 false)
  %271 = call i32 @llvm.abs.i32(i32 %267, i1 false)
  %272 = icmp sgt i32 %270, %271
  %273 = select i1 %272, i32 27, i32 7
  %274 = select i1 %272, i32 %268, i32 %233
  %275 = shl nsw i32 %274, 16
  %276 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 3
  store i32 %273, ptr %276, align 4
  %277 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 10
  store i32 %275, ptr %277, align 4
  %278 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %279 = load i32, ptr %278, align 4
  %280 = icmp ugt i32 %279, 3
  br i1 %280, label %281, label %311

281:                                              ; preds = %266
  %282 = load ptr, ptr %62, align 4
  %283 = getelementptr inbounds %struct.nvkm_device, ptr %282, i32 0, i32 2
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %286 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 6
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 8
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 4
  %291 = load i32, ptr %290, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %284, ptr noundef nonnull @.str.5, ptr noundef %285, i32 noundef %287, i32 noundef %289, i32 noundef %291) #10
  %292 = load i32, ptr %278, align 4
  %293 = icmp ugt i32 %292, 3
  br i1 %293, label %294, label %311

294:                                              ; preds = %281
  %295 = load ptr, ptr %62, align 4
  %296 = getelementptr inbounds %struct.nvkm_device, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 8
  %298 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 7
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 9
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 5
  %303 = load i32, ptr %302, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %297, ptr noundef nonnull @.str.6, ptr noundef %285, i32 noundef %299, i32 noundef %301, i32 noundef %303) #10
  %304 = load i32, ptr %278, align 4
  %305 = icmp ugt i32 %304, 3
  br i1 %305, label %306, label %311

306:                                              ; preds = %294
  %307 = load ptr, ptr %62, align 4
  %308 = getelementptr inbounds %struct.nvkm_device, ptr %307, i32 0, i32 2
  %309 = load ptr, ptr %308, align 8
  %310 = load i32, ptr %277, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %309, ptr noundef nonnull @.str.7, ptr noundef %285, i32 noundef %310) #10
  br label %311

311:                                              ; preds = %306, %294, %281, %266
  %312 = load i32, ptr %278, align 4
  %313 = icmp ugt i32 %312, 3
  br i1 %313, label %314, label %323

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 1
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %316, 6
  %318 = select i1 %317, ptr @.str.8, ptr @.str.9
  %319 = load ptr, ptr %62, align 4
  %320 = getelementptr inbounds %struct.nvkm_device, ptr %319, i32 0, i32 2
  %321 = load ptr, ptr %320, align 8
  %322 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %321, ptr noundef nonnull %318, ptr noundef %322) #10
  br label %323

323:                                              ; preds = %314, %311
  %324 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 2
  %325 = load i32, ptr %324, align 4
  switch i32 %325, label %332 [
    i32 6, label %326
    i32 15, label %329
  ]

326:                                              ; preds = %323
  %327 = load i32, ptr %278, align 4
  %328 = icmp ugt i32 %327, 3
  br i1 %328, label %335, label %341

329:                                              ; preds = %323
  %330 = load i32, ptr %278, align 4
  %331 = icmp ugt i32 %330, 3
  br i1 %331, label %335, label %341

332:                                              ; preds = %323
  %333 = load i32, ptr %278, align 4
  %334 = icmp ugt i32 %333, 3
  br i1 %334, label %335, label %341

335:                                              ; preds = %332, %329, %326
  %336 = phi ptr [ @.str.10, %326 ], [ @.str.11, %329 ], [ @.str.12, %332 ]
  %337 = load ptr, ptr %62, align 4
  %338 = getelementptr inbounds %struct.nvkm_device, ptr %337, i32 0, i32 2
  %339 = load ptr, ptr %338, align 8
  %340 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %339, ptr noundef nonnull %336, ptr noundef %340) #10
  br label %341

341:                                              ; preds = %335, %332, %329, %326
  %342 = load i32, ptr %278, align 4
  %343 = icmp ugt i32 %342, 3
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load i32, ptr %276, align 4
  %346 = icmp eq i32 %345, 6
  %347 = select i1 %346, ptr @.str.13, ptr @.str.14
  %348 = load ptr, ptr %62, align 4
  %349 = getelementptr inbounds %struct.nvkm_device, ptr %348, i32 0, i32 2
  %350 = load ptr, ptr %349, align 8
  %351 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %350, ptr noundef nonnull %347, ptr noundef %351) #10
  br label %352

352:                                              ; preds = %344, %341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp77_clk_prog(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %6 = call i32 @gt215_clk_pre(ptr noundef %0, ptr noundef nonnull %2) #9
  switch i32 %6, label %170 [
    i32 0, label %7
    i32 -16, label %169
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 49236
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %12 = and i32 %11, -54529649
  %13 = or i32 %12, 54527552
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 49236
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !12
  %16 = and i32 %11, -54529652
  %17 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %43 [
    i32 6, label %19
    i32 15, label %29
  ]

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 16424
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %23 = and i32 %22, -458753
  %24 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 16424
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !12
  br label %52

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr i8, ptr %32, i32 16428
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !12
  %34 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, -2147483648
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr i8, ptr %37, i32 16424
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !12
  %39 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 16448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !12
  br label %52

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %147

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %50, ptr noundef nonnull @.str.15, ptr noundef %51) #10
  br label %144

52:                                               ; preds = %29, %19
  %53 = phi i32 [ 50331651, %29 ], [ 50331650, %19 ]
  %54 = phi i32 [ 768, %29 ], [ 0, %19 ]
  %55 = or i32 %16, %53
  %56 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %92 [
    i32 1, label %58
    i32 15, label %65
    i32 17, label %76
  ]

58:                                               ; preds = %52
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr i8, ptr %59, i32 16416
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %62 = and i32 %61, -458753
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr i8, ptr %63, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !12
  br label %101

65:                                               ; preds = %52
  %66 = load ptr, ptr %8, align 4
  %67 = getelementptr i8, ptr %66, i32 16416
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %69 = and i32 %68, -458753
  %70 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, %69
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr i8, ptr %73, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !12
  %75 = or i32 %55, 32
  br label %101

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr i8, ptr %79, i32 16420
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #9, !srcloc !12
  %81 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, -2147483648
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr i8, ptr %84, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #9, !srcloc !12
  %86 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr i8, ptr %88, i32 16496
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #9, !srcloc !12
  %90 = or i32 %54, 12288
  %91 = or i32 %55, 48
  br label %101

92:                                               ; preds = %52
  %93 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %144

96:                                               ; preds = %92
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %99, ptr noundef nonnull @.str.16, ptr noundef %100) #10
  br label %144

101:                                              ; preds = %76, %65, %58
  %102 = phi i32 [ %91, %76 ], [ %75, %65 ], [ %55, %58 ]
  %103 = phi i32 [ %90, %76 ], [ %54, %65 ], [ %54, %58 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #9
  br label %104

104:                                              ; preds = %110, %101
  %105 = load ptr, ptr %8, align 4
  %106 = getelementptr i8, ptr %105, i32 16512
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %108 = and i32 %107, %103
  %109 = icmp eq i32 %108, %103
  br i1 %109, label %132, label %110

110:                                              ; preds = %104
  %111 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #9
  %112 = icmp sgt i64 %111, -1
  br i1 %112, label %104, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.nvkm_timer, ptr %114, i32 0, i32 1, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8
  %119 = call ptr @dev_driver_string(ptr noundef %118) #9
  %120 = load ptr, ptr %3, align 8
  %121 = getelementptr inbounds %struct.nvkm_timer, ptr %120, i32 0, i32 1, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load ptr, ptr %124, align 4
  br label %130

130:                                              ; preds = %128, %113
  %131 = phi ptr [ %129, %128 ], [ %126, %113 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 357, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %119, ptr noundef %131) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  br label %144

132:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %133 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 7
  %136 = or i32 %102, 4194304
  %137 = select i1 %135, i32 %136, i32 %102
  %138 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 10
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr %8, align 4
  %141 = getelementptr i8, ptr %140, i32 17920
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #9, !srcloc !12
  %142 = load ptr, ptr %8, align 4
  %143 = getelementptr i8, ptr %142, i32 49236
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %137) #9, !srcloc !12
  br label %144

144:                                              ; preds = %132, %130, %96, %92, %47
  %145 = load i32, ptr %17, align 4
  %146 = icmp eq i32 %145, 15
  br i1 %146, label %156, label %147

147:                                              ; preds = %144, %43
  %148 = load ptr, ptr %8, align 4
  %149 = getelementptr i8, ptr %148, i32 16448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 0) #9, !srcloc !12
  %150 = load ptr, ptr %8, align 4
  %151 = getelementptr i8, ptr %150, i32 16424
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %153 = and i32 %152, 2147483647
  %154 = load ptr, ptr %8, align 4
  %155 = getelementptr i8, ptr %154, i32 16424
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #9, !srcloc !12
  br label %156

156:                                              ; preds = %147, %144
  %157 = getelementptr inbounds %struct.mcp77_clk, ptr %0, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 17
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %8, align 4
  %162 = getelementptr i8, ptr %161, i32 16496
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 0) #9, !srcloc !12
  %163 = load ptr, ptr %8, align 4
  %164 = getelementptr i8, ptr %163, i32 16416
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %166 = and i32 %165, 2147483647
  %167 = load ptr, ptr %8, align 4
  %168 = getelementptr i8, ptr %167, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #9, !srcloc !12
  br label %170

169:                                              ; preds = %1
  br label %170

170:                                              ; preds = %169, %160, %156, %1
  %171 = phi ptr [ null, %169 ], [ %2, %1 ], [ %2, %156 ], [ %2, %160 ]
  call void @gt215_clk_post(ptr noundef %0, ptr noundef %171) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mcp77_clk_tidy(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_clk_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_clk_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3952168}
!9 = !{i64 2151491621}
!10 = !{!"auto-init"}
!11 = !{i64 2151492843}
!12 = !{i64 3951750}
