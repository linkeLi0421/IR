; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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

@nv10_devinit = internal constant %struct.nvkm_devinit_func { ptr @nv04_devinit_dtor, ptr @nv04_devinit_preinit, ptr null, ptr @nv04_devinit_post, ptr null, ptr @nv10_devinit_meminit, ptr @nv04_devinit_pll_set, ptr null }, align 4
@nv10_devinit_meminit.mem_width = internal unnamed_addr constant [3 x i32] [i32 16, i32 0, i32 32], align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: failed to map fb\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv10_devinit_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv04_devinit_new_(ptr noundef nonnull @nv10_devinit, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_devinit_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_devinit_preinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv10_devinit_meminit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 22
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 2, %11 ], [ 3, %7 ]
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_device_func, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %3, i32 noundef 1) #5
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_device_func, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %3, i32 noundef 1) #5
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 16) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %12
  %26 = tail call ptr @ioremap_wc(i32 noundef %17, i32 noundef %21) #5
  %27 = getelementptr inbounds %struct.io_mapping, ptr %23, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  tail call void @kfree(ptr noundef nonnull %23) #5
  br label %30

30:                                               ; preds = %29, %12
  %31 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %180, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef %38) #7
  br label %180

39:                                               ; preds = %25
  store i32 %17, ptr %23, align 8
  %40 = getelementptr inbounds %struct.io_mapping, ptr %23, i32 0, i32 1
  store i32 %21, ptr %40, align 4
  %41 = load i32, ptr @pgprot_kernel, align 4
  %42 = and i32 %41, -573
  %43 = or i32 %42, 516
  %44 = getelementptr inbounds %struct.io_mapping, ptr %23, i32 0, i32 2
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 1049104
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -2147483648) #5, !srcloc !9
  br label %48

48:                                               ; preds = %110, %39
  %49 = phi i32 [ 0, %39 ], [ %111, %110 ]
  %50 = load ptr, ptr %45, align 4
  %51 = getelementptr i8, ptr %50, i32 1049088
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %53 = and i32 %52, -49
  %54 = getelementptr [3 x i32], ptr @nv10_devinit_meminit.mem_width, i32 0, i32 %49
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, %53
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr i8, ptr %57, i32 1049088
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #5, !srcloc !9
  br label %62

59:                                               ; preds = %62
  %60 = add nuw nsw i32 %63, 1
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %110, label %62

62:                                               ; preds = %59, %48
  %63 = phi i32 [ 0, %48 ], [ %60, %59 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %64 = tail call ptr @llvm.thread.pointer() #5
  %65 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 149
  %66 = load i32, ptr %65, align 8
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %68 = load ptr, ptr %27, align 4
  %69 = getelementptr i8, ptr %68, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %70 = load i32, ptr %65, align 8
  %71 = add i32 %70, -1
  store i32 %71, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %72 = load i32, ptr %65, align 8
  %73 = add i32 %72, 1
  store i32 %73, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %74 = load ptr, ptr %27, align 4
  %75 = getelementptr i8, ptr %74, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %76 = load i32, ptr %65, align 8
  %77 = add i32 %76, -1
  store i32 %77, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %78 = load i32, ptr %65, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %80 = load ptr, ptr %27, align 4
  %81 = getelementptr i8, ptr %80, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %82 = load i32, ptr %65, align 8
  %83 = add i32 %82, -1
  store i32 %83, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %84 = load i32, ptr %65, align 8
  %85 = add i32 %84, 1
  store i32 %85, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %86 = load ptr, ptr %27, align 4
  %87 = getelementptr i8, ptr %86, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %88 = load i32, ptr %65, align 8
  %89 = add i32 %88, -1
  store i32 %89, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %90 = load i32, ptr %65, align 8
  %91 = add i32 %90, 1
  store i32 %91, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %92 = load ptr, ptr %27, align 4
  %93 = getelementptr i8, ptr %92, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 -559038737) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %94 = load i32, ptr %65, align 8
  %95 = add i32 %94, -1
  store i32 %95, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %96 = load i32, ptr %65, align 8
  %97 = add i32 %96, 1
  store i32 %97, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %98 = load ptr, ptr %27, align 4
  %99 = getelementptr i8, ptr %98, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %100 = load i32, ptr %65, align 8
  %101 = add i32 %100, -1
  store i32 %101, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %102 = load i32, ptr %65, align 8
  %103 = add i32 %102, 1
  store i32 %103, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %104 = load ptr, ptr %27, align 4
  %105 = getelementptr i8, ptr %104, i32 28
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %107 = load i32, ptr %65, align 8
  %108 = add i32 %107, -1
  store i32 %108, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %109 = icmp eq i32 %106, -559038737
  br i1 %109, label %113, label %59

110:                                              ; preds = %59
  %111 = add nuw nsw i32 %49, 1
  %112 = icmp eq i32 %111, %13
  br i1 %112, label %113, label %48

113:                                              ; preds = %110, %62
  %114 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 149
  br label %118

115:                                              ; preds = %118
  %116 = add nuw nsw i32 %119, 1
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %171, label %118

118:                                              ; preds = %115, %113
  %119 = phi i32 [ 0, %113 ], [ %116, %115 ]
  %120 = load ptr, ptr %45, align 4
  %121 = getelementptr i8, ptr %120, i32 1049100
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %123 = add i32 %122, -1048576
  %124 = and i32 %123, -4096
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %125 = load i32, ptr %114, align 8
  %126 = add i32 %125, 1
  store i32 %126, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %127 = load ptr, ptr %27, align 4
  %128 = getelementptr i8, ptr %127, i32 %124
  %129 = and i32 %122, 4095
  %130 = getelementptr i8, ptr %128, i32 %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 -1118077474) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %131 = load i32, ptr %114, align 8
  %132 = add i32 %131, -1
  store i32 %132, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %133 = load i32, ptr %114, align 8
  %134 = add i32 %133, 1
  store i32 %134, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %135 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %136 = load i32, ptr %114, align 8
  %137 = add i32 %136, -1
  store i32 %137, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %138 = load i32, ptr %114, align 8
  %139 = add i32 %138, 1
  store i32 %139, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %140 = load ptr, ptr %27, align 4
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %142 = load i32, ptr %114, align 8
  %143 = add i32 %142, -1
  store i32 %143, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %144 = load i32, ptr %114, align 8
  %145 = add i32 %144, 1
  store i32 %145, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %146 = load ptr, ptr %27, align 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %148 = load i32, ptr %114, align 8
  %149 = add i32 %148, -1
  store i32 %149, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %150 = load i32, ptr %114, align 8
  %151 = add i32 %150, 1
  store i32 %151, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %152 = load ptr, ptr %27, align 4
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %154 = load i32, ptr %114, align 8
  %155 = add i32 %154, -1
  store i32 %155, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %156 = load i32, ptr %114, align 8
  %157 = add i32 %156, 1
  store i32 %157, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %158 = load ptr, ptr %27, align 4
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %160 = load i32, ptr %114, align 8
  %161 = add i32 %160, -1
  store i32 %161, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %162 = load i32, ptr %114, align 8
  %163 = add i32 %162, 1
  store i32 %163, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %164 = load ptr, ptr %27, align 4
  %165 = getelementptr i8, ptr %164, i32 %124
  %166 = getelementptr i8, ptr %165, i32 %129
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %168 = load i32, ptr %114, align 8
  %169 = add i32 %168, -1
  store i32 %169, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %170 = icmp eq i32 %167, -1118077474
  br i1 %170, label %178, label %115

171:                                              ; preds = %115
  %172 = load ptr, ptr %45, align 4
  %173 = getelementptr i8, ptr %172, i32 1049088
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %175 = and i32 %174, -4097
  %176 = load ptr, ptr %45, align 4
  %177 = getelementptr i8, ptr %176, i32 1049088
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #5, !srcloc !9
  br label %178

178:                                              ; preds = %171, %118
  %179 = load ptr, ptr %27, align 4
  tail call void @iounmap(ptr noundef %179) #5
  tail call void @kfree(ptr noundef nonnull %23) #5
  br label %180

180:                                              ; preds = %178, %34, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2151483378}
!9 = !{i64 3942285}
!10 = !{i64 3942703}
!11 = !{i64 2151482156}
!12 = !{i64 2154442498}
!13 = !{i64 2152653161}
!14 = !{i64 2154746780}
!15 = !{i64 2152653368}
!16 = !{i64 2154442775}
