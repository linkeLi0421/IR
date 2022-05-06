; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_pll_vals = type { %union.anon.127, i32, i32 }
%union.anon.127 = type { %struct.anon.129 }
%struct.anon.129 = type { i16, i16 }
%struct.anon.128 = type { i8, i8, i8, i8 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.130, %struct.anon.130 }
%struct.anon.130 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv04_devinit = type { %struct.nvkm_devinit, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.io_mapping = type { i32, i32, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [29 x i8] c"%s: adaptor not initialised\0A\00", align 1
@nv04_devinit = internal constant %struct.nvkm_devinit_func { ptr @nv04_devinit_dtor, ptr @nv04_devinit_preinit, ptr null, ptr @nv04_devinit_post, ptr null, ptr @nv04_devinit_meminit, ptr @nv04_devinit_pll_set, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: failed to map fb\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setPLL_single(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_bios, ptr %7, i32 0, i32 7, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %15 = lshr i32 %14, 8
  %16 = and i32 %14, 255
  %17 = and i32 %14, -524288
  %18 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %20, %17
  %22 = load i16, ptr %2, align 4
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = icmp ult i8 %9, 23
  br i1 %25, label %41, label %26

26:                                               ; preds = %3
  switch i8 %9, label %27 [
    i8 32, label %41
    i8 26, label %41
  ]

27:                                               ; preds = %26
  %28 = add i32 %1, -6817024
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 30) #8
  switch i32 %29, label %31 [
    i32 8, label %32
    i32 2, label %33
    i32 1, label %41
    i32 0, label %30
  ]

30:                                               ; preds = %27
  br label %41

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32 [ 8, %27 ], [ 12, %32 ]
  %35 = add nsw i32 %10, -53
  %36 = icmp ult i32 %35, 2
  %37 = add nsw i32 %10, -64
  %38 = icmp ult i32 %37, -14
  %39 = or i1 %38, %36
  %40 = select i1 %39, i32 -4, i32 %34
  br label %41

41:                                               ; preds = %33, %31, %30, %27, %26, %26, %3
  %42 = phi i32 [ -4, %26 ], [ -4, %26 ], [ -4, %3 ], [ %40, %33 ], [ -4, %31 ], [ 0, %30 ], [ 4, %27 ]
  %43 = icmp eq i32 %14, %24
  br i1 %43, label %100, label %44

44:                                               ; preds = %41
  %45 = icmp sgt i32 %42, -1
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i8, ptr %47, i32 5508
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %50 = shl nuw nsw i32 15, %42
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = shl nuw nsw i32 1, %42
  %54 = or i32 %52, %53
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr i8, ptr %55, i32 5508
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !11
  br label %57

57:                                               ; preds = %46, %44
  %58 = phi i32 [ %49, %46 ], [ 0, %44 ]
  %59 = icmp eq i32 %16, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %57
  %61 = load i8, ptr %2, align 4
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %60
  %64 = trunc i32 %15 to i8
  %65 = trunc i32 %14 to i8
  %66 = udiv i8 %64, %65
  %67 = getelementptr inbounds %struct.anon.128, ptr %2, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = udiv i8 %68, %61
  %70 = icmp ult i8 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i32, ptr %18, align 4
  %73 = shl i32 %72, 16
  %74 = and i32 %14, 65535
  %75 = or i32 %73, %74
  %76 = load ptr, ptr %11, align 4
  %77 = getelementptr i8, ptr %76, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !11
  br label %85

78:                                               ; preds = %63, %60, %57
  %79 = and i32 %14, -65536
  %80 = load i16, ptr %2, align 4
  %81 = zext i16 %80 to i32
  %82 = or i32 %79, %81
  %83 = load ptr, ptr %11, align 4
  %84 = getelementptr i8, ptr %83, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #8, !srcloc !11
  br label %85

85:                                               ; preds = %78, %71
  %86 = icmp eq i8 %9, 26
  %87 = or i1 %25, %86
  %88 = icmp ne i8 %9, 17
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  tail call void @msleep(i32 noundef 64) #8
  br label %91

91:                                               ; preds = %90, %85
  %92 = load ptr, ptr %11, align 4
  %93 = getelementptr i8, ptr %92, i32 %1
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %95 = load ptr, ptr %11, align 4
  %96 = getelementptr i8, ptr %95, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %24) #8, !srcloc !11
  br i1 %45, label %97, label %100

97:                                               ; preds = %91
  %98 = load ptr, ptr %11, align 4
  %99 = getelementptr i8, ptr %98, i32 5508
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %58) #8, !srcloc !11
  br label %100

100:                                              ; preds = %97, %91, %41
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setPLL_double_highregs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_bios, ptr %7, i32 0, i32 7, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %1, 6817056
  %12 = select i1 %11, i32 92, i32 112
  %13 = add i32 %12, %1
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  switch i8 %9, label %18 [
    i8 53, label %22
    i8 48, label %22
  ]

18:                                               ; preds = %3
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  br label %22

22:                                               ; preds = %18, %3, %3
  %23 = phi i32 [ %21, %18 ], [ 0, %3 ], [ 0, %3 ]
  %24 = and i32 %17, -524288
  %25 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %27, %24
  %29 = load i16, ptr %2, align 4
  %30 = zext i16 %29 to i32
  %31 = or i32 %28, %30
  %32 = and i32 %23, 2147418112
  %33 = getelementptr inbounds %struct.anon.129, ptr %2, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %32, %35
  %37 = or i32 %36, -2147483648
  %38 = icmp eq i16 %34, 0
  %39 = lshr i16 %34, 8
  %40 = trunc i16 %34 to i8
  %41 = trunc i16 %39 to i8
  %42 = icmp eq i8 %41, %40
  %43 = select i1 %38, i1 true, i1 %42
  %44 = icmp ult i8 %9, 23
  br i1 %44, label %60, label %45

45:                                               ; preds = %22
  switch i8 %9, label %46 [
    i8 32, label %60
    i8 26, label %60
  ]

46:                                               ; preds = %45
  %47 = add i32 %1, -6817024
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 30) #8
  switch i32 %48, label %50 [
    i32 8, label %51
    i32 2, label %52
    i32 1, label %60
    i32 0, label %49
  ]

49:                                               ; preds = %46
  br label %60

50:                                               ; preds = %46
  br label %60

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i32 [ 8, %46 ], [ 12, %51 ]
  %54 = add nsw i32 %10, -53
  %55 = icmp ult i32 %54, 2
  %56 = add nsw i32 %10, -64
  %57 = icmp ult i32 %56, -14
  %58 = or i1 %57, %55
  %59 = select i1 %58, i32 -4, i32 %53
  br label %60

60:                                               ; preds = %52, %50, %49, %46, %45, %45, %22
  %61 = phi i32 [ -4, %45 ], [ -4, %45 ], [ -4, %22 ], [ %59, %52 ], [ -4, %50 ], [ 0, %49 ], [ 4, %46 ]
  switch i8 %9, label %75 [
    i8 53, label %62
    i8 48, label %62
  ]

62:                                               ; preds = %60, %60
  %63 = and i32 %31, -54001793
  %64 = zext i16 %39 to i32
  %65 = shl nuw nsw i32 %64, 21
  %66 = and i32 %65, 50331648
  %67 = shl nuw nsw i32 %64, 19
  %68 = and i32 %67, 3670016
  %69 = shl i8 %40, 4
  %70 = zext i8 %69 to i32
  %71 = or i32 %63, %66
  %72 = or i32 %71, %68
  %73 = or i32 %72, %70
  %74 = or i32 %73, 128
  br label %93

75:                                               ; preds = %60
  %76 = icmp ugt i8 %9, 64
  %77 = icmp ugt i32 %1, 6817031
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load ptr, ptr %14, align 4
  %81 = getelementptr i8, ptr %80, i32 6817152
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %83 = icmp eq i32 %1, 6817032
  %84 = select i1 %83, i32 256, i32 268435456
  %85 = or i32 %82, %84
  %86 = select i1 %83, i32 -257, i32 -268435457
  %87 = and i32 %82, %86
  %88 = select i1 %43, i32 %85, i32 %87
  %89 = icmp eq i32 %82, %88
  %90 = select i1 %89, i32 %17, i32 -1
  %91 = or i32 %36, -2147483361
  %92 = select i1 %43, i32 %91, i32 %37
  br label %93

93:                                               ; preds = %79, %75, %62
  %94 = phi i32 [ %31, %75 ], [ %31, %79 ], [ %74, %62 ]
  %95 = phi i32 [ %17, %75 ], [ %90, %79 ], [ %17, %62 ]
  %96 = phi i32 [ %37, %75 ], [ %92, %79 ], [ 0, %62 ]
  %97 = phi i32 [ 0, %75 ], [ %82, %79 ], [ 0, %62 ]
  %98 = phi i32 [ 0, %75 ], [ %88, %79 ], [ 0, %62 ]
  %99 = icmp ugt i8 %9, 112
  %100 = and i32 %94, 1073741823
  %101 = select i1 %43, i32 1073741824, i32 -1073741824
  %102 = or i32 %100, %101
  %103 = select i1 %99, i32 %102, i32 %94
  %104 = icmp eq i32 %95, %103
  %105 = icmp eq i32 %23, %96
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %165, label %107

107:                                              ; preds = %93
  %108 = icmp sgt i32 %61, -1
  br i1 %108, label %109, label %120

109:                                              ; preds = %107
  %110 = load ptr, ptr %14, align 4
  %111 = getelementptr i8, ptr %110, i32 5508
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %113 = shl nuw nsw i32 15, %61
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = shl nuw nsw i32 1, %61
  %117 = or i32 %115, %116
  %118 = load ptr, ptr %14, align 4
  %119 = getelementptr i8, ptr %118, i32 5508
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #8, !srcloc !11
  br label %120

120:                                              ; preds = %109, %107
  %121 = phi i32 [ %112, %109 ], [ 0, %107 ]
  %122 = icmp ugt i8 %9, 63
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  %124 = add i32 %1, -6817024
  %125 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 30)
  switch i32 %125, label %133 [
    i32 1, label %126
    i32 0, label %127
    i32 8, label %129
    i32 2, label %131
  ]

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i32 [ 20, %123 ], [ 22, %126 ]
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i32 [ 18, %123 ], [ %128, %127 ]
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi i32 [ 16, %123 ], [ %130, %129 ]
  br label %133

133:                                              ; preds = %131, %123
  %134 = phi i32 [ 14, %123 ], [ %132, %131 ]
  %135 = load ptr, ptr %14, align 4
  %136 = getelementptr i8, ptr %135, i32 49216
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %138 = icmp eq i32 %134, 14
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = shl nuw nsw i32 3, %134
  %141 = xor i32 %140, -1
  %142 = and i32 %137, %141
  %143 = load ptr, ptr %14, align 4
  %144 = getelementptr i8, ptr %143, i32 49216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #8, !srcloc !11
  br label %145

145:                                              ; preds = %139, %133, %120
  %146 = phi i32 [ 0, %120 ], [ %137, %139 ], [ %137, %133 ]
  %147 = icmp eq i32 %97, %98
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %14, align 4
  %150 = getelementptr i8, ptr %149, i32 6817152
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %98) #8, !srcloc !11
  br label %151

151:                                              ; preds = %148, %145
  switch i8 %9, label %152 [
    i8 53, label %155
    i8 48, label %155
  ]

152:                                              ; preds = %151
  %153 = load ptr, ptr %14, align 4
  %154 = getelementptr i8, ptr %153, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %96) #8, !srcloc !11
  br label %155

155:                                              ; preds = %152, %151, %151
  %156 = load ptr, ptr %14, align 4
  %157 = getelementptr i8, ptr %156, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %103) #8, !srcloc !11
  br i1 %108, label %158, label %161

158:                                              ; preds = %155
  %159 = load ptr, ptr %14, align 4
  %160 = getelementptr i8, ptr %159, i32 5508
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %121) #8, !srcloc !11
  br label %161

161:                                              ; preds = %158, %155
  br i1 %122, label %162, label %165

162:                                              ; preds = %161
  %163 = load ptr, ptr %14, align 4
  %164 = getelementptr i8, ptr %163, i32 49216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %146) #8, !srcloc !11
  br label %165

165:                                              ; preds = %162, %161, %93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setPLL_double_lowregs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, -4
  %8 = icmp eq i32 %7, 16416
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %13 = getelementptr inbounds %struct.anon.129, ptr %2, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = shl nuw i32 %15, 16
  %17 = load i16, ptr %2, align 4
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = select i1 %8, i32 1065943039, i32 1073283071
  %21 = and i32 %12, %20
  %22 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %21, %24
  %26 = or i32 %25, -1073741824
  %27 = icmp eq i16 %14, 0
  %28 = trunc i16 %14 to i8
  %29 = lshr i16 %14, 8
  %30 = trunc i16 %29 to i8
  %31 = icmp eq i8 %30, %28
  %32 = select i1 %27, i1 true, i1 %31
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 %1
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %36 = icmp eq i32 %35, %19
  %37 = and i32 %12, -1073283072
  %38 = icmp eq i32 %37, %26
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %124, label %40

40:                                               ; preds = %3
  %41 = icmp eq i32 %7, 16384
  %42 = select i1 %41, i32 -820, i32 -49153
  %43 = icmp eq i32 %7, 16472
  %44 = select i1 %43, i32 -201326593, i32 %42
  br i1 %8, label %45, label %70

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !12
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %47 = load ptr, ptr %46, align 8
  %48 = call i32 @nvbios_pll_parse(ptr noundef %47, i32 noundef 16416, ptr noundef nonnull %4) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load i32, ptr %22, align 4
  %52 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 5
  %53 = load i8, ptr %52, align 2
  %54 = trunc i32 %51 to i8
  %55 = add i8 %53, %54
  %56 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = call i8 @llvm.umin.i8(i8 %55, i8 %57)
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 20
  %61 = or i32 %60, %26
  %62 = or i32 %61, 268435456
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr i8, ptr %63, i32 17920
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %66 = or i32 %65, -2147483648
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr i8, ptr %67, i32 17920
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  br label %70

69:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  br label %124

70:                                               ; preds = %50, %40
  %71 = phi i32 [ 4096, %50 ], [ 256, %40 ]
  %72 = phi i32 [ %62, %50 ], [ %26, %40 ]
  %73 = phi i32 [ %65, %50 ], [ 0, %40 ]
  %74 = select i1 %32, i32 %71, i32 0
  %75 = or i32 %72, %74
  %76 = or i32 %12, 268435456
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr i8, ptr %77, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #8, !srcloc !11
  %79 = and i32 %75, -1073741825
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr i8, ptr %80, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !11
  br i1 %8, label %82, label %89

82:                                               ; preds = %70
  %83 = or i32 %75, 8388608
  %84 = and i32 %83, 1073741823
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr i8, ptr %85, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #8, !srcloc !11
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr i8, ptr %87, i32 16440
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %84) #8, !srcloc !11
  br label %89

89:                                               ; preds = %82, %70
  %90 = phi i32 [ %83, %82 ], [ %75, %70 ]
  %91 = load ptr, ptr %9, align 4
  %92 = getelementptr i8, ptr %91, i32 49216
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %94 = and i32 %93, %44
  %95 = load ptr, ptr %9, align 4
  %96 = getelementptr i8, ptr %95, i32 49216
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #8, !srcloc !11
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr i8, ptr %97, i32 %1
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %19) #8, !srcloc !11
  %99 = icmp eq i32 %1, 16420
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr i8, ptr %101, i32 16444
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %19) #8, !srcloc !11
  br label %103

103:                                              ; preds = %100, %89
  %104 = load ptr, ptr %9, align 4
  %105 = getelementptr i8, ptr %104, i32 %7
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %90) #8, !srcloc !11
  br i1 %8, label %106, label %114

106:                                              ; preds = %103
  %107 = and i32 %90, -8388609
  %108 = load ptr, ptr %9, align 4
  %109 = getelementptr i8, ptr %108, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #8, !srcloc !11
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr i8, ptr %110, i32 16440
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %107) #8, !srcloc !11
  %112 = load ptr, ptr %9, align 4
  %113 = getelementptr i8, ptr %112, i32 17920
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %73) #8, !srcloc !11
  br label %114

114:                                              ; preds = %106, %103
  %115 = phi i32 [ %107, %106 ], [ %90, %103 ]
  %116 = load ptr, ptr %9, align 4
  %117 = getelementptr i8, ptr %116, i32 49216
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %93) #8, !srcloc !11
  br i1 %8, label %118, label %124

118:                                              ; preds = %114
  %119 = and i32 %115, -268435457
  %120 = load ptr, ptr %9, align 4
  %121 = getelementptr i8, ptr %120, i32 16416
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #8, !srcloc !11
  %122 = load ptr, ptr %9, align 4
  %123 = getelementptr i8, ptr %122, i32 16440
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %119) #8, !srcloc !11
  br label %124

124:                                              ; preds = %118, %114, %69, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_pll_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.nvkm_pll_vals, align 4
  %5 = alloca %struct.nvbios_pll, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !12
  %15 = getelementptr inbounds %struct.nvkm_bios, ptr %14, i32 0, i32 7, i32 1
  %16 = load i8, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !12
  %17 = icmp ugt i32 %1, 16476
  %18 = add i32 %1, -4
  %19 = select i1 %17, i32 %1, i32 %18
  %20 = call i32 @nvbios_pll_parse(ptr noundef %14, i32 noundef %19, ptr noundef nonnull %5) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1
  %24 = call i32 @nv04_pll_calc(ptr noundef %23, ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nvbios_pll, ptr %5, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %4, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %6, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.anon.128, ptr %4, i32 0, i32 1
  store i8 %31, ptr %32, align 1
  %33 = load i32, ptr %7, align 4
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %4, align 4
  %35 = load i32, ptr %8, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.anon.128, ptr %4, i32 0, i32 3
  store i8 %36, ptr %37, align 1
  %38 = load i32, ptr %9, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.anon.128, ptr %4, i32 0, i32 2
  store i8 %39, ptr %40, align 2
  %41 = load i32, ptr %10, align 4
  %42 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %4, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = freeze i8 %16
  %44 = icmp ugt i8 %43, 63
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  switch i8 %43, label %49 [
    i8 54, label %46
    i8 53, label %46
    i8 49, label %46
    i8 48, label %46
  ]

46:                                               ; preds = %45, %45, %45, %45, %26
  br i1 %17, label %47, label %48

47:                                               ; preds = %46
  call void @setPLL_double_highregs(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  br label %50

48:                                               ; preds = %46
  call void @setPLL_double_lowregs(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  br label %50

49:                                               ; preds = %45
  call void @setPLL_single(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  br label %50

50:                                               ; preds = %49, %48, %47, %22, %3
  %51 = phi i32 [ %20, %3 ], [ -22, %22 ], [ 0, %47 ], [ 0, %48 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_post(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1
  %4 = tail call i32 @nvbios_post(ptr noundef %3, i1 noundef zeroext %1) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_post(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_devinit_preinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %8 = or i32 %7, 1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !11
  %11 = getelementptr inbounds %struct.nv04_devinit, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = tail call zeroext i8 @nvkm_rdvgaowner(ptr noundef %3) #8
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %11, align 4
  br label %17

17:                                               ; preds = %14, %1
  tail call void @nvkm_wrvgaowner(ptr noundef %3, i8 noundef zeroext 0) #8
  %18 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 2
  %19 = load i8, ptr %18, align 4, !range !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 6) #8
  %23 = zext i8 %22 to i32
  %24 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 7) #8
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %27, %23
  %29 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 7) #8
  %30 = and i8 %29, 32
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 4
  %33 = or i32 %28, %32
  %34 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 37) #8
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 10
  %38 = or i32 %33, %37
  %39 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 65) #8
  %40 = and i8 %39, 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 11
  %43 = or i32 %38, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 3
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef %53) #9
  br label %54

54:                                               ; preds = %49, %45
  store i8 1, ptr %18, align 4
  br label %55

55:                                               ; preds = %54, %21, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgaowner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgaowner(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv04_devinit_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv04_devinit, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  tail call void @nvkm_wrvgaowner(ptr noundef %3, i8 noundef zeroext %6) #8
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7) #8
  %10 = getelementptr inbounds %struct.nv04_devinit, ptr %7, i32 0, i32 1
  store i32 -1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_devinit_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef nonnull @nv04_devinit, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #8
  %9 = getelementptr inbounds %struct.nv04_devinit, ptr %6, i32 0, i32 1
  store i32 -1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_devinit_meminit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_device_func, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %3, i32 noundef 1) #8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_device_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %3, i32 noundef 1) #8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 16) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = tail call ptr @ioremap_wc(i32 noundef %7, i32 noundef %11) #8
  %17 = getelementptr inbounds %struct.io_mapping, ptr %13, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %13) #8
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %220, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef %28) #9
  br label %220

29:                                               ; preds = %15
  store i32 %7, ptr %13, align 8
  %30 = getelementptr inbounds %struct.io_mapping, ptr %13, i32 0, i32 1
  store i32 %11, ptr %30, align 4
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = and i32 %31, -573
  %33 = or i32 %32, 516
  %34 = getelementptr inbounds %struct.io_mapping, ptr %13, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  %35 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1) #8
  %36 = or i8 %35, 32
  tail call void @nvkm_wrvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %36) #8
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 1048704
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %41 = or i32 %40, 16
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 1048704
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #8, !srcloc !11
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr i8, ptr %44, i32 1048576
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %47 = load ptr, ptr %37, align 4
  %48 = getelementptr i8, ptr %47, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 15) #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %49 = tail call ptr @llvm.thread.pointer() #8
  %50 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 149
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %53 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %54 = load i32, ptr %50, align 8
  %55 = add i32 %54, -1
  store i32 %55, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %56 = load i32, ptr %50, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %58 = load ptr, ptr %17, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %60 = load i32, ptr %50, align 8
  %61 = add i32 %60, -1
  store i32 %61, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %62 = load i32, ptr %50, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %64 = load ptr, ptr %17, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %66 = load i32, ptr %50, align 8
  %67 = add i32 %66, -1
  store i32 %67, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %68 = load i32, ptr %50, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %70 = load ptr, ptr %17, align 4
  %71 = getelementptr i8, ptr %70, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %72 = load i32, ptr %50, align 8
  %73 = add i32 %72, -1
  store i32 %73, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %74 = load i32, ptr %50, align 8
  %75 = add i32 %74, 1
  store i32 %75, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %76 = load ptr, ptr %17, align 4
  %77 = getelementptr i8, ptr %76, i32 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 -559038736) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %78 = load i32, ptr %50, align 8
  %79 = add i32 %78, -1
  store i32 %79, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %80 = load i32, ptr %50, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %82 = load ptr, ptr %17, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %84 = load i32, ptr %50, align 8
  %85 = add i32 %84, -1
  store i32 %85, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %86 = icmp eq i32 %83, -559038736
  br i1 %86, label %87, label %141

87:                                               ; preds = %29
  %88 = load ptr, ptr %37, align 4
  %89 = getelementptr i8, ptr %88, i32 1048576
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %91 = and i32 %90, -57
  %92 = or i32 %91, 24
  %93 = load ptr, ptr %37, align 4
  %94 = getelementptr i8, ptr %93, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #8, !srcloc !11
  %95 = load ptr, ptr %37, align 4
  %96 = getelementptr i8, ptr %95, i32 1048704
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %98 = and i32 %97, -17
  %99 = load ptr, ptr %37, align 4
  %100 = getelementptr i8, ptr %99, i32 1048704
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %101 = load i32, ptr %50, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %103 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %104 = load i32, ptr %50, align 8
  %105 = add i32 %104, -1
  store i32 %105, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %106 = load i32, ptr %50, align 8
  %107 = add i32 %106, 1
  store i32 %107, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %108 = load ptr, ptr %17, align 4
  %109 = getelementptr i8, ptr %108, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %110 = load i32, ptr %50, align 8
  %111 = add i32 %110, -1
  store i32 %111, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %112 = load i32, ptr %50, align 8
  %113 = add i32 %112, 1
  store i32 %113, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %114 = load ptr, ptr %17, align 4
  %115 = getelementptr i8, ptr %114, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %116 = load i32, ptr %50, align 8
  %117 = add i32 %116, -1
  store i32 %117, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %118 = load i32, ptr %50, align 8
  %119 = add i32 %118, 1
  store i32 %119, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %120 = load ptr, ptr %17, align 4
  %121 = getelementptr i8, ptr %120, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 -559038737) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %122 = load i32, ptr %50, align 8
  %123 = add i32 %122, -1
  store i32 %123, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %124 = load i32, ptr %50, align 8
  %125 = add i32 %124, 1
  store i32 %125, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %126 = load ptr, ptr %17, align 4
  %127 = getelementptr i8, ptr %126, i32 12
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %129 = load i32, ptr %50, align 8
  %130 = add i32 %129, -1
  store i32 %130, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %131 = and i32 %128, 65535
  %132 = icmp eq i32 %131, 48879
  br i1 %132, label %210, label %133

133:                                              ; preds = %87
  %134 = load ptr, ptr %37, align 4
  %135 = getelementptr i8, ptr %134, i32 1048576
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %137 = and i32 %136, -8
  %138 = or i32 %137, 2
  %139 = load ptr, ptr %37, align 4
  %140 = getelementptr i8, ptr %139, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #8, !srcloc !11
  br label %210

141:                                              ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %142 = load i32, ptr %50, align 8
  %143 = add i32 %142, 1
  store i32 %143, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %144 = load ptr, ptr %17, align 4
  %145 = getelementptr i8, ptr %144, i32 12
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %147 = load i32, ptr %50, align 8
  %148 = add i32 %147, -1
  store i32 %148, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %149 = and i32 %146, -65536
  %150 = icmp eq i32 %149, -559087616
  br i1 %150, label %159, label %151

151:                                              ; preds = %141
  %152 = load ptr, ptr %37, align 4
  %153 = getelementptr i8, ptr %152, i32 1048576
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %155 = and i32 %154, -8
  %156 = or i32 %155, 1
  %157 = load ptr, ptr %37, align 4
  %158 = getelementptr i8, ptr %157, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #8, !srcloc !11
  br label %210

159:                                              ; preds = %141
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %160 = load i32, ptr %50, align 8
  %161 = add i32 %160, 1
  store i32 %161, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %162 = load ptr, ptr %17, align 4
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %164 = load i32, ptr %50, align 8
  %165 = add i32 %164, -1
  store i32 %165, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %166 = icmp eq i32 %163, -559038737
  tail call void asm sideeffect "", "~{memory}"() #8
  %167 = load i32, ptr %50, align 8
  %168 = add i32 %167, 1
  store i32 %168, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8
  %169 = load ptr, ptr %17, align 4
  %170 = getelementptr i8, ptr %169, i32 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 -559038737) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "", "~{memory}"() #8
  %171 = load i32, ptr %50, align 8
  %172 = add i32 %171, -1
  store i32 %172, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8
  tail call void asm sideeffect "", "~{memory}"() #8
  %173 = load i32, ptr %50, align 8
  %174 = add i32 %173, 1
  store i32 %174, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8
  %175 = load ptr, ptr %17, align 4
  %176 = getelementptr i8, ptr %175, i32 8388608
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  tail call void asm sideeffect "", "~{memory}"() #8
  %178 = load i32, ptr %50, align 8
  %179 = add i32 %178, -1
  store i32 %179, ptr %50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8
  %180 = icmp eq i32 %177, -559038737
  br i1 %166, label %201, label %181

181:                                              ; preds = %159
  %182 = load ptr, ptr %37, align 4
  %183 = getelementptr i8, ptr %182, i32 1048576
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  %185 = and i32 %184, -4
  br i1 %180, label %186, label %190

186:                                              ; preds = %181
  %187 = or i32 %185, 2
  %188 = load ptr, ptr %37, align 4
  %189 = getelementptr i8, ptr %188, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #8, !srcloc !11
  br label %194

190:                                              ; preds = %181
  %191 = or i32 %185, 1
  %192 = load ptr, ptr %37, align 4
  %193 = getelementptr i8, ptr %192, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #8, !srcloc !11
  br label %194

194:                                              ; preds = %190, %186
  %195 = load ptr, ptr %37, align 4
  %196 = getelementptr i8, ptr %195, i32 1048576
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %198 = and i32 %197, -41
  %199 = load ptr, ptr %37, align 4
  %200 = getelementptr i8, ptr %199, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #8, !srcloc !11
  br label %210

201:                                              ; preds = %159
  br i1 %180, label %210, label %202

202:                                              ; preds = %201
  %203 = load ptr, ptr %37, align 4
  %204 = getelementptr i8, ptr %203, i32 1048576
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %206 = and i32 %205, -4
  %207 = or i32 %206, 2
  %208 = load ptr, ptr %37, align 4
  %209 = getelementptr i8, ptr %208, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #8, !srcloc !11
  br label %210

210:                                              ; preds = %202, %201, %194, %151, %133, %87
  %211 = load ptr, ptr %37, align 4
  %212 = getelementptr i8, ptr %211, i32 1048704
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %214 = and i32 %213, -17
  %215 = load ptr, ptr %37, align 4
  %216 = getelementptr i8, ptr %215, i32 1048704
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #8, !srcloc !11
  %217 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1) #8
  %218 = and i8 %217, -33
  tail call void @nvkm_wrvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %218) #8
  %219 = load ptr, ptr %17, align 4
  tail call void @iounmap(ptr noundef %219) #8
  tail call void @kfree(ptr noundef nonnull %13) #8
  br label %220

220:                                              ; preds = %210, %24, %20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgas(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgas(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
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
!8 = !{i64 3952877}
!9 = !{i64 2151492330}
!10 = !{i64 2151493552}
!11 = !{i64 3952459}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2154452672}
!15 = !{i64 2152663335}
!16 = !{i64 2154756954}
!17 = !{i64 2152663542}
!18 = !{i64 2154452949}
