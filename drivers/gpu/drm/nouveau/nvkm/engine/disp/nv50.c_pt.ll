; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.132, %struct.anon.132, %struct.anon.132, %struct.anon.132, i16 }
%struct.anon.132 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.126, %struct.anon.126, %struct.anon.126, %struct.anon.127, %struct.anon.128, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.126 = type { i32, i32 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.anon.128 = type { i32, i32, [3 x i8] }
%struct.nvkm_head = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_head_state, %struct.nvkm_head_state }
%struct.nvkm_head_state = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, %struct.anon.139 }
%struct.anon.139 = type { i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ior_func = type { %struct.anon.140, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, %struct.anon.149 }
%struct.anon.140 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr }
%struct.anon.148 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.nvbios_ocfg = type { i8, i8, [2 x i16] }
%struct.nvbios_outp = type { i16, i16, [3 x i16] }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.150, %struct.anon.151 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.150 = type { i8, i8, i8, i8 }
%struct.anon.151 = type { i8 }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.141, i8 }
%union.anon.141 = type { %struct.anon.145 }
%struct.anon.145 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_outp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_head_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@nv50_disp_ = internal constant %struct.nvkm_disp_func { ptr @nv50_disp_dtor_, ptr @nv50_disp_oneinit_, ptr @nv50_disp_init_, ptr @nv50_disp_fini_, ptr @nv50_disp_intr_, ptr @nv50_disp_root_ }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nvkm-disp\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: head-%d: supervisor 3.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: head-%d: supervisor 2.2\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: head-%d: supervisor 2.1 - %d khz\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: head-%d: supervisor 2.0\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: head-%d: supervisor 1.0\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: supervisor %08x %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"PUSHBUFFER_ERR\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"RESERVED_METHOD\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"INVALID_ARG\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"INVALID_STATE\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"UNRESOLVABLE_HANDLE\00", align 1
@nv50_disp_intr_error_type = dso_local constant [8 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@nv50_disp = internal constant %struct.nv50_disp_func { ptr @nv50_disp_init, ptr @nv50_disp_fini, ptr @nv50_disp_intr, ptr null, ptr @nv50_disp_chan_uevent, ptr @nv50_disp_super, ptr @nv50_disp_root_oclass, %struct.anon.132 zeroinitializer, %struct.anon.132 { ptr @nv50_head_cnt, ptr @nv50_head_new }, %struct.anon.132 { ptr @nv50_dac_cnt, ptr @nv50_dac_new }, %struct.anon.132 { ptr @nv50_sor_cnt, ptr @nv50_sor_new }, %struct.anon.132 { ptr @nv50_pior_cnt, ptr @nv50_pior_new }, i16 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"%s: Window(s): %d (%08lx)\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%s:   Head(s): %d (%02lx)\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"%s:    DAC(s): %d (%02lx)\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%s:   PIOR(s): %d (%02lx)\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"%s:    SOR(s): %d (%02lx)\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%s: head-%d: to %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"%s: head-%d: nothing to attach\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"%s: %s: nothing to attach\0A\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"%s: outp %02x:%04x:%04x: missing IEDT RS for %02x:%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"%s: outp %02x:%04x:%04x: missing IEDT RSS %d for %02x:%02x %d khz\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"%s: outp %02x:%04x:%04x: missing IEDT for %04x:%04x\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"%s: unable to determine dp config\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"%s: head-%d: on %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"%s: head-%d: nothing attached\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"%s: %s: nothing attached\0A\00", align 1
@nv50_disp_intr_error_code = internal constant [2 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.32 = private unnamed_addr constant [57 x i8] c"%s: ERROR %d [%s] %02x [%s] chid %d mthd %04x data %08x\0A\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv50_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@nv50_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 636) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  store ptr %10, ptr %4, align 4
  %11 = tail call i32 @nvkm_disp_ctor(ptr noundef nonnull @nv50_disp_, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #9
  %15 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  %16 = icmp eq ptr %14, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 3
  store i32 -32, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 3, i32 1
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 3, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nv50_disp_func, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 3, i32 2
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nv50_disp_func, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 5
  %27 = tail call i32 @nvkm_event_init(ptr noundef %25, i32 noundef 1, i32 noundef 81, ptr noundef %26) #9
  br label %28

28:                                               ; preds = %17, %13, %9, %5
  %29 = phi i32 [ %27, %17 ], [ -12, %5 ], [ %11, %9 ], [ -12, %13 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_disp_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_3_0(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 4
  %14 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %15) #10
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi ptr [ %16, %8 ], [ %4, %2 ]
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %19, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 32
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 9
  %29 = and i32 %28, 255
  %30 = load i32, ptr %20, align 4
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %21, label %34

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %23, i32 -24
  %36 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %45 = getelementptr i8, ptr %23, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.22, ptr noundef %44, i32 noundef %30, ptr noundef %45) #10
  br label %57

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %56 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.23, ptr noundef %55, i32 noundef %56) #10
  br label %68

57:                                               ; preds = %39, %34
  %58 = icmp eq ptr %35, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = udiv i32 %61, 1000
  tail call fastcc void @nv50_disp_super_ied_on(ptr noundef %1, ptr noundef nonnull %35, i32 noundef 1, i32 noundef %62)
  %63 = load ptr, ptr %35, align 4
  %64 = getelementptr inbounds %struct.nvkm_ior_func, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  tail call void %65(ptr noundef nonnull %35) #9
  br label %68

68:                                               ; preds = %67, %59, %57, %50, %46
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_super_ied_on(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nvbios_ocfg, align 2
  %6 = alloca %struct.nvbios_outp, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.nvbios_init, align 4
  %12 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %5, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %6, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_disp, ptr %24, i32 0, i32 1, i32 1, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 3
  br i1 %27, label %28, label %172

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.nvkm_disp, ptr %24, i32 0, i32 1, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_disp, ptr %24, i32 0, i32 1, i32 1, i32 4
  %34 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.24, ptr noundef %33, ptr noundef %34) #10
  br label %172

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3, i32 10
  %37 = load i8, ptr %36, align 2
  %38 = tail call i8 @llvm.cttz.i8(i8 %37, i1 true) #9, !range !9
  %39 = icmp eq i8 %37, 0
  %40 = add nuw nsw i8 %38, 1
  %41 = select i1 %39, i8 0, i8 %40
  %42 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3, i32 1
  %43 = load i16, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 256, %45
  %47 = zext i8 %41 to i32
  %48 = shl nuw nsw i32 %47, 6
  %49 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3, i32 9
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %46, %51
  %53 = or i32 %52, %48
  %54 = trunc i32 %53 to i16
  %55 = call zeroext i16 @nvbios_outp_match(ptr noundef %18, i16 noundef zeroext %43, i16 noundef zeroext %54, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #9
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 3
  br i1 %62, label %63, label %172

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 4
  %69 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = load i16, ptr %42, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3, i32 2
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = zext i16 %43 to i32
  %77 = and i32 %53, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.27, ptr noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %75, i32 noundef %76, i32 noundef %77) #10
  br label %172

78:                                               ; preds = %35
  %79 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 1
  %82 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 8, i32 2
  %83 = load i32, ptr %82, align 4
  br i1 %81, label %84, label %98

84:                                               ; preds = %78
  %85 = and i32 %83, 112
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 5, i32 9
  %89 = load i8, ptr %88, align 4
  %90 = icmp eq i8 %89, 24
  %91 = select i1 %90, i8 2, i8 0
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i8 [ 0, %84 ], [ %91, %87 ]
  %94 = and i32 %83, 384
  %95 = icmp eq i32 %94, 384
  %96 = zext i1 %95 to i8
  %97 = or i8 %93, %96
  br label %98

98:                                               ; preds = %92, %78
  %99 = phi i8 [ %97, %92 ], [ 0, %78 ]
  %100 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 8, i32 2
  %101 = trunc i32 %83 to i8
  %102 = and i8 %101, 15
  %103 = call zeroext i16 @nvbios_ocfg_match(ptr noundef %18, i16 noundef zeroext %55, i8 noundef zeroext %102, i8 noundef zeroext %99, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %5) #9
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_disp, ptr %107, i32 0, i32 1, i32 1, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = icmp ugt i32 %109, 3
  br i1 %110, label %111, label %172

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.nvkm_disp, ptr %107, i32 0, i32 1, i32 1, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nvkm_disp, ptr %107, i32 0, i32 1, i32 1, i32 4
  %117 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = load i16, ptr %42, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3, i32 2
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = load i32, ptr %100, align 4
  %125 = and i32 %124, 15
  %126 = zext i8 %99 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.25, ptr noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %123, i32 noundef %125, i32 noundef %126) #10
  br label %172

127:                                              ; preds = %98
  %128 = getelementptr %struct.nvbios_ocfg, ptr %5, i32 0, i32 2, i32 %2
  %129 = load i16, ptr %128, align 2
  %130 = call zeroext i16 @nvbios_oclk_match(ptr noundef %18, i16 noundef zeroext %129, i32 noundef %3) #9
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.nvkm_disp, ptr %134, i32 0, i32 1, i32 1, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp ugt i32 %136, 3
  br i1 %137, label %138, label %172

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.nvkm_disp, ptr %134, i32 0, i32 1, i32 1, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.nvkm_disp, ptr %134, i32 0, i32 1, i32 1, i32 4
  %144 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = load i16, ptr %42, align 4
  %147 = zext i16 %146 to i32
  %148 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3, i32 2
  %149 = load i16, ptr %148, align 2
  %150 = zext i16 %149 to i32
  %151 = load i32, ptr %100, align 4
  %152 = and i32 %151, 15
  %153 = zext i8 %99 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.26, ptr noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %150, i32 noundef %2, i32 noundef %152, i32 noundef %153, i32 noundef %3) #10
  br label %172

154:                                              ; preds = %127
  %155 = zext i16 %130 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %11) #9
  %156 = getelementptr inbounds i8, ptr %11, i32 24
  store i32 0, ptr %156, align 4, !annotation !8
  store ptr %14, ptr %11, align 4
  %157 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 1
  store i32 %155, ptr %157, align 4
  %158 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 2
  %159 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 3
  %160 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 4
  %161 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 5
  %162 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 6
  store i8 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.nvbios_init, ptr %11, i32 0, i32 7
  %164 = getelementptr inbounds %struct.nvkm_outp, ptr %20, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  store ptr %164, ptr %158, align 4
  %165 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 3
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %159, align 4
  %167 = load i32, ptr %100, align 4
  %168 = lshr i32 %167, 7
  %169 = and i32 %168, 3
  store i32 %169, ptr %160, align 4
  %170 = load i32, ptr %44, align 4
  store i32 %170, ptr %161, align 4
  %171 = call i32 @nvbios_exec(ptr noundef nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %11) #9
  br label %172

172:                                              ; preds = %154, %138, %132, %111, %105, %63, %57, %28, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_2_2(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = udiv i32 %4, 1000
  %6 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 4
  %17 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef %18) #10
  %19 = load ptr, ptr %6, align 4
  br label %20

20:                                               ; preds = %11, %2
  %21 = phi ptr [ %19, %11 ], [ %7, %2 ]
  %22 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  br label %24

24:                                               ; preds = %28, %20
  %25 = phi ptr [ %22, %20 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 32
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 9
  %32 = and i32 %31, 255
  %33 = load i32, ptr %23, align 4
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %24, label %37

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %26, i32 32
  %39 = getelementptr i8, ptr %26, i32 -24
  %40 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 4
  %49 = getelementptr i8, ptr %26, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.22, ptr noundef %48, i32 noundef %33, ptr noundef %49) #10
  br label %61

50:                                               ; preds = %24
  %51 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %311

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_disp, ptr %21, i32 0, i32 1, i32 1, i32 4
  %60 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.23, ptr noundef %59, i32 noundef %60) #10
  br label %311

61:                                               ; preds = %43, %37
  %62 = icmp eq ptr %39, null
  br i1 %62, label %311, label %63

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %26, i32 -16
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i32, ptr %38, align 4
  %69 = and i32 %68, 112
  %70 = icmp eq i32 %69, 48
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 9, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 512
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i8 18, i8 24
  %77 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 9
  store i8 %76, ptr %77, align 4
  %78 = load i32, ptr %72, align 4
  %79 = and i32 %78, 256
  %80 = load i32, ptr %38, align 4
  %81 = and i32 %80, -385
  %82 = or i32 %79, %81
  %83 = or i32 %82, 128
  store i32 %83, ptr %38, align 4
  br label %84

84:                                               ; preds = %71, %67, %63
  %85 = getelementptr i8, ptr %26, i32 24
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr inbounds %struct.nvkm_outp_func, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = tail call i32 %91(ptr noundef nonnull %86) #9
  br label %95

95:                                               ; preds = %93, %88, %84
  tail call fastcc void @nv50_disp_super_ied_on(ptr noundef %1, ptr noundef nonnull %39, i32 noundef 0, i32 noundef %5)
  %96 = load ptr, ptr %1, align 4
  %97 = getelementptr inbounds %struct.nvkm_head_func, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %26, i32 28
  %100 = load i32, ptr %99, align 4
  tail call void %98(ptr noundef %1, i32 noundef %100) #9
  %101 = load i32, ptr %64, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %302

103:                                              ; preds = %95
  %104 = load i32, ptr %38, align 4
  %105 = and i32 %104, 112
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %302

107:                                              ; preds = %103
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5
  %110 = load i32, ptr %3, align 4
  %111 = udiv i32 %110, 1000
  %112 = getelementptr i8, ptr %26, i32 39
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = mul nuw nsw i32 %114, 27000
  %116 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 2
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  %119 = load i16, ptr %109, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 3
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = add nsw i32 %118, -7
  %125 = add nsw i32 %124, %120
  %126 = sub nsw i32 %125, %123
  %127 = sext i32 %126 to i64
  %128 = zext i32 %115 to i64
  %129 = mul nsw i64 %127, %128
  %130 = icmp ult i64 %129, 4294967296
  br i1 %130, label %131, label %135, !prof !10

131:                                              ; preds = %107
  %132 = trunc i64 %129 to i32
  %133 = udiv i32 %132, %111
  %134 = zext i32 %133 to i64
  br label %138

135:                                              ; preds = %107
  %136 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %111, i64 %129) #11, !srcloc !11
  %137 = extractvalue { i64, i64 } %136, 1
  br label %138

138:                                              ; preds = %135, %131
  %139 = phi i64 [ %134, %131 ], [ %137, %135 ]
  %140 = getelementptr i8, ptr %26, i32 37
  %141 = load i8, ptr %140, align 1, !range !12
  %142 = mul nuw nsw i8 %141, 3
  %143 = getelementptr i8, ptr %26, i32 38
  %144 = load i8, ptr %143, align 2
  %145 = udiv i8 12, %144
  %146 = add nuw nsw i8 %145, %142
  %147 = zext i8 %146 to i64
  %148 = sub i64 %139, %147
  %149 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 7
  %150 = load i16, ptr %149, align 2
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 6
  %153 = load i16, ptr %152, align 4
  %154 = zext i16 %153 to i32
  %155 = add nsw i32 %151, -25
  %156 = sub nsw i32 %155, %154
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %128
  %159 = icmp ult i64 %158, 4294967296
  br i1 %159, label %160, label %164, !prof !10

160:                                              ; preds = %138
  %161 = trunc i64 %158 to i32
  %162 = udiv i32 %161, %111
  %163 = zext i32 %162 to i64
  br label %167

164:                                              ; preds = %138
  %165 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %111, i64 %158) #11, !srcloc !11
  %166 = extractvalue { i64, i64 } %165, 1
  br label %167

167:                                              ; preds = %164, %160
  %168 = phi i64 [ %163, %160 ], [ %166, %164 ]
  %169 = udiv i8 36, %144
  %170 = add nuw nsw i8 %169, 3
  %171 = zext i8 %170 to i64
  %172 = xor i64 %171, -1
  %173 = add i64 %168, %172
  %174 = load ptr, ptr %39, align 4
  %175 = getelementptr inbounds %struct.nvkm_ior_func, ptr %174, i32 0, i32 8, i32 7
  %176 = load ptr, ptr %175, align 4
  %177 = load i32, ptr %23, align 4
  %178 = trunc i64 %148 to i16
  %179 = trunc i64 %173 to i32
  tail call void %176(ptr noundef nonnull %39, i32 noundef %177, i16 noundef zeroext %178, i32 noundef %179) #9
  %180 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 9
  %181 = load i8, ptr %180, align 4
  %182 = zext i8 %181 to i32
  %183 = mul nuw nsw i32 %111, %182
  %184 = lshr i32 %183, 3
  %185 = load i8, ptr %143, align 2
  %186 = zext i8 %185 to i32
  %187 = udiv i32 %184, %186
  %188 = zext i32 %187 to i64
  %189 = mul nuw nsw i64 %188, 100000
  %190 = icmp ult i64 %189, 4294967296
  br i1 %190, label %191, label %195, !prof !10

191:                                              ; preds = %167
  %192 = trunc i64 %189 to i32
  %193 = udiv i32 %192, %115
  %194 = zext i32 %193 to i64
  br label %198

195:                                              ; preds = %167
  %196 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %115, i64 %189) #11, !srcloc !11
  %197 = extractvalue { i64, i64 } %196, 1
  br label %198

198:                                              ; preds = %195, %191
  %199 = phi i64 [ %194, %191 ], [ %197, %195 ]
  %200 = load ptr, ptr %39, align 4
  %201 = getelementptr inbounds %struct.nvkm_ior_func, ptr %200, i32 0, i32 8, i32 8
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %278, label %204

204:                                              ; preds = %198
  %205 = trunc i64 %199 to i32
  br label %206

206:                                              ; preds = %246, %204
  %207 = phi i32 [ 0, %204 ], [ %251, %246 ]
  %208 = phi i32 [ 0, %204 ], [ %250, %246 ]
  %209 = phi i32 [ 0, %204 ], [ %249, %246 ]
  %210 = phi i32 [ 0, %204 ], [ %248, %246 ]
  %211 = phi i32 [ 64, %204 ], [ %252, %246 ]
  %212 = phi i32 [ 6400000, %204 ], [ %247, %246 ]
  %213 = mul i32 %211, %205
  %214 = udiv i32 %213, 100000
  %215 = mul nuw i32 %214, 100000
  %216 = sub nuw i32 %213, %215
  %217 = icmp eq i32 %213, %215
  br i1 %217, label %242, label %218

218:                                              ; preds = %206
  %219 = icmp ugt i32 %216, 49999
  br i1 %219, label %220, label %231

220:                                              ; preds = %218
  %221 = sub i32 100000, %216
  %222 = udiv i32 100000, %221
  %223 = mul i32 %222, %216
  %224 = icmp ne i32 %223, 100000
  %225 = zext i1 %224 to i32
  %226 = add nuw nsw i32 %222, %225
  %227 = icmp ult i32 %226, 16
  br i1 %227, label %228, label %235

228:                                              ; preds = %220
  %229 = udiv i32 100000, %226
  %230 = sub nuw nsw i32 100000, %229
  br label %235

231:                                              ; preds = %218
  %232 = udiv i32 100000, %216
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 15) #9
  %234 = udiv i32 100000, %233
  br label %235

235:                                              ; preds = %231, %228, %220
  %236 = phi i32 [ 1, %228 ], [ 0, %231 ], [ 0, %220 ]
  %237 = phi i32 [ %226, %228 ], [ %233, %231 ], [ 1, %220 ]
  %238 = phi i32 [ %230, %228 ], [ %234, %231 ], [ 100000, %220 ]
  %239 = sub i32 %215, %213
  %240 = add i32 %238, %239
  %241 = icmp ult i32 %240, %212
  br i1 %241, label %244, label %246

242:                                              ; preds = %206
  %243 = icmp eq i32 %212, 0
  br i1 %243, label %246, label %266

244:                                              ; preds = %235
  %245 = icmp eq i32 %240, 0
  br i1 %245, label %268, label %246

246:                                              ; preds = %244, %242, %235
  %247 = phi i32 [ %240, %244 ], [ %212, %235 ], [ 0, %242 ]
  %248 = phi i32 [ %236, %244 ], [ %210, %235 ], [ %210, %242 ]
  %249 = phi i32 [ %237, %244 ], [ %209, %235 ], [ %209, %242 ]
  %250 = phi i32 [ %214, %244 ], [ %208, %235 ], [ %208, %242 ]
  %251 = phi i32 [ %211, %244 ], [ %207, %235 ], [ %207, %242 ]
  %252 = add nsw i32 %211, -1
  %253 = icmp ugt i32 %252, 31
  br i1 %253, label %206, label %254

254:                                              ; preds = %246
  %255 = icmp eq i32 %251, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %254
  %257 = getelementptr inbounds %struct.nvkm_disp, ptr %108, i32 0, i32 1, i32 1, i32 5
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %302, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.nvkm_disp, ptr %108, i32 0, i32 1, i32 1, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.nvkm_device, ptr %262, i32 0, i32 2
  %264 = load ptr, ptr %263, align 8
  %265 = getelementptr inbounds %struct.nvkm_disp, ptr %108, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.28, ptr noundef %265) #10
  br label %302

266:                                              ; preds = %242
  %267 = add nsw i32 %214, -1
  br label %268

268:                                              ; preds = %266, %254, %244
  %269 = phi i32 [ %248, %254 ], [ 0, %266 ], [ %236, %244 ]
  %270 = phi i32 [ %249, %254 ], [ 1, %266 ], [ %237, %244 ]
  %271 = phi i32 [ %250, %254 ], [ %267, %266 ], [ %214, %244 ]
  %272 = phi i32 [ %251, %254 ], [ %211, %266 ], [ %211, %244 ]
  %273 = load i32, ptr %23, align 4
  %274 = trunc i32 %272 to i8
  %275 = trunc i32 %269 to i8
  %276 = trunc i32 %270 to i8
  %277 = trunc i32 %271 to i8
  tail call void %202(ptr noundef nonnull %39, i32 noundef %273, i8 noundef zeroext %274, i8 noundef zeroext %275, i8 noundef zeroext %276, i8 noundef zeroext %277) #9
  br label %278

278:                                              ; preds = %268, %198
  %279 = phi i32 [ %272, %268 ], [ 64, %198 ]
  %280 = sub i64 100000, %199
  %281 = sext i32 %279 to i64
  %282 = mul i64 %280, %199
  %283 = mul i64 %282, %281
  %284 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %283, i32 0) #11, !srcloc !13
  %285 = extractvalue { i64, i32 } %284, 0
  %286 = extractvalue { i64, i32 } %284, 1
  %287 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %283, i64 %285, i32 %286) #11, !srcloc !14
  %288 = extractvalue { i64, i32 } %287, 0
  %289 = lshr i64 %288, 16
  %290 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %289, i32 0) #11, !srcloc !13
  %291 = extractvalue { i64, i32 } %290, 0
  %292 = extractvalue { i64, i32 } %290, 1
  %293 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %289, i64 %291, i32 %292) #11, !srcloc !14
  %294 = extractvalue { i64, i32 } %293, 0
  %295 = lshr i64 %294, 16
  %296 = trunc i64 %295 to i8
  %297 = load ptr, ptr %39, align 4
  %298 = getelementptr inbounds %struct.nvkm_ior_func, ptr %297, i32 0, i32 8, i32 9
  %299 = load ptr, ptr %298, align 4
  %300 = load i32, ptr %23, align 4
  %301 = add i8 %296, 6
  tail call void %299(ptr noundef nonnull %39, i32 noundef %300, i8 noundef zeroext %301) #9
  br label %302

302:                                              ; preds = %278, %260, %256, %103, %95
  %303 = load ptr, ptr %39, align 4
  %304 = getelementptr inbounds %struct.nvkm_ior_func, ptr %303, i32 0, i32 4
  %305 = load ptr, ptr %304, align 4
  tail call void %305(ptr noundef nonnull %39) #9
  %306 = load ptr, ptr %39, align 4
  %307 = getelementptr inbounds %struct.nvkm_ior_func, ptr %306, i32 0, i32 5
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %302
  tail call void %308(ptr noundef nonnull %39) #9
  br label %311

311:                                              ; preds = %310, %302, %61, %54, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_2_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 5, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %8, 1000
  %10 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %21 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef %20, i32 noundef %22, i32 noundef %9) #10
  br label %23

23:                                               ; preds = %15, %2
  %24 = icmp ult i32 %8, 1000
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 128
  %29 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %6, i32 noundef %28, i32 noundef %9) #9
  br label %30

30:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_2_0(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 4
  %14 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %13, i32 noundef %15) #10
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi ptr [ %16, %8 ], [ %4, %2 ]
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %19, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 9
  %29 = and i32 %28, 255
  %30 = load i32, ptr %20, align 4
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %21, label %34

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %23, i32 20
  %36 = getelementptr i8, ptr %23, i32 -24
  %37 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %46 = getelementptr i8, ptr %23, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.29, ptr noundef %45, i32 noundef %30, ptr noundef %46) #10
  br label %58

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 3
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %57 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.30, ptr noundef %56, i32 noundef %57) #10
  br label %77

58:                                               ; preds = %40, %34
  %59 = icmp eq ptr %36, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %58
  tail call fastcc void @nv50_disp_super_ied_off(ptr noundef %1, ptr noundef nonnull %36, i32 noundef 2)
  %61 = load i32, ptr %35, align 4
  %62 = lshr i32 %61, 9
  %63 = and i32 %62, 255
  %64 = load i32, ptr %20, align 4
  %65 = shl nuw i32 1, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = getelementptr i8, ptr %23, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 4
  %73 = getelementptr inbounds %struct.nvkm_outp_func, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void %74(ptr noundef nonnull %69, ptr noundef nonnull %36) #9
  br label %77

77:                                               ; preds = %76, %71, %67, %60, %58, %51, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_super_ied_off(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.nvbios_outp, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.nvbios_init, align 4
  %10 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %4, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %98

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 4
  %25 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.31, ptr noundef %24, ptr noundef %25) #10
  br label %98

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_disp, ptr %28, i32 0, i32 1, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 21
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3, i32 10
  %34 = load i8, ptr %33, align 2
  %35 = tail call i8 @llvm.cttz.i8(i8 %34, i1 true) #9, !range !9
  %36 = icmp eq i8 %34, 0
  %37 = add nuw nsw i8 %35, 1
  %38 = select i1 %36, i8 0, i8 %37
  %39 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 256, %42
  %44 = zext i8 %38 to i32
  %45 = shl nuw nsw i32 %44, 6
  %46 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3, i32 9
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %43, %48
  %50 = or i32 %49, %45
  %51 = trunc i32 %50 to i16
  %52 = call zeroext i16 @nvbios_outp_match(ptr noundef %32, i16 noundef zeroext %40, i16 noundef zeroext %51, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %4) #9
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %26
  %55 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %60, label %98

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 4
  %66 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = load i16, ptr %39, align 4
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3, i32 2
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = zext i16 %40 to i32
  %74 = and i32 %50, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.27, ptr noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %72, i32 noundef %73, i32 noundef %74) #10
  br label %98

75:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %9) #9
  %76 = getelementptr inbounds i8, ptr %9, i32 24
  store i32 0, ptr %76, align 4, !annotation !8
  %77 = load ptr, ptr %27, align 4
  %78 = getelementptr inbounds %struct.nvkm_disp, ptr %77, i32 0, i32 1, i32 1
  store ptr %78, ptr %9, align 4
  %79 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 1
  %80 = getelementptr %struct.nvbios_outp, ptr %4, i32 0, i32 2, i32 %2
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  store i32 %82, ptr %79, align 4
  %83 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 2
  %84 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 3
  %85 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 4
  %86 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 5
  %87 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 6
  store i8 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 7
  %89 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %88, i8 0, i64 16, i1 false)
  store ptr %89, ptr %83, align 4
  %90 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %84, align 4
  %92 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 7, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 7
  %95 = and i32 %94, 3
  store i32 %95, ptr %85, align 4
  %96 = load i32, ptr %41, align 4
  store i32 %96, ptr %86, align 4
  %97 = call i32 @nvbios_exec(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %9) #9
  br label %98

98:                                               ; preds = %75, %60, %54, %19, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_1_0(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 4
  %14 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef %13, i32 noundef %15) #10
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi ptr [ %16, %8 ], [ %4, %2 ]
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 2
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %19, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 9
  %29 = and i32 %28, 255
  %30 = load i32, ptr %20, align 4
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %21, label %34

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %23, i32 -24
  %36 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %45 = getelementptr i8, ptr %23, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.29, ptr noundef %44, i32 noundef %30, ptr noundef %45) #10
  br label %57

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %56 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.30, ptr noundef %55, i32 noundef %56) #10
  br label %60

57:                                               ; preds = %39, %34
  %58 = icmp eq ptr %35, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call fastcc void @nv50_disp_super_ied_off(ptr noundef %1, ptr noundef nonnull %35, i32 noundef 1)
  br label %60

60:                                               ; preds = %59, %57, %50, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_1(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %16, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %14, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %6, i32 8
  tail call void %9(ptr noundef %7, ptr noundef %10) #9
  %11 = load ptr, ptr %7, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 32
  tail call void %12(ptr noundef %7, ptr noundef %13) #9
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %5

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %33, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %31, %20 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 -24
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_ior_func, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %21, i32 12
  tail call void %25(ptr noundef %22, ptr noundef %26) #9
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr inbounds %struct.nvkm_ior_func, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %21, i32 24
  tail call void %29(ptr noundef %22, ptr noundef %30) #9
  %31 = load ptr, ptr %21, align 4
  %32 = icmp eq ptr %31, %17
  br i1 %32, label %33, label %20

33:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_super(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -204
  %3 = getelementptr i8, ptr %0, i32 -200
  %4 = getelementptr i8, ptr %0, i32 -188
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 6357040
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %10 = getelementptr i8, ptr %0, i32 -160
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %0, i32 -176
  %18 = getelementptr i8, ptr %0, i32 16
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef %17, i32 noundef %19, i32 noundef %9) #10
  br label %20

20:                                               ; preds = %13, %1
  %21 = getelementptr i8, ptr %0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %78, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 108
  %27 = load ptr, ptr %26, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %27, i32 noundef 4) #9
  %28 = getelementptr i8, ptr %0, i32 -108
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %42, label %31

31:                                               ; preds = %31, %25
  %32 = phi ptr [ %40, %31 ], [ %29, %25 ]
  %33 = getelementptr i8, ptr %32, i32 -12
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %32, i32 8
  tail call void %35(ptr noundef %33, ptr noundef %36) #9
  %37 = load ptr, ptr %33, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %32, i32 32
  tail call void %38(ptr noundef %33, ptr noundef %39) #9
  %40 = load ptr, ptr %32, align 4
  %41 = icmp eq ptr %40, %28
  br i1 %41, label %42, label %31

42:                                               ; preds = %31, %25
  %43 = getelementptr i8, ptr %0, i32 -100
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %59, label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %57, %46 ], [ %44, %42 ]
  %48 = getelementptr i8, ptr %47, i32 -24
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_ior_func, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %47, i32 12
  tail call void %51(ptr noundef %48, ptr noundef %52) #9
  %53 = load ptr, ptr %48, align 4
  %54 = getelementptr inbounds %struct.nvkm_ior_func, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %47, i32 24
  tail call void %55(ptr noundef %48, ptr noundef %56) #9
  %57 = load ptr, ptr %47, align 4
  %58 = icmp eq ptr %57, %43
  br i1 %58, label %59, label %46

59:                                               ; preds = %46, %42
  %60 = load ptr, ptr %28, align 4
  %61 = icmp eq ptr %60, %28
  br i1 %61, label %168, label %62

62:                                               ; preds = %75, %59
  %63 = phi ptr [ %76, %75 ], [ %60, %59 ]
  %64 = getelementptr i8, ptr %63, i32 -12
  %65 = getelementptr i8, ptr %63, i32 -4
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 32, %66
  %68 = and i32 %67, %9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = shl i32 128, %66
  %72 = and i32 %71, %9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @nv50_disp_super_1_0(ptr undef, ptr noundef %64)
  br label %75

75:                                               ; preds = %74, %70, %62
  %76 = load ptr, ptr %63, align 4
  %77 = icmp eq ptr %76, %28
  br i1 %77, label %168, label %62

78:                                               ; preds = %20
  %79 = and i32 %22, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %149, label %81

81:                                               ; preds = %78
  %82 = getelementptr i8, ptr %0, i32 -108
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %97, label %85

85:                                               ; preds = %94, %81
  %86 = phi ptr [ %95, %94 ], [ %83, %81 ]
  %87 = getelementptr i8, ptr %86, i32 -4
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 128, %88
  %90 = and i32 %89, %9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = getelementptr i8, ptr %86, i32 -12
  tail call void @nv50_disp_super_2_0(ptr undef, ptr noundef %93)
  br label %94

94:                                               ; preds = %92, %85
  %95 = load ptr, ptr %86, align 4
  %96 = icmp eq ptr %95, %82
  br i1 %96, label %97, label %85

97:                                               ; preds = %94, %81
  tail call void @nvkm_outp_route(ptr noundef %3) #9
  %98 = load ptr, ptr %82, align 4
  %99 = icmp eq ptr %98, %82
  br i1 %99, label %168, label %103

100:                                              ; preds = %134
  %101 = load ptr, ptr %82, align 4
  %102 = icmp eq ptr %101, %82
  br i1 %102, label %168, label %137

103:                                              ; preds = %134, %97
  %104 = phi ptr [ %135, %134 ], [ %98, %97 ]
  %105 = getelementptr i8, ptr %104, i32 -4
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 512, %106
  %108 = and i32 %107, %9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %103
  %111 = load ptr, ptr %4, align 4
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 22
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %104, i32 48
  %115 = load i32, ptr %114, align 4
  %116 = udiv i32 %115, 1000
  %117 = getelementptr i8, ptr %104, i32 -8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nvkm_disp, ptr %118, i32 0, i32 1, i32 1, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %120, 3
  br i1 %121, label %122, label %128

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.nvkm_disp, ptr %118, i32 0, i32 1, i32 1, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.nvkm_disp, ptr %118, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.4, ptr noundef %127, i32 noundef %106, i32 noundef %116) #10
  br label %128

128:                                              ; preds = %122, %110
  %129 = icmp ult i32 %115, 1000
  br i1 %129, label %134, label %130

130:                                              ; preds = %128
  %131 = load i32, ptr %105, align 4
  %132 = add i32 %131, 128
  %133 = tail call i32 @nvkm_devinit_pll_set(ptr noundef %113, i32 noundef %132, i32 noundef %116) #9
  br label %134

134:                                              ; preds = %130, %128, %103
  %135 = load ptr, ptr %104, align 4
  %136 = icmp eq ptr %135, %82
  br i1 %136, label %100, label %103

137:                                              ; preds = %146, %100
  %138 = phi ptr [ %147, %146 ], [ %101, %100 ]
  %139 = getelementptr i8, ptr %138, i32 -4
  %140 = load i32, ptr %139, align 4
  %141 = shl i32 128, %140
  %142 = and i32 %141, %9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %137
  %145 = getelementptr i8, ptr %138, i32 -12
  tail call void @nv50_disp_super_2_2(ptr noundef %2, ptr noundef %145)
  br label %146

146:                                              ; preds = %144, %137
  %147 = load ptr, ptr %138, align 4
  %148 = icmp eq ptr %147, %82
  br i1 %148, label %168, label %137

149:                                              ; preds = %78
  %150 = and i32 %22, 64
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %149
  %153 = getelementptr i8, ptr %0, i32 -108
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %168, label %156

156:                                              ; preds = %165, %152
  %157 = phi ptr [ %166, %165 ], [ %154, %152 ]
  %158 = getelementptr i8, ptr %157, i32 -4
  %159 = load i32, ptr %158, align 4
  %160 = shl i32 128, %159
  %161 = and i32 %160, %9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %156
  %164 = getelementptr i8, ptr %157, i32 -12
  tail call void @nv50_disp_super_3_0(ptr undef, ptr noundef %164)
  br label %165

165:                                              ; preds = %163, %156
  %166 = load ptr, ptr %157, align 4
  %167 = icmp eq ptr %166, %153
  br i1 %167, label %168, label %156

168:                                              ; preds = %165, %152, %149, %146, %100, %97, %75, %59
  %169 = load ptr, ptr %6, align 4
  %170 = getelementptr i8, ptr %169, i32 6357040
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 -2147483648) #9, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_mthd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_route(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 6357028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %12 = and i32 %8, 2031616
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %16 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  br label %21

17:                                               ; preds = %69, %1
  %18 = phi i32 [ %8, %1 ], [ %76, %69 ]
  %19 = and i32 %18, 31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %88, label %79

21:                                               ; preds = %69, %14
  %22 = phi i32 [ %12, %14 ], [ %77, %69 ]
  %23 = phi i32 [ %8, %14 ], [ %76, %69 ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %22, i1 true) #9, !range !19
  %25 = add nsw i32 %24, -16
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = shl nsw i32 %25, 3
  %30 = add nsw i32 %29, 6357124
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %33 = load ptr, ptr %27, align 4
  %34 = add nsw i32 %29, 6357120
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = lshr i32 %36, 12
  %40 = and i32 %39, 7
  %41 = and i32 %36, 4092
  %42 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_type, i32 noundef %40) #9
  %43 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_code, i32 noundef %38) #9
  %44 = load i32, ptr %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %21
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %42, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvkm_enum, ptr %42, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi ptr [ %53, %51 ], [ @.str.33, %46 ]
  %56 = icmp eq ptr %43, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nvkm_enum, ptr %43, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi ptr [ %59, %57 ], [ @.str.33, %54 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.32, ptr noundef %16, i32 noundef %40, ptr noundef %55, i32 noundef %38, ptr noundef %61, i32 noundef %25, i32 noundef %41, i32 noundef %32) #10
  br label %62

62:                                               ; preds = %60, %21
  %63 = icmp ult i32 %25, 81
  %64 = icmp eq i32 %41, 128
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr %struct.nv50_disp, ptr %0, i32 0, i32 13, i32 %25
  %68 = load ptr, ptr %67, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %68, i32 noundef 1) #9
  br label %69

69:                                               ; preds = %66, %62
  %70 = shl i32 65536, %25
  %71 = load ptr, ptr %27, align 4
  %72 = getelementptr i8, ptr %71, i32 6357024
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #9, !srcloc !18
  %73 = load ptr, ptr %27, align 4
  %74 = getelementptr i8, ptr %73, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 -1879048192) #9, !srcloc !18
  %75 = xor i32 %70, -1
  %76 = and i32 %23, %75
  %77 = and i32 %76, 2031616
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %17, label %21

79:                                               ; preds = %79, %17
  %80 = phi i32 [ %86, %79 ], [ %19, %17 ]
  %81 = phi i32 [ %85, %79 ], [ %18, %17 ]
  %82 = tail call i32 @llvm.cttz.i32(i32 %80, i1 true) #9, !range !19
  tail call void @nv50_disp_chan_uevent_send(ptr noundef %0, i32 noundef %82) #9
  %83 = shl nuw i32 1, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %81, %84
  %86 = and i32 %85, 31
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %79

88:                                               ; preds = %79, %17
  %89 = and i32 %11, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  tail call void @nvkm_disp_vblank(ptr noundef %2, i32 noundef 0) #9
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr i8, ptr %92, i32 6357028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 4) #9, !srcloc !18
  br label %94

94:                                               ; preds = %91, %88
  %95 = and i32 %11, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  tail call void @nvkm_disp_vblank(ptr noundef %2, i32 noundef 1) #9
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr i8, ptr %98, i32 6357028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 8) #9, !srcloc !18
  br label %100

100:                                              ; preds = %97, %94
  %101 = and i32 %11, 112
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 4
  store i32 %101, ptr %104, align 4
  %105 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 3
  %108 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %106, ptr noundef %107) #9
  %109 = load i32, ptr %104, align 4
  %110 = load ptr, ptr %5, align 4
  %111 = getelementptr i8, ptr %110, i32 6357028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #9, !srcloc !18
  br label %112

112:                                              ; preds = %103, %100
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_uevent_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_disp_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 6357028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !18
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 6357024
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_init(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6373380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 6357380
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !18
  %11 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %18, %1
  %15 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 8, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %71, label %67

18:                                               ; preds = %18, %1
  %19 = phi ptr [ %65, %18 ], [ %12, %1 ]
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %19, i32 -4
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 11
  %24 = add i32 %23, 6381824
  %25 = getelementptr i8, ptr %20, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %27 = load ptr, ptr %5, align 4
  %28 = load i32, ptr %21, align 4
  %29 = shl i32 %28, 4
  %30 = add i32 %29, 6357392
  %31 = getelementptr i8, ptr %27, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %26) #9, !srcloc !18
  %32 = load ptr, ptr %5, align 4
  %33 = load i32, ptr %21, align 4
  %34 = shl i32 %33, 11
  %35 = add i32 %34, 6381828
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %38 = load ptr, ptr %5, align 4
  %39 = load i32, ptr %21, align 4
  %40 = shl i32 %39, 4
  %41 = add i32 %40, 6357396
  %42 = getelementptr i8, ptr %38, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #9, !srcloc !18
  %43 = load ptr, ptr %5, align 4
  %44 = load i32, ptr %21, align 4
  %45 = shl i32 %44, 11
  %46 = add i32 %45, 6381832
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %49 = load ptr, ptr %5, align 4
  %50 = load i32, ptr %21, align 4
  %51 = shl i32 %50, 4
  %52 = add i32 %51, 6357400
  %53 = getelementptr i8, ptr %49, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #9, !srcloc !18
  %54 = load ptr, ptr %5, align 4
  %55 = load i32, ptr %21, align 4
  %56 = shl i32 %55, 11
  %57 = add i32 %56, 6381836
  %58 = getelementptr i8, ptr %54, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %60 = load ptr, ptr %5, align 4
  %61 = load i32, ptr %21, align 4
  %62 = shl i32 %61, 4
  %63 = add i32 %62, 6357404
  %64 = getelementptr i8, ptr %60, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %59) #9, !srcloc !18
  %65 = load ptr, ptr %19, align 4
  %66 = icmp eq ptr %65, %11
  br i1 %66, label %14, label %18

67:                                               ; preds = %71, %14
  %68 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 9, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %89, label %85

71:                                               ; preds = %71, %14
  %72 = phi i32 [ %82, %71 ], [ 0, %14 ]
  %73 = load ptr, ptr %5, align 4
  %74 = shl i32 %72, 11
  %75 = add i32 %74, 6397952
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %78 = load ptr, ptr %5, align 4
  %79 = shl i32 %72, 2
  %80 = add i32 %79, 6357456
  %81 = getelementptr i8, ptr %78, i32 %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %77) #9, !srcloc !18
  %82 = add nuw nsw i32 %72, 1
  %83 = load i32, ptr %15, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %71, label %67

85:                                               ; preds = %89, %67
  %86 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 10, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %103, label %117

89:                                               ; preds = %89, %67
  %90 = phi i32 [ %100, %89 ], [ 0, %67 ]
  %91 = load ptr, ptr %5, align 4
  %92 = shl i32 %90, 11
  %93 = add i32 %92, 6406144
  %94 = getelementptr i8, ptr %91, i32 %93
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %96 = load ptr, ptr %5, align 4
  %97 = shl i32 %90, 2
  %98 = add i32 %97, 6357472
  %99 = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %95) #9, !srcloc !18
  %100 = add nuw nsw i32 %90, 1
  %101 = load i32, ptr %68, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %89, label %85

103:                                              ; preds = %103, %85
  %104 = phi i32 [ %114, %103 ], [ 0, %85 ]
  %105 = load ptr, ptr %5, align 4
  %106 = shl i32 %104, 11
  %107 = add i32 %106, 6414336
  %108 = getelementptr i8, ptr %105, i32 %107
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %110 = load ptr, ptr %5, align 4
  %111 = shl i32 %104, 2
  %112 = add i32 %111, 6357488
  %113 = getelementptr i8, ptr %110, i32 %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %109) #9, !srcloc !18
  %114 = add nuw nsw i32 %104, 1
  %115 = load i32, ptr %86, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %103, label %117

117:                                              ; preds = %103, %85
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr i8, ptr %118, i32 6357028
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %121 = and i32 %120, 256
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %161, label %123

123:                                              ; preds = %117
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr i8, ptr %124, i32 6357028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 256) #9, !srcloc !18
  %126 = load ptr, ptr %5, align 4
  %127 = getelementptr i8, ptr %126, i32 6395112
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %129 = and i32 %128, -2
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr i8, ptr %130, i32 6395112
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #9, !srcloc !18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #9
  br label %132

132:                                              ; preds = %138, %123
  %133 = load ptr, ptr %5, align 4
  %134 = getelementptr i8, ptr %133, i32 6395112
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #9, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %160, label %138

138:                                              ; preds = %132
  %139 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #9
  %140 = icmp sgt i64 %139, -1
  br i1 %140, label %132, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr inbounds %struct.nvkm_timer, ptr %142, i32 0, i32 1, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.nvkm_device, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8
  %147 = call ptr @dev_driver_string(ptr noundef %146) #9
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr inbounds %struct.nvkm_timer, ptr %148, i32 0, i32 1, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_device, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %141
  %157 = load ptr, ptr %152, align 4
  br label %158

158:                                              ; preds = %156, %141
  %159 = phi ptr [ %157, %156 ], [ %154, %141 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 744, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %147, ptr noundef %159) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  br label %175

160:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  br label %161

161:                                              ; preds = %160, %117
  %162 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 11
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %163, i32 0, i32 4
  %165 = load i64, ptr %164, align 8
  %166 = lshr i64 %165, 8
  %167 = trunc i64 %166 to i32
  %168 = or i32 %167, 9
  %169 = load ptr, ptr %5, align 4
  %170 = getelementptr i8, ptr %169, i32 6357008
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #9, !srcloc !18
  %171 = load ptr, ptr %5, align 4
  %172 = getelementptr i8, ptr %171, i32 6357036
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 880) #9, !srcloc !18
  %173 = load ptr, ptr %5, align 4
  %174 = getelementptr i8, ptr %173, i32 6357032
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 0) #9, !srcloc !18
  br label %175

175:                                              ; preds = %161, %158
  %176 = phi i32 [ -16, %158 ], [ 0, %161 ]
  ret i32 %176
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_disp_new_(ptr noundef nonnull @nv50_disp, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_disp_dtor_(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 304
  tail call void @nvkm_ramht_del(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 300
  tail call void @nvkm_gpuobj_del(ptr noundef %3) #9
  %4 = getelementptr i8, ptr %0, i32 220
  tail call void @nvkm_event_fini(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 196
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @destroy_workqueue(ptr noundef nonnull %6) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr i8, ptr %0, i32 -4
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_oneinit_(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 252
  %11 = tail call i32 %7(ptr noundef %0, ptr noundef %10) #9
  %12 = getelementptr i8, ptr %0, i32 256
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 4
  %21 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef %20, i32 noundef %11, i32 noundef %21) #10
  br label %22

22:                                               ; preds = %16, %9, %1
  %23 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 260
  %26 = tail call i32 %24(ptr noundef %0, ptr noundef %25) #9
  %27 = getelementptr i8, ptr %0, i32 264
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 3
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 4
  %36 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.18, ptr noundef %35, i32 noundef %26, i32 noundef %36) #10
  %37 = load i32, ptr %27, align 4
  br label %38

38:                                               ; preds = %31, %22
  %39 = phi i32 [ %37, %31 ], [ %26, %22 ]
  %40 = tail call i32 @_find_next_bit_le(ptr noundef %25, i32 noundef %39, i32 noundef 0) #9
  %41 = load i32, ptr %27, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 8, i32 1
  br label %45

45:                                               ; preds = %50, %43
  %46 = phi i32 [ %40, %43 ], [ %53, %50 ]
  %47 = load ptr, ptr %44, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef %46) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %172

50:                                               ; preds = %45
  %51 = load i32, ptr %27, align 4
  %52 = add nsw i32 %46, 1
  %53 = tail call i32 @_find_next_bit_le(ptr noundef %25, i32 noundef %51, i32 noundef %52) #9
  %54 = load i32, ptr %27, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %45, label %56

56:                                               ; preds = %50, %38
  %57 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %91, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %0, i32 268
  %62 = tail call i32 %58(ptr noundef %0, ptr noundef %61) #9
  %63 = getelementptr i8, ptr %0, i32 272
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %28, align 4
  %65 = icmp ugt i32 %64, 3
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 4
  %71 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.19, ptr noundef %70, i32 noundef %62, i32 noundef %71) #10
  %72 = load i32, ptr %63, align 4
  br label %73

73:                                               ; preds = %66, %60
  %74 = phi i32 [ %72, %66 ], [ %62, %60 ]
  %75 = tail call i32 @_find_next_bit_le(ptr noundef %61, i32 noundef %74, i32 noundef 0) #9
  %76 = load i32, ptr %63, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 9, i32 1
  br label %80

80:                                               ; preds = %85, %78
  %81 = phi i32 [ %75, %78 ], [ %88, %85 ]
  %82 = load ptr, ptr %79, align 4
  %83 = tail call i32 %82(ptr noundef %0, i32 noundef %81) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %172

85:                                               ; preds = %80
  %86 = load i32, ptr %63, align 4
  %87 = add nsw i32 %81, 1
  %88 = tail call i32 @_find_next_bit_le(ptr noundef %61, i32 noundef %86, i32 noundef %87) #9
  %89 = load i32, ptr %63, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %80, label %91

91:                                               ; preds = %85, %73, %56
  %92 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %126, label %95

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %0, i32 288
  %97 = tail call i32 %93(ptr noundef %0, ptr noundef %96) #9
  %98 = getelementptr i8, ptr %0, i32 292
  store i32 %97, ptr %98, align 4
  %99 = load i32, ptr %28, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 4
  %106 = load i32, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.20, ptr noundef %105, i32 noundef %97, i32 noundef %106) #10
  %107 = load i32, ptr %98, align 4
  br label %108

108:                                              ; preds = %101, %95
  %109 = phi i32 [ %107, %101 ], [ %97, %95 ]
  %110 = tail call i32 @_find_next_bit_le(ptr noundef %96, i32 noundef %109, i32 noundef 0) #9
  %111 = load i32, ptr %98, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 11, i32 1
  br label %115

115:                                              ; preds = %120, %113
  %116 = phi i32 [ %110, %113 ], [ %123, %120 ]
  %117 = load ptr, ptr %114, align 4
  %118 = tail call i32 %117(ptr noundef %0, i32 noundef %116) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %172

120:                                              ; preds = %115
  %121 = load i32, ptr %98, align 4
  %122 = add nsw i32 %116, 1
  %123 = tail call i32 @_find_next_bit_le(ptr noundef %96, i32 noundef %121, i32 noundef %122) #9
  %124 = load i32, ptr %98, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %115, label %126

126:                                              ; preds = %120, %108, %91
  %127 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %0, i32 276
  %130 = tail call i32 %128(ptr noundef %0, ptr noundef %129) #9
  %131 = getelementptr i8, ptr %0, i32 280
  store i32 %130, ptr %131, align 4
  %132 = load i32, ptr %28, align 4
  %133 = icmp ugt i32 %132, 3
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load ptr, ptr %4, align 4
  %136 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 4
  %139 = load i32, ptr %129, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull @.str.21, ptr noundef %138, i32 noundef %130, i32 noundef %139) #10
  %140 = load i32, ptr %131, align 4
  br label %141

141:                                              ; preds = %134, %126
  %142 = phi i32 [ %140, %134 ], [ %130, %126 ]
  %143 = tail call i32 @_find_next_bit_le(ptr noundef %129, i32 noundef %142, i32 noundef 0) #9
  %144 = load i32, ptr %131, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 10, i32 1
  br label %148

148:                                              ; preds = %153, %146
  %149 = phi i32 [ %143, %146 ], [ %156, %153 ]
  %150 = load ptr, ptr %147, align 4
  %151 = tail call i32 %150(ptr noundef %0, i32 noundef %149) #9
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %148
  %154 = load i32, ptr %131, align 4
  %155 = add nsw i32 %149, 1
  %156 = tail call i32 @_find_next_bit_le(ptr noundef %129, i32 noundef %154, i32 noundef %155) #9
  %157 = load i32, ptr %131, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %148, label %159

159:                                              ; preds = %153, %141
  %160 = getelementptr i8, ptr %0, i32 300
  %161 = tail call i32 @nvkm_gpuobj_new(ptr noundef %5, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, ptr noundef null, ptr noundef %160) #9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 12
  %165 = load i16, ptr %164, align 4
  %166 = icmp eq i16 %165, 0
  %167 = select i1 %166, i16 4096, i16 %165
  %168 = zext i16 %167 to i32
  %169 = load ptr, ptr %160, align 4
  %170 = getelementptr i8, ptr %0, i32 304
  %171 = tail call i32 @nvkm_ramht_new(ptr noundef %5, i32 noundef %168, i32 noundef 0, ptr noundef %169, ptr noundef %170) #9
  br label %172

172:                                              ; preds = %163, %159, %148, %115, %80, %45
  %173 = phi i32 [ %171, %163 ], [ %161, %159 ], [ %151, %148 ], [ %118, %115 ], [ %83, %80 ], [ %48, %45 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_init_(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %2) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_fini_(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_intr_(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @nv50_disp_root_(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_disp_func, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_ocfg_match(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_oclk_match(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_outp_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dac_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dac_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_sor_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_sor_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pior_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pior_new(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i8 0, i8 9}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148141902, i64 2148142182, i64 2148142516, i64 2148142850}
!12 = !{i8 0, i8 2}
!13 = !{i64 656358, i64 656385, i64 656407, i64 656435}
!14 = !{i64 656766, i64 656793, i64 656826, i64 656847, i64 656874, i64 656900}
!15 = !{i64 3964175}
!16 = !{i64 2151503628}
!17 = !{i64 2151504850}
!18 = !{i64 3963757}
!19 = !{i32 0, i32 33}
